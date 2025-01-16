--Food to Eat
--    Recomended:
--    Miso Ramen
    -- Stats: HP+100, STR+5, VIT+5, DEF+10% (Max. 170), "Magic Def. Bonus"+5, Magic Evasion +10% (Max. 50),"Resist Slow" +10.
        -- The best defensive tanking food there is. It couples HP+, Defense, and Magic Evasion+ all into one food.
            -- Purchased from the Auction House. Crafted only.
    -- Om. Sandwich
    -- Stats: HP+11% (Max. 150), VIT+7, MND+7, Accuracy+11% (Max. 80), DEF+11% (Max. 120), Enmity+4.
        -- Introduced in The Voracious Resurgence missionline. Comparable to Miso Ramen in HP and Defense; exchanging Magic Evasion and Magic Defense Bonus for Accuracy and Enmity.
        -- Purchased from the Auction House. Crafted only.

-- Alternatives:

    -- Black Curry
    -- Stats: (DEX+2, VIT+4, INT+1, Accuracy+5, Ranged Accuracy+5, Evasion+5, DEF+15% (Max. 180), "Resist Sleep"+3, HP recovered while healing +2, MP recovered while healing +1)
        -- The next best thing. This food actually has 10 more defense than Miso Ramen, but lacks the other benefits. The silver lining is that they are a fourth to a fifth the price of Miso depending on the market.
            -- Purchased from the Curio Moogle for 4,000 gil, 48,000 a stack.
    -- Tavnazian Taco
    -- Stats: (HP+20, MP+20, DEX+4, VIT+6, AGI+4, CHR+4, DEF+25% (Max. 150), HP and MP recovered while healing +1)
        -- The once famous food. There is no reason to really use this anymore, but if you are a lower level it will grant more defense than one of these higher level items given its lower cap, but higher percentage increase.
            -- Purchased from the Curio Moogle for 4,000 gil, 48,000 a stack.
    -- Rabbit Pie
    -- Stats: (STR+5 VIT+5 INT-2 Attack+25% (Max. 100) Ranged Attack+25% (Max. 100) DEF+25% (Max. 100))
        -- An honorable mention. The attack and defense parameters aren't as high given it's hybrid status but definitely worth looking at.
            -- Purchased from Curio Moogle for 3,000 gil, 36,000 gil a stack.
    -- Fried Popoto
    -- Stats: (HP +30, VIT +2, Element: Fire +20, Defense +20% (Cap:145), Subtle Blow +8)
        -- This food is as cheap as it gets, excluding the crystal it costs less than 300 gil to make 6 of these a synth. Making these in bulk to store and use for Ambuscade spam and similar events will cost you next to nothing. Even if you have to shout and pay a level 90+ cook 50-100k to make them for you. It would still only cost you roughly 10-20k a stack of Fried Popotos.
            -- Purchased from the Auction House, crafted only.

-- Created by Voliathon
-- Modified 1/15/2025

function get_sets()
-- Set macro book/set --
	send_command('input /macro book 5;wait .1;input /macro set 1')

	-- Binds for modes
	--Swapping Shields
	send_command('bind ^f7 gs c C7') 
	--Swapping Swords
	send_command('bind ^f8 gs c C8') 
	--Toggle TP sets button, change if you want; currently ALT+F9 toggles forward, CTRL+F9 toggles backwards
	send_command('bind !f9 gs c toggle TP set')
	send_command('bind ^f9 gs c reverse TP set')

	-- Modes --
	Capacity = 'OFF' -- Press ctrl + F11 if you want to be in Capacity mode  --	
	Naegling = 'OFF' -- Toogle on/off the Naegling and Excalibur via ctrl + F8
	Aegis = 'OFF'
	ShadowType = 'None'
	
  --Job Ability Sets--
  sets.JA = {}
  
  -- Dancer's Abilities --
  sets.JA.Waltz = {legs="Dashing subligar"}
  sets.JA.Step = 	{}
  sets.JA.Stun = {}
	
	

  --TP Sets--
  sets.TP = {}
