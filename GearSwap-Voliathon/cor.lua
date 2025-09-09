-- The super duper awesome corsair script
-- by Voliathon

--Took this idea from the previous lua script I got off the net and rolled with it. Mazusu has 7 unique Corsair Camulus's Capes >.<
function CamulusCapes()
	CamulusCape = {}
--    CamulusCape.storetp={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+9','"Store TP"+10'} }
    CamulusCape.ranged_ws={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%'} }	
    CamulusCape.matk={ name="Camulus's Mantle", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Magic Damage +10','"Mag.Atk.Bns."+10'}}
    CamulusCape.str_ws={ name="Camulus's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%'} }
    CamulusCape.melee_double_attack={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%'} }
	CamulusCape.snapshot={ name="Camulus's Mantle", augments={'"Snapshot"+10'}}
	-- DEX 20 DEX 10 ACC/ATT+20 STP+10 DT-5
end


function get_sets()
	-- Set macro book/set --
    send_command('input /macro book 19;wait .1;input /macro set 1')
	
	-- Binds for modes
	-- Toggle Weapon sets | Ctrl F8 or Alt F8
	send_command('bind ^f8 gs c C8') 
	send_command('bind !f8 gs c reverse Weapon set')

	-- Toggle Engaged sets | Ctrl F9 or Alt F9
	send_command('bind ^f9 gs c C9')
	send_command('bind !f9 gs c reverse Engaged set')

	-- Toggle Idle sets | Ctrl F10 or Alt F10
	send_command('bind !f10 gs c C10') 
	send_command('bind ^f10 gs c reverse Idle set')
	
	-- Initialize any Camulus capes that we need to use 
	CamulusCapes()

	-- Job Abilities
    sets.TripleShot = set_combine(sets.DamageTaken, { body="Chasseur's Frac +1", hands="Lanun Gants +1", back=CamulusCape.melee_double_attack })
    sets.RandomDeal = set_combine(sets.DamageTaken, { body="Lanun Frac +1" })
    sets.WildCard = set_combine(sets.DamageTaken, { feet="Lanun Bottes +1" })
    sets.SnakeEye = set_combine(sets.DamageTaken, { legs="Lanun Trews +1" })
    sets.Fold = set_combine(sets.DamageTaken, { hands="Lanun Gants +1" })
	
	-- Maximizing Corsair Rolls
	sets.CorsairRoll = {
		main="Rostam",
        -- phantom roll effects +50 (chance to proc job-present-boost)
        head = "Lanun Tricorne +1",
        -- phantom roll +7
        --neck="Regal Necklace",
        -- increased area of effect
        left_ring="Luzaf's Ring",
		--phantom roll +5
		--right_ring="Barataria Ring",
        -- duration +55
        hands="Chasseur's Gants +2",
        -- duration +30
        back=CamulusCape.str_ws,
		-- duration +20
		range='Compensator'
    }
	
	-- Specific Rolls
	sets.BlitzersRoll = set_combine(sets.CorsairRoll, { head="Chass. Tricorne +2" })
    sets.AlliesRoll = set_combine(sets.CorsairRoll, { hands="Chasseur's Gants +2" })
    sets.TacticiansRoll = set_combine(sets.CorsairRoll, {body="Chasseur's Frac +1"})
    sets.CastersRoll = set_combine(sets.CorsairRoll, { legs="Chasseur's Culottes +1" })
    sets.CoursersRoll = set_combine(sets.CorsairRoll, { feet="Chass. Bottes +1" })

	
	-- Damage Taken
    sets.DamageTaken = {
		head="Chass. Tricorne +2",
		body="Chasseur's Frac +1",
		hands="Nyame Gauntlets",
		legs="Malignance Tights",
		feet="Nyame Sollerets",
		neck="Null loop",
		waist="Sailfi Belt +1",
		left_ear="Hearty Earring",
		right_ear="Sanare Earring",
		left_ring={name="Chirich Ring +1", bag="Wardrobe 4"},
		right_ring="Fortified Ring"
    }
	

	--Quick Draw damage is calculated similar to magic damage by multiplying the following factors in order and flooring after each step.
	--    Base Damage = [(Gun DMG + Bullet DMG) * 2] (Multiple gear listed below add 10 DMG to Base Damage.)
	--    resist
	--    Staff Bonus
	--    Day & Weather
	--    Player MAB / Target MDB
	--    Affinity
    sets.QuickDraw = {
		ammo="Living Bullet",
		head="Laksamana's tricorne +1",
		body="Chasseur's Frac +1",
		hands="Chasseur's gants +2",
		legs="Chasseur's Culottes +1",
		feet="Chasseur's Bottes +2",
		neck="Sanctity Necklace",
		waist="Orpheus's Sash",
		left_ear="Friomisi Earring",
		right_ear="Hecate's Earring",
		left_ring="Dingir Ring",
		right_ring="Kishar ring"
--		back=CamulusCape.storetp
    }
	
    sets.QuickDrawDark = {
		ammo="Living Bullet",
		head="Pixie Hairpin +1",
		body="Chasseur's Frac +1",
		hands="Chasseur's gants +2",
		legs="Chasseur's Culottes +1",
		feet="Chasseur's Bottes +2",
		neck="Sanctity Necklace",
		waist="Orpheus's Sash",
		left_ear="Friomisi Earring",
		right_ear="Hecate's Earring",
		left_ring="Dingir Ring",
		right_ring="Kishar ring"
--		back=CamulusCape.storetp
    }	
	
	--Snapshot Magic goes here - Precast Magic
    sets.Snapshot = {
		head="Chasseur's tricorne +2",
		body="Oshosi Vest +1",
		hands="Lanun Gants +1",
		legs="Laksamana's Trews +3",
		feet="Meg. Jam. +2",
		neck="Clotharius Torque",
		waist="K. Kachina Belt +1",
		left_ear="Telos Earring",
		right_ear="Enervating Earring",
		left_ring="Dingir Ring",
		right_ring="Hetairoi Ring",
		back=CamulusCape.snapshot
    }

	
	--Engaged Sets--
	sets.engaged = {}
	sets.engaged.index = {'TP', 'Tank', 'Accuracy'}
	engaged_ind = 1 
	
		-- This needs to be the best TP set imaginable. TA, DW, Quadruple shit, Double attack. Really push this shit!
    sets.engaged.TP = {
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20'}},
		legs="Malignance tights",
		feet="Malignance Boots",
		neck="Clotharius Torque",
		waist="Windbuffet Belt +1",
		left_ear="Brutal Earring",
		right_ear="Cessance Earring",
		left_ring={name="Chirich Ring +1", bag="Wardrobe 4"},
		right_ring="Epona's Ring",
        back=CamulusCape.melee_double_attack
    }
	
	sets.engaged.Tank = {
		head="Chass. Tricorne +2",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance tights",
		feet="Malignance Boots",
		neck="Null loop",
		waist="Null belt",
		left_ear="Hearty Earring",
		right_ear="Infused Earring",
		left_ring={name="Chirich Ring +1", bag="Wardrobe 4"},
		right_ring={name="Chirich Ring +1", bag="Wardrobe 5"},
        back=CamulusCape.melee_double_attack
	}
	
	sets.engaged.Accuracy = {
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Chasseur's Gants +2",
		legs="Malignance tights",
		feet="Malignance Boots",
		neck="Null loop",
		waist="Null belt",
		left_ear="Crep. Earring",
		right_ear="Odr Earring",
		left_ring={name="Chirich Ring +1", bag="Wardrobe 4"},
		right_ring={name="Chirich Ring +1", bag="Wardrobe 5"},
		back=CamulusCape.melee_double_attack
	}


	-- Idle Sets Toggle-- Alt+F10 or Ctrl+F10
	sets.idle = {}
	sets.idle.index = {'PDTMovement', 'Craft'}
	idle_ind = 1      
	
	sets.idle.PDTMovement = set_combine(sets.engaged.Tank, {
		left_ring="Shneddick ring"
	})

	sets.idle.Craft = set_combine(sets.engaged.Movement, {
		main="Caduceus",
		sub="Br. escutcheon",
		body="Alchemist's smock",
		neck="Alchemist's torque",
		left_ring="Artificer's Ring",
		right_ring="Craftmaster's ring",
		waist="Alchemist's belt"
	})
	

	--MIDCAST LOGIC OF DOOM
	sets.midcast = {}
    sets.midcast.RA = set_combine(sets.DamageTaken,{
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Null loop",
		waist="K. Kachina Belt +1",
		left_ear="Telos Earring",
		right_ear="Enervating Earring",
		left_ring="Dingir Ring",
		right_ring="Hetairoi Ring"
	})

    sets.midcast.RA.TripleShot = set_combine(sets.midcast.RA,{
		head="Oshosi Mask +1",
		body="Oshosi Vest +1",
		hands="Oshosi Gloves +1",
		legs="Osh. Trousers +1",
		feet="Osh. Leggings +1"
	})

	
	--Leaden Salute     AGI/MAB/WSD  100% AGI
    sets.LeadenSalute = {
		head="Pixie Hairpin +1",
		body="Lanun Frac +1",
		hands="Nyame Gauntlets",
		legs="Chasseur's Culottes +1",
		feet={ name="Lanun Bottes +1", augments={'Enhances "Wild Card" effect',}},
		neck="Sanctity Necklace",
		waist="Orpheus's Sash",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Friomisi Earring",
		left_ring="Dingir Ring",
		right_ring="Stikini Ring +1",
		back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%',}}
		--Archon Ring
	}
	
	sets.LeadenSaluteHachi = {
		head="Pixie Hairpin +1",
		body="Lanun Frac +1",
		hands="Nyame gauntlets",
		legs="Nyame Flanchard",
		feet={ name="Lanun Bottes +1", augments={'Enhances "Wild Card" effect',}},
		neck="Sanctity Necklace",
		waist="Hachirin-no-Obi",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Friomisi Earring",
		left_ring="Dingir Ring",
		right_ring="Epaminondas's Ring",
		back=CamulusCape.agi_ws
	}	

	--Wildfire    AGI/MAB/WSD
    sets.Wildfire = set_combine(sets.LeadenSalute,{
		-- macc +25, matk +35
		ammo="Living Bullet",
	})

	--Last Stand   AGI/RAtt/RAcc/WSD
    sets.LastStand = {
		head={ name="Herculean Helm", augments={'Magic dmg. taken -3%','CHR+2','Weapon skill damage +8%','Mag. Acc.+4 "Mag.Atk.Bns."+4'}},
		body="Laksamana's frac +3",
		hands="Chasseur's Gants +2",
		legs={ name="Herculean Trousers", augments={'AGI+4','Attack+10','Weapon skill damage +6%','Mag. Acc.+4 "Mag.Atk.Bns."+4',}},
		feet={ name="Lanun Bottes +1", augments={'Enhances "Wild Card" effect',}},
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Ishvara Earring",
		left_ring="Epaminondas's Ring",
		right_ring="Dingir Ring",
		back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%',}}		
	}

	--Savage Blade  50% STR / 50% MND
    sets.SavageBlade = {
		ammo={ name="Coiste Bodhar", augments={'Path: A',}},
		head={ name="Nyame Helm", augments={'Path: B',}},
		body="Nyame mail",
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Fotia Gorget",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Brutal Earring",
		right_ear="Cessance Earring",
		left_ring="Epaminondas's Ring",
		right_ring="Sroda Ring",
		back={ name="Camulus's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}}
	}

	--Aeolian Edge 40% DEX / 40% INT
	sets.AeolianEdge = {
		head="Nyame Helm",
		body="Lanun Frac +1",
		hands="Nyame Gauntlets",
		legs="Chasseur's Culottes +1",
		feet={ name="Lanun Bottes +1", augments={'Enhances "Wild Card" effect',}},
		neck="Sanctity Necklace",
		waist="Orpheus's Sash",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Friomisi Earring",
		left_ring="Dingir Ring",
		right_ring="Epaminondas's Ring",
		back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%',}}		
	}
	
	
	--Weapon Sets--
	sets.weapon = {}
	sets.weapon.index = {'DWSavageCOR','SavageCORShield','Tauret','DeathPenaltyRostamShield','DeathPenaltyDivergence'}
	weapon_ind = 1
	
	sets.weapon.DWSavageCOR = {
		main="Naegling",
		sub="Crepuscular Knife",
		range="Ataktos"
	}

	sets.weapon.SavageCORShield = {
		main="Naegling",
		sub="Nusku Shield",
		range="Ataktos"
	}
	
	sets.weapon.Tauret = {
		main="Tauret",
		sub="Crepuscular Knife",
		range="Ataktos"
	}
	
	sets.weapon.DeathPenaltyRostamShield = {
		main="Rostam",
		sub="Nusku Shield",
		range="Death Penalty"
	}
	
	sets.weapon.DeathPenaltyDivergence = {
		main="Rostam",
		sub="Crepuscular Knife",
		range="Death Penalty"
	}	
	
end


--Precast Function
function precast(spell,abil)
	--If pew pew we want to do range stuffs here
	if spell.name == "Light Shot" or "Fire Shot" or "Water Shot" or "Thunder Shot" or "Earth Shot" or "Wind Shot" or "Ice Shot" then 
		equip(sets.QuickDraw)
	end
	
	if spell.name == "Dark shot" then
		equip(sets.QuickDrawDark)
	end
	
	if spell.action_type == 'Ranged Attack' then
		--Regular Pew Pew Action outside of WS - Snapshot Glory
		equip(sets.Snapshot)
	end

	--Corsair Weapon Skills
    if spell.type == 'WeaponSkill' then	
		if spell.english == "Leaden Salute" and (world.weather_element == "Dark" or world.day_element == "Dark" or world.weather_element == "Darkness") then 
			add_to_chat(125, "Hachirin-no-Obi has been equipped for this WS")
			equip(sets.LeadenSaluteHachi)
		elseif spell.english == "Leaden Salute" and spell.target.distance < 15 then 
			equip(sets.LeadenSalute)
		elseif spell.english == "Leaden Salute" then
			set_combine(sets.LeadenSalute,{ waist = "Eschan stone"})
		end

		if spell.name == "Last Stand" then
			equip(sets.LastStand)
		elseif spell.name == "Wildfire" then
			equip(sets.Wildfire)
		elseif spell.name == "Savage Blade" then
			equip(sets.SavageBlade)
		else
			equip(sets.SavageBlade)
		end
	end	

	--Corsair Rolls	
	if string.find(spell.english,'Blitzer') then
		equip(sets.BlitzersRoll)
	elseif string.find(spell.english,'Allies') then
		equip(sets.AlliesRoll)
	elseif string.find(spell.english,'Tactician') then
		equip(sets.TacticiansRoll)
	elseif string.find(spell.english,'Caster') then
		equip(sets.CastersRoll)
	elseif string.find(spell.english,'Courser') then
		equip(sets.CoursersRoll)
	elseif string.find(spell.english,'Roll') or spell.name == "Double-Up" then
		equip(sets.CorsairRoll)
	end
	
	--Corsair Job Abilities
	if spell.type == 'JobAbility' then
		if spell.name == "Random Deal" then
			equip(sets.RandomDeal)
		elseif spell.name == "Wild Card" then
			equip(sets.WildCard)
		elseif spell.name == "Snake Eye" then
			equip(sets.SnakeEye)
		elseif spell.name == "Fold" then
			equip(sets.Fold)
		elseif spell.name == "Triple Shot" then
			equip(sets.midcast.RA.TripleShot)
		end
	end
end


--Midcast Function
function midcast(spell,abil)
	if spell.action_type == 'Ranged Attack' then
		if (buffactive['Triple Shot']) then
			equip(sets.midcast.RA.TripleShot)
		else
			equip(sets.midcast.RA)
		end
	end
end


--Aftercast Function
function aftercast(spell)
  equip_current()
  --NOTE - Something to think about...
  --This could be an issue if you need DT while Triple Shot is up. Frac+2 is fine. 
  --I'm taking the stance I'd rather see this gear when Triple Shot is up as compared to not seeing it
  if (buffactive['Triple Shot']) then
	equip({body="Chasseur's Frac +1", hands="Lanun Gants +1"})
  end
end


function equip_current()
	equip_weapon()
	status_change()
end


function equip_weapon()
	equip(sets.weapon[sets.weapon.index[weapon_ind]])
end


-- Only want to handle engaged vs idle for this play style
function status_change()
	if player.status == 'Engaged' then
		equip(sets.engaged[sets.engaged.index[engaged_ind]])
	elseif player.status == 'Idle' then
		equip(sets.idle[sets.idle.index[idle_ind]])
	end
end
	

--Alt+F8 or Ctrl+F8  --> Toggle WEAPONS
--Alt+F9 or Ctrl+F9  --> Toggle ENGAGED Equipment
--Alt+F10 or Ctrl+F10  --> Toggle IDLE Equipment
function self_command(command)
	if command == 'C8' then 
		weapon_ind = weapon_ind +1
		if weapon_ind > #sets.weapon.index then weapon_ind = 1 end
		send_command('@input /echo <----- WEAPONS changed to '..sets.weapon.index[weapon_ind]..' ----->')
		equip_weapon()
	elseif command == 'reverse Weapon set' then 
		weapon_ind = weapon_ind -1
		if weapon_ind == 0 then weapon_ind = #sets.weapon.index end
		send_command('@input /echo <----- WEAPONS changed to '..sets.weapon.index[weapon_ind]..' ----->')
		equip_weapon()
	elseif command == 'C9' then
		engaged_ind = engaged_ind +1
		if engaged_ind > #sets.engaged.index then engaged_ind = 1 end
		send_command('@input /echo <----- ENGAGED changed to '..sets.engaged.index[engaged_ind]..' ----->')
		equip_current()
	elseif command == 'reverse Engaged set' then
		engaged_ind = engaged_ind -1
		if engaged_ind == 0 then engaged_ind = #sets.engaged.index end
		send_command('@input /echo <----- ENGAGED changed to '..sets.engaged.index[engaged_ind]..' ----->')
		equip_current()
	elseif command == 'C10' then
		idle_ind = idle_ind +1
		if idle_ind > #sets.idle.index then idle_ind = 1 end
		send_command('@input /echo <----- IDLE changed to '..sets.idle.index[idle_ind]..' ----->')
		equip_current()
	elseif command == 'reverse Idle set' then
		idle_ind = idle_ind -1
		if idle_ind == 0 then idle_ind = #sets.idle.index end
		send_command('@input /echo <----- IDLE changed to '..sets.idle.index[idle_ind]..' ----->')
		equip_current() 
	end	 
end


-- Send tell to self if I died --
windower.register_event('status change', function()
	if player.status == 'Dead' then
		send_command('@input /tell <me> Wakies Voliathon! You died.')
	end
end)
