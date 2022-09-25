function get_sets()
-- Set macro book/set --
    send_command('input /macro book 11;wait .1;input /macro set 1')
	
	-- Binds for modes
	--Toggle TP sets button, change if you want; currently ALT+F9 toggles forward, CTRL+F9 toggles backwards
  	send_command('bind ^f8 gs c C8') 
    send_command('bind !f9 gs c toggle TP set')
	send_command('bind ^f9 gs c reverse TP set')

	-- Modes --
	Capacity = 'OFF' -- Press ctrl + F11 if you want to be in Capacity mode  --	
	Lionheart = 'OFF' -- Toogle on/off the Lionheart and Aettir via ctrl + F9
	ShadowType = 'None'
	
  --Idle Sets--
  sets.Idle = {
    ammo="Staunch Tathlum",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Futhark torque +1",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Odnowa Earring +1",
    right_ear={ name="Erilaz Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+6','Mag. Acc.+6',}},
    left_ring="Regal Ring",
    right_ring="Defending Ring",
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','MND+10','Enmity+10','Phys. dmg. taken-10%',}}
  }

  --TP Sets--
  sets.TP = {}
--					  1		   2              3 				   4 
  sets.TP.index = {'BadAss', 'Tank', 'TakingLessMagicDamage', 'Accuracy'}
  TP_ind = 1

  --offensive melee set
  sets.TP.BadAss = {
    ammo="Seeth. Bomblet +1",
    head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Herculean Gloves", augments={'STR+15','"Triple Atk."+2','Quadruple Attack +3','Accuracy+19 Attack+19',}},
    legs="Nyame Flanchard",
    feet={ name="Herculean Boots", augments={'"Triple Atk."+4','DEX+5','Accuracy+7','Attack+10',}},
    neck={ name="Futhark Torque +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear="Brutal Earring",
    left_ring="Regal Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}}
  }

  --Tank Gear
  sets.TP.Tank = {
    ammo="Staunch Tathlum",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Futhark torque +1",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Odnowa Earring +1",
    right_ear={ name="Erilaz Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+6','Mag. Acc.+6',}},
    left_ring="Regal Ring",
    right_ring="Defending Ring",
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','MND+10','Enmity+10','Phys. dmg. taken-10%',}}
  }

  --MDT melee set
  sets.TP.TakingLessMagicDamage = {
    ammo="Staunch Tathlum",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Futhark torque +1",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Odnowa Earring +1",
    right_ear={ name="Erilaz Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+6','Mag. Acc.+6',}},
    left_ring="Regal Ring",
    right_ring="Defending Ring",
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','MND+10','Enmity+10','Phys. dmg. taken-10%',}}
  }
  
  sets.TP.Accuracy = {
    ammo="Seeth. Bomblet +1",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck={ name="Futhark Torque +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Odr Earring",
    right_ear="Digni. Earring",
    left_ring="Regal Ring",
    right_ring="Defending Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}}
  }

  --Weaponskill Sets--
  sets.WS = {}

  --multi, carries FTP -- Need STR for the modifier
  sets.Resolution = {
    ammo="Yetshila",
    head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Herculean Gloves", augments={'STR+15','"Triple Atk."+2','Quadruple Attack +3','Accuracy+19 Attack+19',}},
    legs="Nyame Flanchard",
    feet={ name="Herculean Boots", augments={'"Triple Atk."+4','DEX+5','Accuracy+7','Attack+10',}},
    neck="Clotharius Torque",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Sherida Earring",
    right_ear="Brutal Earring",
    left_ring="Regal Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}}
  }

  --single, doesn't carry FTP -- This will be dimidiation  Need DEX for the modifier
  sets.Single = {
    ammo="Knobkierrie",
    head="Nyame Helm",
    body="Nyame Mail",
    hands={ name="Herculean Gloves", augments={'Attack+9','MND+9','Weapon skill damage +6%',}},
    legs="Nyame Flanchard",
    feet={ name="Herculean Boots", augments={'"Occult Acumen"+9','STR+9','Weapon skill damage +8%','Accuracy+20 Attack+20',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Odr Earring",
    right_ear="Ishvara Earring",
    left_ring="Regal Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}}
  }

  --added effect
  sets.Shockwave = {
    ammo="Ginsen",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Sanctity Necklace",
    waist="Kentarch Belt",
    left_ear="Odr Earring",
    right_ear="Digni. Earring",
    left_ring="Moonbeam Ring",
    right_ring="Chirich Ring +1",
    back="Vespid Mantle"
  }

  --magic WS
  sets.HercSlash = {
    ammo="Yetshila",
	head="Runeist's bandeau +2",
    body="Meghanada Cuirie +2",
    hands="Meg. Gloves +2",
    legs="Herculean trousers",
    neck="Fotia Gorget",
    waist="Ioskeha Belt +1",
    left_ear="Crematio Earring",
    right_ear="Friomisi Earring",
    left_ring="Moonbeam Ring",
    right_ring="Fenrir Ring +1",
    back="Toro Cape"
  }

  sets.Utility = {}
  
  --full PDT set for when stunned, etc.
  sets.Utility.PDT = {
    ammo="Staunch Tathlum +1",
    head="Futhark bandeau +1",
    body="Futhark coat +1",
    hands="Meghanada Gloves +2",
    legs="Meg. Chausses +2",
    feet="Erilaz Greaves +1",
    neck="Loricate torque +1",
    waist="Flume Belt",
    left_ear="Infused Earring",
    right_ear="Hearty Earring",
    left_ring="Moonbeam Ring",
    right_ring="Defending Ring",
    back="Moonbeam Cape"
  }

  --full MDT set for when stunned, etc
  sets.Utility.MDT = {
    ammo="Staunch Tathlum +1",
    head="Erilaz galea +1",
    body="Futhark coat +1",
    hands="Meghanada Gloves +2",
    legs="Meg. Chausses +2",
    feet="Erilaz Greaves +1",
    neck="Loricate torque +1",
    waist="Flume Belt",
    left_ear="Infused Earring",
    right_ear="Hearty Earring",
    left_ring="Moonbeam Ring",
    right_ring="Defending Ring",
    back="Moonbeam Cape"
  }
  
  sets.Enhancing = {
    ammo="Staunch Tathlum +1",
    head="Erilaz Galea +1",
    body="Dread Jupon",
    hands="Regal Gauntlets",
    legs="Futhark Trousers +1",
    feet="Herculean boots",
    neck="Sanctity Necklace",
    waist="Siegel Sash",
    left_ear="Magnetic Earring",
    right_ear="Halasz Earring",
    left_ring="Moonbeam Ring",
    right_ring="Stikini Ring"
  }

  --Job Ability Sets--
  sets.JA = {}
  
  -- Dancer's Abilities --
  sets.JA.Waltz = {legs="Dashing subligar"}
  sets.JA.Step = 	{}
  sets.JA.Stun = {}
	
	
  sets.JA.Lunge = {}
  sets.JA.Vallation = {body="Runeist Coat +2",legs="Futhark Trousers +1"}
  sets.JA.Gambit = {hands="Runeist's mitons +2"}
  sets.JA.Rayke = {feet="Futhark boots +1"}
  sets.JA.Battuta = {head="Futhark bandeau +1"}
  sets.JA.Pflug = {feet="Runeist bottes +2"}
  sets.JA.Pulse = {head="Erilaz Galea +1",legs="Runeist Trousers +2"}
  sets.JA.Swordplay = {hands="Futhark mitons +1"}

  --Precast Sets--
  --Fast Cast set
  sets.precast = {
	head="Runeist bandeau +2",
    body="Dread jupon",
    right_ear="Loquac. Earring"
  }

  --Phalanx--
  sets.Phalanx = {
    ammo="Staunch Tathlum +1",
    head={ name="Taeon Chapeau", augments={'Spell interruption rate down -8%','Phalanx +3',}},
    body={ name="Taeon Tabard", augments={'Spell interruption rate down -9%','Phalanx +3',}},
    hands={ name="Taeon Gloves", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    legs={ name="Taeon Tights", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    feet={ name="Taeon Boots", augments={'Spell interruption rate down -8%','Phalanx +3',}},
    neck="Futhark Torque +1",
    waist="Siegel Sash",
    left_ear="Halasz Earring",
    right_ear="Enchntr. Earring +1",
    left_ring="Stikini Ring +1",
    right_ring="Defending Ring",
    back="Solemnity Cape"
  }

  --Enmity set for high hate generating spells and JAs
  sets.Enmity = {back={ name="Ogma's cape", augments={'Enmity+10','Phys. dmg. taken-4%',}}, waist="Sinew Belt", legs="Erilaz Leg Guards +1", neck="Warder's Charm", body="Emet Harness +1"}

  --Magic acc for enfeebles, handy for VW
  sets.MagicAcc = {}


end


function precast(spell,abil)

	-- Dancer Abilities --
  if string.find(spell.english, 'Waltz') then
	equip(sets.JA.Waltz)
  end	
  
  --equips favorite weapon if disarmed
  if player.equipment.main == "empty" or player.equipment.sub == "empty" then
    equip({main="Aettir",sub="Balarama Grip"})
    add_to_chat(158,'Aettir Weapon: [ON]')
	Lionheart = 'OFF'
  end
  
  --Enhancing Magic Check
  if spell.skill == 'Enhancing Magic' then
	equip(sets.Enhancing)
  end
  if spell.action_type == 'Magic' then
    equip(sets.TP.Tank)
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
  if spell.name == 'Spinning Slash' or spell.name == 'Dimidiation' then
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
  if spell.skill == 'Enhancing Magic' then
	equip(sets.Enhancing)
    if spell.name == "Blink" or spell.name == "Stoneskin" then
      equip(sets.Utility.PDT,{head="Runeist bandeau +2",hands="Leyline Gloves", right_ear="Earthcry earring", legs="Futhark Trousers +1", waist="Siegel Sash"})
    elseif string.find(spell.name,'Bar') or spell.name=="Temper" then
      equip(sets.Enhancing)
    end
    if buffactive.embolden then
      equip({back="Evasionist's Cape"})
    end
  end
  if spell.name == 'Foil' or spell.name == 'Flash' or spell.name == "Stun" then
    equip(sets.Enmity,{head="Runeist bandeau +2"})
  end
  if spell.name == 'Phalanx' then
    equip(sets.Phalanx)
  end
  if string.find(spell.name,'Refresh') then
	equip(sets.Enhancing, {head="Erilaz galea +1"})
  end
  if string.find(spell.name,'Regen') then
    equip({head="Runeist bandeau +2"})
  end
  if spell.name == "Repose" or spell.skill == 'Enfeebling Magic' or spell.skill == 'Dark Magic' then
    equip(sets.MagicAcc)
  end
  if spell.skill == 'Elemental Magic' then
    equip(sets.JA.Lunge)
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
	if command == 'C8' then -- Lionheart to Aettir --	
        if Lionheart == 'ON' then
            Lionheart = 'OFF'
			equip({main="Aettir", sub="Balarama Grip"})
            add_to_chat(158,'Aettir Weapon: [ON]')
			add_to_chat(123,'Lionheart Weapon: [OFF]')
		else
            Lionheart = 'ON'
			equip({main="Lionheart", sub="Balarama Grip"})
            add_to_chat(158,'Lionheart Weapon: [ON]')
            add_to_chat(123,'Aettir Weapon: [OFF]')				
        end
       -- status_change(player.status)
	elseif command == 'toggle TP set' then
		TP_ind = TP_ind +1
		if TP_ind > #sets.TP.index then TP_ind = 1 end
		send_command('@input /echo <----- Gear Set changed to '..sets.TP.index[TP_ind]..' ----->')
		equip_current()
	elseif command == 'reverse TP set' then
		TP_ind = TP_ind -1
		if TP_ind == 0 then TP_ind = #sets.TP.index end
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