--					  1		   2              3 		   4		  5 		  6		        7
  sets.TP.index = {'Movement', 'BadAss', 'OldTurtle', 'NewTurtle', 'Evasion', 'Accuracy', 'TreasureHunter'}
  TP_ind = 1

  sets.TP.Movement = {
    ammo="Staunch Tathlum +1",
    head="Sakpata's Helm",
    body="Sakpata's Plate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Sakpata's Leggings",
    neck="Null loop",
    waist="Null belt",
    left_ear="Infused Earring",
    right_ear="Chevalier's Earring +1",
    left_ring="Shneddick Ring",
    right_ring="Defending Ring",
    back="Null shawl"

  }
  
  --offensive melee set
  sets.TP.BadAss = {
    ammo="Coiste Bodhar",
    head="Flam. Zucchetto +2",
    body="Sakpata's Plate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Flam. Gambieras +2",
    neck="Null loop",
    waist="Sailfi Belt",
    left_ear="Brutal Earring",
    right_ear="Cessance earring",
	left_ring={name="Chirich Ring +1", bag="Wardrobe 3"},
	right_ring={name="Chirich Ring +1", bag="Wardrobe 4"},
    back="Null shawl"
  }

  --Old Tank Gear
  sets.TP.OldTurtle = {
    ammo="Staunch Tathlum +1",
    head={ name="Souv. Schaller +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    body="Souv. Cuirass +1",
    hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    feet={ name="Souveran Schuhs +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    neck="Null loop",
    waist="Null belt",
    left_ear="Hearty Earring",
    right_ear="Chevalier's Earring +1",
    left_ring="Defending Ring",
    right_ring="Fortified Ring",
    back="Null shawl"
  }
  
  --New Tank Gear
  sets.TP.NewTurtle = {
    ammo="Staunch Tathlum +1",
    head="Sakpata's Helm",
    body="Sakpata's Plate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Sakpata's Leggings",
    neck="Null loop",
    waist="Null belt",
    left_ear="Tuisto Earring",
    right_ear="Chevalier's Earring +1",
    left_ring="Defending Ring",
    right_ring="Fortified Ring",
    back="Null shawl"
  }  

  --Evasion
  sets.TP.Evasion = {
    ammo="Staunch Tathlum +1",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Null loop",
    waist="Null belt",
    left_ear="Tuisto Earring",
    right_ear="Cryptic earring",
    left_ring="Defending Ring",
    right_ring="Fortified Ring",
    back="Null shawl"
  }
  
  sets.TP.Accuracy = {
    ammo="Amar Cluster",
    head="Sakpata's Helm",
    body="Sakpata's Plate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Sakpata's Leggings",	
    neck="Null loop",
	wait="Null belt",
    left_ear="Telos Earring",
    right_ear="Chevalier's Earring +1",
	left_ring={name="Chirich Ring +1", bag="Wardrobe 3"},
	right_ring={name="Chirich Ring +1", bag="Wardrobe 4"}
  }
  
  sets.TP.TreasureHunter = {
    waist="Chaac Belt"
  }

  --Weaponskill Sets--
  sets.WS = {}

  --Atonement, Enmity is the modifier
  sets.Atonement = {
    ammo="Amar Cluster",
    head={ name="Souv. Schaller +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    body="Souv. Cuirass +1",
    hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    feet={ name="Souveran Schuhs +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    neck="Warder's Charm",
    waist="Grunfeld Rope",
    left_ear="Cryptic Earring",
    right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    left_ring="Defending Ring",
    right_ring="Epaminondas's Ring",
    back="Null shawl"
  }

  --STR and WSD gears
  sets.STRWSD = {
    ammo="Crepuscular pebble",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Ishvara Earring",
    right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    left_ring="Sroda Ring",
    right_ring="Epaminondas's Ring",
    back="Null shawl"
  }


  sets.Enhancing = {
    ammo="Staunch Tathlum +1",
    head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
    body="Sakpata's Plate",
    hands="Regal Gauntlets",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}},
    neck="Incanter's Torque",
    waist="Siegel Sash",
    left_ear="Magnetic Earring",
    right_ear="Halasz Earring",
    left_ring="Lebeche Ring",
    right_ring="Stikini Ring +1",
    back="Null Shawl"
  }

  --FastCast set
  sets.FastCast = {
    ammo="Staunch Tathlum +1",
    hands="Regal Gauntlets",
    feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}},
    neck="Null loop",
    waist="Siegel Sash",
    left_ear="Mimir Earring",
    right_ear="Loquac. Earring",
	left_ring={name="Stikini Ring +1", bag="Wardrobe 3"},
	right_ring={name="Stikini Ring +1", bag="Wardrobe 5"}
  }

  --Phalanx--
  sets.Phalanx = {
    main="Sakpata's Sword",
    sub={ name="Priwen", augments={'HP+50','Mag. Evasion+50','Damage Taken -3%',}},
    ammo="Staunch Tathlum +1",
    head="Yorium Barbuta",
    body="Yorium Cuirass",
    hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    legs="Sakpata's Cuisses",
    feet={ name="Souveran Schuhs +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    neck="Voltsurge Torque",
    waist="Audumbla Sash",
    left_ear="Mimir Earring",
    right_ear="Loquac. Earring",
	left_ring={name="Stikini Ring +1", bag="Wardrobe 3"},
	right_ring={name="Stikini Ring +1", bag="Wardrobe 5"},
    back="Weard Mantle"
 }

 --88 SIR
 sets.SIR = {
    ammo="Staunch Tathlum +1", --11
    body={ name="Taeon Tabard", augments={'Spell interruption rate down -10%','Phalanx +3',}}, --10
    hands="Regal Gauntlets", --10
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}}, --20
    feet={ name="Taeon Boots", augments={'Spell interruption rate down -9%','Phalanx +3',}}, --9
    neck="Null loop", --5
    waist="Audumbla sash", --10
    left_ear="Knightly Earring", --9
    right_ear="Magnetic Earring",	--8
 }
 
  --Enmity set for high hate generating spells and JAs
  sets.Enmity = {
    ammo="Amar Cluster",
    head={ name="Souv. Schaller +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    body="Souv. Cuirass +1",
    hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    feet={ name="Souveran Schuhs +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    neck="Warder's Charm",
    waist="Grunfeld Rope",
    left_ear="Cryptic Earring",
    right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    left_ring="Defending Ring",
    right_ring="Epaminondas's Ring",
    back="Null shawl"  
  }

  --Magic acc for enfeebles, handy for VW
  sets.MagicAcc = {}

  sets.Stoneskin = {
    ammo="Staunch Tathlum +1",
    head="Rune. Bandeau +2",
    body={ name="Taeon Tabard", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    hands="Regal Gauntlets",
    legs={ name="Futhark Trousers +1", augments={'Enhances "Inspire" effect',}},
    feet={ name="Taeon Boots", augments={'Spell interruption rate down -9%','Phalanx +3',}},
    neck="Null loop",
    waist="Siegel Sash",
    left_ear="Magnetic Earring",
    right_ear="Earthcry Earring",
	left_ring={name="Stikini Ring +1", bag="Wardrobe 3"},
	right_ring={name="Stikini Ring +1", bag="Wardrobe 5"},
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Phys. dmg. taken-10%'}}  
  }

end

-- Precast Logic --
function precast(spell,abil)
	-- Dancer Abilities --
  if string.find(spell.english, 'Waltz') then
	equip(sets.JA.Waltz)
  end	
  
  --equips favorite weapon if disarmed
  if player.equipment.main == "empty" or player.equipment.sub == "empty" then
    equip({main="Excalibur",sub="Aegis"})
    add_to_chat(158,'Excalibur Weapon: [ON]')
	Naegling = 'OFF'
  end
  
  if spell.skill == 'Enhancing Magic' or spell.action_type == 'Magic' then
	equip(sets.FastCast)
  end
   
  if spell.name == 'Atonement' then
    equip(sets.Atonement)
  end
  if spell.name == 'Savage Blade' then
    equip(sets.STRWSD)
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
      equip(sets.Evasion)
    end
  end
  
end



-- Midcast
function midcast(spell,act,arg)
  if spell.skill == 'Enhancing Magic' then
	if spell.name == 'Phalanx' then
		equip(sets.Phalanx)
	end
	if spell.name == "Blink" or spell.name == "Stoneskin" then
      equip(sets.SIR,sets.Stoneskin)
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
	weaponSelector()
	equip(sets.TP[sets.TP.index[TP_ind]]) 
end

--Function use for Changing the TP Set.  Ctrl+F9 is your meal ticket
--123 is a red color for the text output
--158 is a green color for the text output
function self_command(command)
	if command == 'C8' then -- Naegling to Excalibur --	
      if Naegling == 'ON' then
		Naegling = 'OFF'
		equip({main="Excalibur"})
		add_to_chat(158,'Excalibur Weapon: [ON]')
		add_to_chat(123,'Naegling Weapon: [OFF]')
	  else
		Naegling = 'ON'
		equip({main="Naegling"})
		add_to_chat(158,'Naegling Weapon: [ON]')
		add_to_chat(123,'Excalibur Weapon: [OFF]')				
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
	if command == 'C7' then
	  if Aegis == 'ON' then
	    Aegis = 'OFF'
		equip({sub="Priwen"})
		add_to_chat(158,'Priwen Shield: [ON]')
		add_to_chat(123,'Aegis Shield: [OFF]')
	  else
        Aegis = 'ON'
        equip({sub="Aegis"})		
		add_to_chat(123,'Priwen Shield: [OFF]')
		add_to_chat(158,'Aegis Shield: [ON]')
	  end
   end
end

function weaponSelector()
  if Naegling == 'ON' then
	equip({main="Naegling"})
  else
	equip({main="Excalibur"})
  end
  
  if Aegis == 'ON' then
	equip({sub="Aegis"})
  else
	equip({sub="Priwen"})		
  end
  
end


-- Send tell to self if I died --
windower.register_event('status change', function()
	if player.status == 'Dead' then
	send_command('@input /tell <me> Wakies Wakies  For some Weird Ass Reason my character died')
	end
end)
