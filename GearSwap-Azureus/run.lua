function get_sets()
-- Set macro book/set --
    send_command('input /macro book 17;wait .1;input /macro set 1')
	
	-- Binds for modes
	--Toggle TP sets button, change if you want; currently ALT+F9 toggles forward, CTRL+F9 toggles backwards
  	send_command('bind ^f8 gs c C8') 
    send_command('bind !f9 gs c toggle TP set')
	send_command('bind ^f9 gs c reverse TP set')

	-- Modes --
	Capacity = 'OFF' -- Press ctrl + F11 if you want to be in Capacity mode  --	
	Lionheart = 'OFF' -- Toogle on/off the Lionheart and Epeolatry via ctrl + F8
	ShadowType = 'None'
	
  --TP Sets--
  sets.TP = {}
--					  1		   2              3 				   4 		    5		     6
  sets.TP.index = {'Movement', 'BadAss', 'Tank', 'TakingLessMagicDamage', 'Accuracy', 'TreasureHunter'}
  TP_ind = 1

  sets.TP.Movement = {
    legs="Carmine Cuisses +1"
  }
  
  --offensive melee set
  sets.TP.BadAss = {
    ammo="Yamarang",
    head={ name="Dampening Tam", augments={'DEX+10','Accuracy+15','Mag. Acc.+15','Quadruple Attack +3'}},
    body={ name="Herculean Vest", augments={'INT+5','"Dbl.Atk."+2','Quadruple Attack +3','Accuracy+6 Attack+6'}},
    hands="Turms Mittens +1",
    legs="Meg. Chausses +2",
    feet={ name="Herculean Boots", augments={'Rng.Atk.+24','Attack+30','"Store TP"+10','Accuracy+20 Attack+20'}},
    neck="Anu Torque",
    waist="Ioskeha Belt +1",
    left_ear="Brutal Earring",
    right_ear="Telos Earring",
    left_ring="Chirich Ring +1",
    right_ring="Chirich Ring +1",
    back="Moonbeam Cape"
  }

  --Tank Gear
  sets.TP.Tank = {
    ammo="Staunch Tathlum",
    head="Meghanada Visor +2",
    body="Ayanmo Corazza +2",
    hands="Turms Mittens +1",
    legs="Meg. Chausses +2",
    feet="Aya. Gambieras +2",
    neck={ name="Loricate Torque +1", augments={'Path: A'}},
    waist="Flume Belt",
    left_ear="Genmei Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Defending Ring",
    right_ring="Patricius Ring",
    back="Moonbeam Cape"
  }

  --MDT melee set
  sets.TP.TakingLessMagicDamage = {
    ammo="Staunch Tathlum",
    head="Meghanada Visor +2",
    body="Ayanmo Corazza +2",
    hands="Turms Mittens +1",
    legs="Meg. Chausses +2",
    feet="Aya. Gambieras +2",
    neck={ name="Loricate Torque +1", augments={'Path: A'}},
    waist="Flume Belt",
    left_ear="Genmei Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Defending Ring",
    right_ring="Patricius Ring",
    back="Moonbeam Cape"
  }
  
  sets.TP.Accuracy = {
    ammo="Amar Cluster",
    head="Turms cap +1",
    body="Ashera harness",
    hands="Turms Mittens +1",
    legs="Meg. Chausses +2",
    feet="Turms Leggings +1",
    neck="Subtlety Spec.",
    waist="Ioskeha Belt +1",
    left_ear="Heartseeker Earring",
    right_ear="Cessance Earring",
    left_ring="Chirich Ring +1",
    right_ring="Chirich Ring +1",
    back={ name="Ogma's cape", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Damage taken-5%'}}
  }
  
  sets.TP.TreasureHunter = {
    waist="Chaac Belt"
  }

  --Weaponskill Sets--
  sets.WS = {}

  --multi, carries FTP -- Need STR for the modifier
  sets.Resolution = {
    ammo="Yetshila +1",
    head={ name="Herculean Helm", augments={'AGI+6','CHR+1','Weapon skill damage +7%'}},
    body={ name="Herculean Vest", augments={'"Rapid Shot"+2','Pet: AGI+6','Weapon skill damage +6%','Accuracy+6 Attack+6'}},
    hands="Meg. Gloves +2",
    legs={ name="Herculean Trousers", augments={'Accuracy+15 Attack+15','Weapon skill damage +3%','DEX+10','Accuracy+5'}},
    feet={ name="Herculean Boots", augments={'Rng.Atk.+24','Attack+30','"Store TP"+10','Accuracy+20 Attack+20'}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Odr Earring",
    right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250'}},
    left_ring="Epaminondas's Ring",
    right_ring="Chirich Ring +1",
    back="Moonbeam Cape"
  }

  --single, doesn't carry FTP -- This will be dimidiation  Need DEX for the modifier
  sets.Single = {
    ammo="Yetshila +1",
    head={ name="Herculean Helm", augments={'AGI+6','CHR+1','Weapon skill damage +7%'}},
    body={ name="Herculean Vest", augments={'"Rapid Shot"+2','Pet: AGI+6','Weapon skill damage +6%','Accuracy+6 Attack+6'}},
    hands="Meg. Gloves +2",
    legs={ name="Herculean Trousers", augments={'Accuracy+15 Attack+15','Weapon skill damage +3%','DEX+10','Accuracy+5'}},
    feet={ name="Herculean Boots", augments={'Rng.Atk.+24','Attack+30','"Store TP"+10','Accuracy+20 Attack+20'}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Ishvara Earring",
    right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250'}},
    left_ring="Epaminondas's Ring",
    right_ring="Chirich Ring +1",
    back="Moonbeam Cape"
  }

  --added effect
  sets.Shockwave = {
    ammo="Yetshila +1",
    head="Adhemar Bonnet +1",
    body="Herculean vest",
    hands="Meg. Gloves +2",
    legs="Herculean trousers",
    feet="Ayanmo gambieras +2",
    neck="Fotia Gorget",
    waist="Ioskeha Belt +1",
    left_ear="Crematio Earring",
    right_ear="Friomisi Earring",
    left_ring="Moonlight Ring",
    right_ring="Fenrir Ring +1",
    back="Toro Cape"
  }

  --magic WS
  sets.HercSlash = {
    ammo="Yetshila +1",
	head="Adhemar Bonnet +1",
    body="Herculean vest",
    hands="Meg. Gloves +2",
    legs="Herculean trousers",
    neck="Fotia Gorget",
    waist="Ioskeha Belt +1",
    left_ear="Crematio Earring",
    right_ear="Friomisi Earring",
    left_ring="Moonlight Ring",
    right_ring="Fenrir Ring +1",
    back="Toro Cape"
  }

  sets.Utility = {}
  
  --full PDT set for when stunned, etc.
  sets.Utility.PDT = {
    ammo="Staunch Tathlum",
    head="Meghanada Visor +2",
    body="Ayanmo Corazza +2",
    hands="Turms Mittens +1",
    legs="Meg. Chausses +2",
    feet="Aya. Gambieras +2",
    neck={ name="Loricate Torque +1", augments={'Path: A'}},
    waist="Flume Belt",
    left_ear="Genmei Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Defending Ring",
    right_ring="Patricius Ring",
    back="Moonbeam Cape"
  }

  --full MDT set for when stunned, etc
  sets.Utility.MDT = {
    ammo="Staunch Tathlum",
    head="Meghanada Visor +2",
    body="Ayanmo Corazza +2",
    hands="Turms Mittens +1",
    legs="Meg. Chausses +2",
    feet="Aya. Gambieras +2",
    neck={ name="Loricate Torque +1", augments={'Path: A'}},
    waist="Flume Belt",
    left_ear="Genmei Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Defending Ring",
    right_ring="Patricius Ring",
    back="Moonbeam Cape"
  }
  
  sets.Enhancing = {
    ammo="Staunch Tathlum +1",
    head="Erilaz Galea +1",
    body="Dread Jupon",
    hands="Regal Gauntlets",
    legs="Futhark Trousers +1",
    feet="Carmine greaves +1",
    neck="Sanctity Necklace",
    waist="Siegel Sash",
    left_ear="Magnetic Earring",
    right_ear="Halasz Earring",
    left_ring="Moonlight Ring",
    right_ring="Stikini Ring"
  }

  --Job Ability Sets--
  sets.JA = {}
  
  -- Dancer's Abilities --
  sets.JA.Waltz = {legs="Dashing subligar"}
  sets.JA.Step = 	{}
  sets.JA.Stun = {}
	
	
  sets.JA.Lunge = {}
  sets.JA.Vallation = {body="Runeist Coat +1",legs="Futhark Trousers +1"}
  sets.JA.Gambit = {hands="Runeist's mitons +1"}
  sets.JA.Rayke = {feet="Futhark boots +1"}
  sets.JA.Battuta = {head="Futhark bandeau +1"}
  sets.JA.Pflug = {feet="Runeist bottes +1"}
  sets.JA.Pulse = {head="Erilaz Galea +1",legs="Runeist Trousers +1"}
  sets.JA.Swordplay = {hands="Futhark mitons +1"}

  --Precast Sets--
  --Fast Cast set
  sets.precast = {
    ammo="Staunch Tathlum +1",
    head="Rune. Bandeau +1",
    body="Dread Jupon",
    hands="Regal Gauntlets",
    legs={ name="Futhark Trousers +1", augments={'Enhances "Inspire" effect',}},
    feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}},
    neck="Loricate Torque +1",
    waist="Siegel Sash",
    left_ear="Mimir Earring",
    right_ear="Loquac. Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring"
  }

  --Phalanx--
  sets.Phalanx = {
    ammo="Staunch Tathlum",
    head="Futhark bandeau +1",
    body={ name="Herculean Vest", augments={'Pet: STR+9','Accuracy+9','Phalanx +5','Accuracy+5 Attack+5',}},
    hands={ name="Taeon Gloves", augments={'Mag. Evasion+20','Spell interruption rate down -10%','Phalanx +3',}},
    legs={ name="Taeon Tights", augments={'DEF+16','Spell interruption rate down -10%','Phalanx +3',}},
    feet={ name="Taeon Boots", augments={'DEF+20','Spell interruption rate down -9%','Phalanx +3',}},
    neck="Incanter's Torque",
    waist="Siegel Sash",
    left_ear="Loquac. Earring",
    right_ear="Magnetic Earring",
    left_ring="Evanescence Ring",
    right_ring="Stikini Ring +1",
    back="Moonbeam Cape"
 }

 --88 SIR
 sets.SIR = {
    ammo="Staunch Tathlum +1", --11
    body={ name="Taeon Tabard", augments={'Spell interruption rate down -10%','Phalanx +3',}}, --10
    hands="Regal Gauntlets", --10
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}}, --20
    feet={ name="Taeon Boots", augments={'Spell interruption rate down -9%','Phalanx +3',}}, --9
    neck={ name="Loricate Torque +1", augments={'Path: A',}}, --5
    waist="Audumbla sash", --10
    left_ear="Halasz Earring", --5
    right_ear="Magnetic Earring" --8
 }
 
  --Enmity set for high hate generating spells and JAs
  sets.Enmity = {back={ name="Ogma's cape", augments={'Enmity+10','Phys. dmg. taken-4%',}}, waist="Sinew Belt", legs="Erilaz Leg Guards +1", neck="Warder's Charm", body="Emet Harness +1"}

  --Magic acc for enfeebles, handy for VW
  sets.MagicAcc = {}

  sets.Stoneskin = {
    ammo="Staunch Tathlum +1",
    head="Rune. Bandeau +1",
    body={ name="Taeon Tabard", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    hands="Regal Gauntlets",
    legs={ name="Futhark Trousers +1", augments={'Enhances "Inspire" effect',}},
    feet={ name="Taeon Boots", augments={'Spell interruption rate down -9%','Phalanx +3',}},
    neck={ name="Loricate Torque +1", augments={'Path: A',}},
    waist="Siegel Sash",
    left_ear="Magnetic Earring",
    right_ear="Earthcry Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring",
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Phys. dmg. taken-10%'}}  
  }

end


function precast(spell,abil)

	-- Dancer Abilities --
  if string.find(spell.english, 'Waltz') then
	equip(sets.JA.Waltz)
  end	
  
  --equips favorite weapon if disarmed
  if player.equipment.main == "empty" or player.equipment.sub == "empty" then
    equip({main="Epeolatry",sub="Utu Grip"})
    add_to_chat(158,'Epeolatry Weapon: [ON]')
	Lionheart = 'OFF'
  end
  
  if spell.skill == 'Enhancing Magic' then
	equip(sets.precast)
  end
  if spell.action_type == 'Magic' then
    equip(sets.Utility.PDT,sets.precast)
  end
  
  
  if spell.name == 'Lunge' or spell.name == 'Swipe' then
    equip(sets.JA.Lunge)
  end
  --prevents Valiance/Vallation/Liement from being prevented by each other (cancels whichever is active)
  if spell.name == 'Valiance' or spell.name == 'Vallation' or spell.name == 'Liement' then
    if buffactive['Valiance'] then
      cast_delay(0.2)
      windower.ffxi.cancel_buff(535)
    elseif buffactive['Vallation'] then
      cast_delay(0.2)
      windower.ffxi.cancel_buff(531)
    elseif buffactive['Liement'] then
      cast_delay(0.2)
      windower.ffxi.cancel_buff(537)
    end
  end
  if spell.name == 'Vallation' or spell.name == 'Valiance' then
    equip(sets.Enmity,sets.JA.Vallation)
  end
  if spell.name == 'Pflug' then
    equip(sets.Enmity,sets.JA.Pflug)
  end
  if spell.name == 'Elemental Sforzo' or spell.name == 'Liement' then
    equip(sets.Enmity,{body="Futhark coat +1"})
  end
  if spell.name == 'Gambit' then
    equip(sets.Enmity,sets.JA.Gambit)
  end
  if spell.name == 'Embolden' then
    equip({back={ name="Evasionist's Cape", augments={'Enmity+5','"Embolden"+14','"Dbl.Atk."+2','Damage taken-3%'}}})
  end  
  if spell.name == 'Rayke' then
    equip(sets.Enmity,sets.JA.Rayke)
  end
  if spell.name == 'Battuta' then
    equip(sets.Enmity,sets.JA.Battuta)
  end
  if spell.name == 'Vivacious Pulse' then
    equip(sets.Enmity,sets.JA.Pulse)
  end
  if spell.name == 'One for All' or spell.name == 'Embolden' or spell.name == 'Odyllic Subterfuge' or spell.name == 'Warcry'
    or spell.name == 'Swordplay' or spell.name == 'Meditate' or spell.name == 'Provoke' then
    equip(sets.Enmity, {hands="Futhark mitons +1"})
  end
  if spell.name == 'Resolution' then
    equip(sets.Resolution)
  end
  if spell.name == 'Dimidiation' or spell.name == 'Spinning Slash'  then
    equip(sets.Single)
  end
  if spell.name == 'Shockwave' then
    equip(sets.Shockwave)
  end
  if spell.name == 'Herculean Slash' or spell.name == 'Freezebite' or spell.name == 'Frostbite' then
    equip(sets.HercSlash)
  end

  --prevents casting Utsusemi if you already have 3 or more shadows
  if spell.name == 'Utsusemi: Ichi' and ShadowType == 'Ni' and (buffactive['Copy Image (3)'] or buffactive['Copy Image (4+)']) then
    cancel_spell()
  end
    --Utsusemi Check
  if string.find(spell.name,'Utsusemi') then
    equip({neck="Magoraga Beads"})
  end
  
  if buffactive['terror'] or buffactive['petrification'] or buffactive['stun'] or buffactive['sleep'] then
    if TP_ind == 4 then
      equip(sets.Utility.MDT) else
      equip(sets.Utility.PDT)
    end
  end
end



--Should NOT put Job Abilities here.  Ony Magic Fren!  Fren is Doggo Speak for Friend
function midcast(spell,act,arg)
  if spell.skill == 'Elemental Magic' then
    equip(sets.JA.Lunge)
  end

  if spell.skill == 'Enhancing Magic' then
	if spell.name == 'Phalanx' then
		equip(sets.SIR,sets.Phalanx)
	end
	if spell.name == "Blink" or spell.name == "Stoneskin" then
      equip(sets.SIR,sets.Stoneskin)
	end
	if spell.name == 'Foil' then
	  equip(sets.SIR,sets.enmity)
	end
    if string.find(spell.name,'Refresh') then
	  equip(sets.SIR,sets.Enhancing)
    end
    if string.find(spell.name,'Regen') then
      equip(sets.SIR,sets.Enhancing)
    end
  
  end
  
  if spell.name == 'Flash' or spell.name == "Stun" then
    equip(sets.Enmity)
  end
  if spell.name == "Repose" or spell.skill == 'Enfeebling Magic' or spell.skill == 'Dark Magic' then
    equip(sets.MagicAcc)
  end

end


function aftercast(spell)
  equip_current()
  --Just running a lil somethin-somethin to track Shadows
  if string.find(spell.name,'Utsusemi') and not spell.interrupted then
    if spell.name == 'Utsusemi: Ichi' then
      ShadowType = 'Ichi'
    elseif spell.name == 'Utsusemi: Ni' then
      ShadowType = 'Ni'
    end
  end
end


--This function should only get kicked off when you're engaging.  
--If I want a manual 'Refresh' set or 'MDT' or 'DT' set I can do that in game with equipsets.  
--But I don't want to fuck myself by ignoring the engaged check.
--I'm also deciding not to use a Binding Key to put my in a MDT, PDT, DT, Refresh Set.
--I dunno, I'm just against hitting Ctrl+f# all the time for that shit
function equip_current()
	equip(sets.TP[sets.TP.index[TP_ind]]) 
end

--Function use for Changing the TP Set.  Ctrl+F9 is your meal ticket
--123 is a red color for the text output
--158 is a green color for the text output
function self_command(command)
	if command == 'C8' then -- Lionheart to Epeolatry --	
        if Lionheart == 'ON' then
            Lionheart = 'OFF'
			equip({main="Epeolatry", sub="Utu Grip"})
            add_to_chat(158,'Epeolatry Weapon: [ON]')
			add_to_chat(123,'Lionheart Weapon: [OFF]')
		else
            Lionheart = 'ON'
			equip({main="Lionheart", sub="Utu Grip"})
            add_to_chat(158,'Lionheart Weapon: [ON]')
            add_to_chat(123,'Epeolatry Weapon: [OFF]')				
        end
       -- status_change(player.status)
	elseif command == 'toggle TP set' then
		TP_ind = TP_ind -1
		if TP_ind == 0 then TP_ind = #sets.TP.index end
		send_command('@input /echo <----- Gear Set changed to '..sets.TP.index[TP_ind]..' ----->')
		equip_current()	
	elseif command == 'reverse TP set' then
		TP_ind = TP_ind +1
		if TP_ind > #sets.TP.index then TP_ind = 1 end
		send_command('@input /echo <----- Gear Set changed to '..sets.TP.index[TP_ind]..' ----->')
		equip_current()
	end
end


-- Send tell to self if I died --
windower.register_event('status change', function()
	if player.status == 'Dead' then
	send_command('@input /tell <me> Wakies Wakies  For some Weird Ass Reason my character died')
	end
end)
