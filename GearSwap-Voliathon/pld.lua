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

function get_sets()
-- Set macro book/set --
	send_command('input /macro book 11;wait .1;input /macro set 1')

	-- Binds for modes
	--Swapping Shields
	send_command('bind !f7 gs c C7') 
	send_command('bind ^f7 gs c C7') 
	--Swapping Weapons
	send_command('bind !f8 gs c C8') 
	send_command('bind ^f8 gs c C8') 
	--Toggle TP sets button, change if you want; currently ALT+F9 toggles forward, CTRL+F9 toggles backwards
	send_command('bind !f9 gs c toggle TP set')
	send_command('bind ^f9 gs c reverse TP set')

	-- Modes --
	Naegling = 'OFF' -- Toogle on/off the Naegling and Burtgang and Malevolence via ctrl + F8
	Aegis = 'OFF'
	
  --Job Ability Sets--
  sets.JA = {}
  
  -- Dancer's Abilities --
  sets.JA.Waltz = {legs="Dashing subligar"}
  sets.JA.Step = 	{}
  sets.JA.Stun = {}
	
	

  --TP Sets--
  sets.TP = {}
--					  1		      2         3 		   4		  5 		     6		        7
  sets.TP.index = {'Movement', 'BadAss', 'Turtle', 'Evasion', 'Accuracy', 'TreasureHunter', 'Reraise'}
  TP_ind = 1

  sets.TP.Movement = {
    ammo="Staunch Tathlum +1",
    head="Chevalier's armet +3",
	body="Chevalier's Cuirass +3",
    hands="Sakpata's Gauntlets",
    legs="Chevalier's cuisses +3",
    feet="Sakpata's Leggings",
    neck="Kgt. Beads +2",
    waist="Null belt",
    left_ear="Tuisto Earring",
    right_ear="Chev. earring +1",
	left_ring="Moonlight Ring",
    right_ring="Shneddick ring",
    back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Chance of successful block +5'}}
  }
  
  --offensive melee set
  sets.TP.BadAss = {
    ammo="Staunch Tathlum +1",
    head="Flam. Zucchetto +2",
    body="Sakpata's Plate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Flam. Gambieras +2",
    neck="Null loop",
    waist="Sailfi Belt +1",
    left_ear="Brutal Earring",
    right_ear="Chev. earring +1",
    left_ring="Chirich Ring +1",
    right_ring="Chirich Ring +1",
    back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Chance of successful block +5'}}
  }

  sets.TP.Turtle = {
    ammo="Staunch Tathlum +1",
    head="Chevalier's armet +3",
	body="Chevalier's Cuirass +3",
    hands="Sakpata's Gauntlets",
    legs="Chevalier's cuisses +3",
    feet="Sakpata's Leggings",
    neck="Kgt. Beads +2",
    waist="Null belt",
    left_ear="Tuisto Earring",
    right_ear="Chev. earring +1",
    left_ring="Moonlight Ring",
    right_ring="Fortified Ring",
    back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Chance of successful block +5'}}
  }  

  --Evasion
  sets.TP.Evasion = {
    ammo="Staunch Tathlum +1",
    head="Chevalier's armet +3",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Chevalier's cuisses +3",
    feet="Nyame Sollerets",
    neck="Null loop",
    waist="Null belt",
    left_ear="Tuisto Earring",
    right_ear="Cryptic earring",
    left_ring="Moonlight Ring",
    right_ring="Fortified Ring",
    back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Chance of successful block +5'}}
  }
  
  sets.TP.Accuracy = {
    ammo="Amar Cluster",
	head="Chevalier's armet +3",
	body="Chevalier's Cuirass +3",
	legs="Chevalier's cuisses +3",
	feet="Chevalier's Sabatons +2",
    neck="Null loop",
    left_ear="Dignitary's Earring",
	right_ear="Chev. earring +1",
    left_ring="Chirich Ring +1",
    right_ring="Chirich Ring +1",
	waist="Null belt"
  }
  
  sets.TP.TreasureHunter = {
    waist="Chaac Belt",
	body="Volte jupon"
  }
  
  sets.TP.Reraise = {
    ammo="Staunch Tathlum +1",
    head="Crepuscular Helm",
    body="Crepuscular Mail",
    hands="Sakpata's Gauntlets",
    legs="Chevalier's cuisses +3",
    feet="Sakpata's Leggings",
    neck="Null loop",
    waist="Null belt",
    left_ear="Hearty Earring",
    right_ear="Chev. earring +1",
    left_ring="Moonlight Ring",
    right_ring="Fortified Ring",
    back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Chance of successful block +5',}} 
  }

  --Weaponskill sets
  --Atonement, Enmity is the modifier
  sets.Atonement = {
    ammo="Amar Cluster",
    head={ name="Souv. Schaller +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    body={ name="Souv. Cuirass +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    feet="Eschite greaves",
    neck="Moonlight necklace",
    waist="Null belt",
    left_ear="Cryptic Earring",
    right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    left_ring="Moonlight Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Chance of successful block +5',}}
  }

  --STR and WSD gears
  sets.STRWSD = {
    ammo="Amar Cluster",
    head={ name="Valorous Mask", augments={'MND+10','"Resist Silence"+4','Weapon skill damage +10%',}},
    body="Sakpata's Plate",
    hands={ name="Valorous Mitts", augments={'CHR+13','Crit.hit rate+3','Weapon skill damage +8%','Mag. Acc.+5 "Mag.Atk.Bns."+5',}},
    legs="Sakpata's Cuisses",
    feet={ name="Valorous Greaves", augments={'STR+3','Weapon Skill Acc.+4','Weapon skill damage +6%','Accuracy+12 Attack+12','Mag. Acc.+10 "Mag.Atk.Bns."+10',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Ishvara Earring",
    right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    left_ring="Moonlight Ring",
    right_ring="Epaminondas's Ring",
    back="Vespid Mantle"
  }
  
  sets.AeolianEdge = {
    ammo="Pemphredo Tathlum",
    head={ name="Nyame Helm", augments={'Path: B',}},
    body={ name="Nyame Mail", augments={'Path: B',}},
    hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
    neck="Null loop",
    waist="Orpheus's Sash",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    right_ear="Friomisi Earring",
    left_ring={name="Stikini Ring +1",bag="Wardrobe 4"},
    right_ring="Epaminondas's Ring",
    back="Toro Cape"  
  }


  sets.Enhancing = {
    ammo="Staunch Tathlum +1",
    head={ name="Souv. Schaller +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    body={ name="Yorium Cuirass", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    hands="Regal Gauntlets",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}},
    neck="Voltsurge Torque",
    waist="Siegel Sash",
    left_ear="Magnetic Earring",
    right_ear="Halasz Earring",
    left_ring={name="Stikini Ring +1",bag="Wardrobe 4"},
    right_ring={name="Stikini Ring +1",bag="Wardrobe 5"},
    back="Moonlight Cape"
  }

  --FastCast set
  sets.FastCast = {
    ammo="Staunch Tathlum +1",
	head="Chevalier's armet +3",
    hands="Regal Gauntlets",
	legs="Carmine cuisses +1",
    feet="Chevalier's Sabatons +2",
    neck="Voltsurge Torque",
    waist="Audumbla sash",
    left_ear="Etiolation Earring",
    right_ear="Loquac. Earring",
    left_ring={name="Stikini Ring +1",bag="Wardrobe 4"},
    right_ring={name="Stikini Ring +1",bag="Wardrobe 5"},
  }

  --Phalanx--
  sets.Phalanx = {
    main="Sakpata's Sword",
    sub={ name="Priwen", augments={'HP+50','Mag. Evasion+50','Damage Taken -3%'}},
    ammo="Staunch Tathlum +1",
    head="Yorium Barbuta",
    body="Yorium Cuirass",
    hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%'}},
    legs="Sakpata's Cuisses",
    feet={ name="Souveran Schuhs +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%'}},
    neck="Voltsurge Torque",
    waist="Audumbla Sash",
    left_ear="Mimir Earring",
    right_ear="Loquac. Earring",
    left_ring={name="Stikini Ring +1",bag="Wardrobe 4"},
    right_ring={name="Stikini Ring +1",bag="Wardrobe 5"},
    back={ name="Weard Mantle", augments={'VIT+2','DEX+2','Phalanx +4'}}
 }

 -- Spell Interruption Rate
 sets.SIR = {
    ammo="Staunch Tathlum +1", --11
    body="Chevalier's cuirass +3", --20
    hands="Regal Gauntlets", --10
    legs="Sakpata's cuisses", 
    feet="Odyssean greaves", --20
    neck="Moonlight necklace", --15
    waist="Audumbla sash", --10
    left_ear="Knightly Earring", --5
    right_ear="Magnetic Earring", --8
    left_ring="Moonlight ring",
    right_ring="Defending ring",	
 }
 
  --Enmity set for high hate generating spells and JAs
  sets.Enmity = {
    ammo="Staunch tathlum +1",
    head={ name="Souv. Schaller +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    body={ name="Souv. Cuirass +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}}, --20
    hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    feet="Eschite greaves",
    neck="Moonlight necklace",
    waist="Creed baudrier",
    left_ear="Cryptic Earring",
    right_ear="Friomisi earring",
    left_ring="Apeile ring",
    right_ring="Apeile ring +1",
    back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Chance of successful block +5',}} 
  }

  sets.ShieldBash = set_combine(sets.Enmity, {
	hands="Caballarius gauntlets +3",
	left_ear="Knightly earring",
	right_ear="Chevalier's earring +1"
  })

end

-- Precast Logic --
function precast(spell,abil)

  if string.find(spell.english, 'Waltz') then
	equip(sets.JA.Waltz)
  end	
  
  if spell.name == 'Shield Bash' then
	equip(sets.ShieldBash)
  end
  if spell.name == 'Provoke' or spell.name == 'Flash' or spell.name == "Stun"  then
    equip(sets.Enmity)
  end
  
  if spell.name == 'Atonement' then
    equip(sets.Atonement)
  end
  if spell.name == 'Savage Blade' then
    equip(sets.STRWSD)
  end
  if spell.name == 'Aeolian Edge' then
	equip(sets.AeolianEdge)
  end

    --Utsusemi Check
  if string.find(spell.name,'Utsusemi') then
    equip({neck="Magoraga Beads"})
  end
  
  if spell.skill == 'Enhancing Magic' then
	if spell.name == 'Phalanx' or spell.name == 'Reprisal' or spell.name == 'Crusade' or spell.name == 'Cocoon' then
		equip(sets.SIR)
	end
  end
  if spell.action_type == 'Magic' then
    equip(sets.FastCast)
  end
  
end


-- Midcast
function midcast(spell,act,arg)
  if spell.skill == 'Enhancing Magic' then
	if spell.name == 'Phalanx' then
		equip(sets.Phalanx)
	end

	if string.find(spell.name,'Protect') then
		equip(sets.Enhancing)
	end
  
  end
  
  if spell.name == 'Flash' or spell.name == "Stun" then
    equip(sets.Enmity)
  end
  --if spell.name == "Repose" or spell.skill == 'Enfeebling Magic' or spell.skill == 'Dark Magic' then
  --  equip(sets.MagicAcc)
  --end
  
end


function aftercast(spell)
  equip_current()
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
	if command == 'C8' then -- Naegling to Burtgang --	
      if Naegling == 'ON' then
		Naegling = 'OFF'
		equip({main="Burtgang"})
		add_to_chat(158,'Burtgang Weapon: [ON]')
		add_to_chat(123,'Naegling Weapon: [OFF]')
	  else
		Naegling = 'ON'
		equip({main="Naegling"})
		add_to_chat(158,'Naegling Weapon: [ON]')
		add_to_chat(123,'Burtgang Weapon: [OFF]')				
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
	equip({main="Burtgang"})
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
