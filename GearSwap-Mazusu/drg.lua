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
    ammo="Ginsen",
    head="Sakpata's helm",
    body="Sakpata's breastplate",
    hands="Sakpata's gauntlets",
    legs="Carmine cuisses +1",
    feet="Hermes' sandals",
    neck="Clotharius Torque",
    waist="Ioskeha Belt +1",
    left_ear="Brutal Earring",
    right_ear="Boii Earring",
    left_ring="Chirich Ring +1",
    right_ring="Chirich Ring +1",
    back="Moonbeam cape"
  }
  
  --offensive melee set
  sets.TP.BadAss = {
	ammo="Ginsen",
    head="Flam. Zucchetto +2",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Flam. Gambieras +2",
    neck="Anu Torque",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Telos Earring",
    right_ear="Sherida Earring",
    left_ring="Regal Ring",
    right_ring="Niqmaddu Ring",
    back="Solemnity Cape"
  }

  --Tank Gear
  sets.TP.Tank = {
    ammo="Staunch Tathlum",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Loricate Torque +1",
    waist="Isa Belt",
    left_ear="Eabani Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Regal Ring",
    right_ring="Niqmaddu Ring",
    back="Solemnity Cape"
  }

  --MDT melee set
  sets.TP.TakingLessMagicDamage = {
    ammo="Staunch Tathlum",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Loricate Torque +1",
    waist="Isa Belt",
    left_ear="Eabani Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Regal Ring",
    right_ring="Niqmaddu Ring",
    back="Solemnity Cape"
  }
  
  sets.TP.Accuracy = {
    ammo="Ginsen",
    head="Flamma Zucchetto +2",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Flamma gambieras +2",
    neck="Sanctity Necklace",
    waist="Kentarch Belt",
    left_ear="Telos Earring",
    right_ear="Digni. Earring",
    left_ring="Cacoethic Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Accuracy+2','"Dbl.Atk."+10',}}
  }
  
  sets.TP.TreasureHunter = {  
    ammo="Ginsen",
    head="Flamma Zucchetto +2",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Flamma gambieras +2",
    neck="Sanctity Necklace",
    waist="Chaac Belt",
    left_ear="Telos Earring",
    right_ear="Digni. Earring",
    left_ring="Cacoethic Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Accuracy+2','"Dbl.Atk."+10',}}
  }

  --Weaponskill Sets--
  sets.WS = {}
  
  -- Stat Modifier: 	73~85% STR
  sets.Stardiver = {
    ammo="Knobkierrie",
    head={ name="Valorous Mask", augments={'VIT+9','Magic dmg. taken -2%','Weapon skill damage +8%','Accuracy+20 Attack+20',}},
    body={ name="Valorous Mail", augments={'INT+3','Magic dmg. taken -1%','Weapon skill damage +10%','Accuracy+12 Attack+12','Mag. Acc.+10 "Mag.Atk.Bns."+10',}},
    hands={ name="Valorous Mitts", augments={'Rng.Atk.+11','Pet: STR+5','Weapon skill damage +6%','Accuracy+15 Attack+15','Mag. Acc.+17 "Mag.Atk.Bns."+17',}},
    legs="Nyame Flanchard",
    feet="Sulev. Leggings +2",
    neck="Fotia Gorget",
    waist="Fotia belt",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    right_ear="Sherida Earring",
    left_ring="Regal Ring",
    right_ring="Niqmaddu Ring",
    back="Solemnity Cape"
  }


  --STR 40% DEX 40% 
  sets.SonicThrust = {
    ammo="Knobkierrie",
    head={ name="Valorous Mask", augments={'VIT+9','Magic dmg. taken -2%','Weapon skill damage +8%','Accuracy+20 Attack+20',}},
    body="Pummeler's lorica +3",
    hands="Sakpata's Gauntlets",
    legs="Pumm. Cuisses +3",
    feet={ name="Valorous Greaves", augments={'Mag. Acc.+20','"Store TP"+1','Weapon skill damage +9%',}},
    neck="Fotia Gorget",
    waist="Sailfi Belt +1",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    right_ear="Thrud Earring",
    left_ring="Regal Ring",
    right_ring="Niqmaddu Ring",
    back={ name="Cichol's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%',}}
  }

    --One WS Set to Rule them all. Fuck it...for now...
    sets.WS = {

    }


  sets.Enhancing = {
    ammo="Staunch Tathlum",
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
    ammo="Staunch Tathlum",
    head="Rune. Bandeau +2",
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
    head={ name="Fu. Bandeau +1", augments={'Enhances "Battuta" effect'}},
    body={ name="Taeon Tabard", augments={'Spell interruption rate down -10%','Phalanx +3'}},
    hands={ name="Herculean Gloves", augments={'"Drain" and "Aspir" potency +4','Phys. dmg. taken -2%','Phalanx +5','Accuracy+19 Attack+19','Mag. Acc.+14 "Mag.Atk.Bns."+14'}},
    legs={ name="Futhark Trousers +1", augments={'Enhances "Inspire" effect'}},
    feet={ name="Herculean Boots", augments={'Pet: "Mag.Atk.Bns."+4','Pet: Attack+3 Pet: Rng.Atk.+3','Phalanx +4','Mag. Acc.+7 "Mag.Atk.Bns."+7'}},
    neck={ name="Loricate Torque +1", augments={'Path: A'}},
    waist="Siegel Sash",
    left_ear="Magnetic Earring",
    right_ear="Halasz Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring",
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+7','Enmity+10','Phys. dmg. taken-10%'}}
 }

 --88 SIR
 sets.SIR = {
    ammo="Staunch Tathlum", --11
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
    ammo="Staunch Tathlum",
    head="Rune. Bandeau +2",
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
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+7','Enmity+10','Phys. dmg. taken-10%'}}  
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
    equip(sets.precast)
  end
  
  --if spell.name == 'Jump' then
--	equip(sets.Jump)
 -- end
  
  if spell.name == 'Stardiver' or spell.name == 'Drakesbane' or spell.name == 'Impulse Drive' or 
		spell.name == 'Wheeling Thrust' or spell.name == 'Skewer' or spell.name == 'Leg Sweep' then
    equip(sets.Stardiver)
  end

  if spell.name == 'Sonic Thrust' or spell.name == 'Penta Thrust' or spell.name == 'Double Thrust' then
    equip(sets.SonicThrust)
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
      equip(sets.TP.Tank) else
      equip(sets.TP.Tank)
    end
  end
end



--Should NOT put Job Abilities here.  Ony Magic Fren!  Fren is Doggo Speak for Friend
function midcast(spell,act,arg)
  
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
