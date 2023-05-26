-- The super duper awesome corsair script
-- by Voliathon

--Took this idea from the previous lua script I got off the net and rolled with it. Mazusu has 7 unique Corsair Camulus's Capes >.<
function CamulusCapes()
	CamulusCape = {}
--    CamulusCape.storetp={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+9','"Store TP"+10'} }
    CamulusCape.ranged_ws={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%'} }	
    CamulusCape.matk={ name="Camulus's Mantle", augments={'Weapon skill damage +10%'} }
    CamulusCape.str_ws={ name="Camulus's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%'} }
    CamulusCape.melee_double_attack={ name="Camulus's Mantle", augments={'"Dbl.Atk."+10','Phys. dmg. taken-10%'} }
	CamulusCape.snapshot={ name="Camulus's Mantle", augments={'"Snapshot"+10'}}
	-- DEX 20 DEX 10 ACC/ATT+20 STP+10 DT-5
end


function get_sets()
	-- Set macro book/set --
    send_command('input /macro book 19;wait .1;input /macro set 1')
	
	-- Binds for switching weapon modes
    send_command('bind !f8 gs c toggle weapon set')
	send_command('bind ^f8 gs c reverse weapon set')
	
	-- Binds for switching gear sets
    send_command('bind !f9 gs c toggle engage set')
	send_command('bind ^f9 gs c reverse engage set')
	
	
	-- Initialize any Camulus capes that we need to use 
	CamulusCapes()

	-- Job Abilities
    sets.TripleShot = set_combine(sets.DamageTaken, { body="Chasseur's Frac +2", hands="Lanun Gants +2", back=CamulusCape.melee_double_attack })
    sets.RandomDeal = set_combine(sets.DamageTaken, { body="Lanun Frac +2" })
    sets.WildCard = set_combine(sets.DamageTaken, { feet="Lanun Bottes +2" })
    sets.SnakeEye = set_combine(sets.DamageTaken, { legs="Lanun Trews +2" })
    sets.Fold = set_combine(sets.DamageTaken, { hands="Lanun Gants +2" })
	
	-- Maximizing Corsair Rolls
	sets.CorsairRoll = {
		main="Rostam",
        -- phantom roll effects +50 (chance to proc job-present-boost)
        head = "Lanun Tricorne +2",
        -- phantom roll +7
        --neck="Regal Necklace",
        -- increased area of effect
        left_ring="Luzaf's Ring",
		--phantom roll +5
		--right_ring="Barataria Ring",
        -- duration +55
        hands="Chasseur's Gants +2",
        -- duration +30
--        back=CamulusCape.matk,
		-- duration +20
		range='Compensator'
    }
	
	-- Specific Rolls
	sets.BlitzersRoll = set_combine(sets.CorsairRoll, { head="Chass. Tricorne +2" })
    sets.AlliesRoll = set_combine(sets.CorsairRoll, { hands="Chasseur's Gants +2" })
    sets.TacticiansRoll = set_combine(sets.CorsairRoll, {body="Chasseur's Frac +2"})
    sets.CastersRoll = set_combine(sets.CorsairRoll, { legs="Chasseur's Culottes +2" })
    sets.CoursersRoll = set_combine(sets.CorsairRoll, { feet="Chass. Bottes +2" })

	
	-- Damage Taken
    sets.DamageTaken = {
		head="Chass. Tricorne +2",
		body="Chasseur's Frac +2",
		hands="Nyame Gauntlets",
		legs="Malignance Tights",
		feet="Nyame Sollerets",
		neck="Loricate Torque +1",
		waist="Sailfi Belt +1",
		left_ear="Hearty Earring",
		right_ear="Sanare Earring",
		left_ring="Chirich Ring +1",
		right_ring="Fortified Ring"
    }
	
   -- +18% runspeed
    sets.idle = set_combine(sets.DamageTaken, { legs="Carmine Cuisses +1" });


	--Quick Draw damage is calculated similar to magic damage by multiplying the following factors in order and flooring after each step.
	--    Base Damage = [(Gun DMG + Bullet DMG) * 2] (Multiple gear listed below add 10 DMG to Base Damage.)
	--    resist
	--    Staff Bonus
	--    Day & Weather
	--    Player MAB / Target MDB
	--    Affinity
    sets.QuickDraw = {
		ammo="Living Bullet",
		head="Laksamana's tricorne +3",
		body="Chasseur's frac +2",
		hands="Chasseur's gants +2",
		legs="Chasseur's Culottes +2",
		feet="Chasseur's Bottes +2",
		neck="Sanctity Necklace",
		waist="Eschan Stone",
		left_ear="Friomisi Earring",
		right_ear="Hecate's Earring",
		left_ring="Dingir Ring",
		right_ring="Kishar ring"
--		back=CamulusCape.storetp
    }
	
	--Leaden Salute     AGI/MAB/WSD  100% AGI
    sets.LeadenSalute = {
		head="Pixie Hairpin +1",
		body="Lanun Frac +2",
		hands="Chasseur's Gants +2",
		legs="Osh. Trousers +1",
		feet={ name="Lanun Bottes +2", augments={'Enhances "Wild Card" effect',}},
		neck="Sanctity Necklace",
		waist="Orpheus's Sash",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Friomisi Earring",
		left_ring="Dingir Ring",
		right_ring="Stikini Ring +1",
		back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%',}}
		--Archon Ring
	}

	--Wildfire    AGI/MAB/WSD
    sets.Wildfire = set_combine(sets.LeadenSalute,{
		-- macc +25, matk +35
		ammo="Living Bullet",
	})

	--Last Stand   AGI/RAtt/RAcc/WSD
	--3/14/2023
	--RACC: 1114  RATT: 1179   WSD: 76%
	--AGI 113 +221
    sets.LastStand = {
		head={ name="Herculean Helm", augments={'AGI+6','CHR+1','Weapon skill damage +7%',}},
		body="Laksamana's frac +3",
		hands="Chasseur's Gants +2",
		legs={ name="Herculean Trousers", augments={'AGI+4','Attack+10','Weapon skill damage +6%','Mag. Acc.+4 "Mag.Atk.Bns."+4',}},
		feet={ name="Herculean Boots", augments={'Enmity-4','"Blood Pact" ability delay -3','Weapon skill damage +8%','Accuracy+20 Attack+20','Mag. Acc.+9 "Mag.Atk.Bns."+9',}},
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Ishvara Earring",
		left_ring="Epaminondas's Ring",
		right_ring="Dingir Ring",
		back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%',}}		
	}

	--Savage Blade  50% STR / 50% MND
	--3/14/2023
	--STR: 102 +183
	--WSD: 66%
    sets.SavageBlade = {
		head={ name="Herculean Helm", augments={'AGI+6','CHR+1','Weapon skill damage +7%',}},
		body="Laksamana's frac +3",
		hands="Chasseur's Gants +2",
		legs={ name="Herculean Trousers", augments={'AGI+4','Attack+10','Weapon skill damage +6%','Mag. Acc.+4 "Mag.Atk.Bns."+4',}},
		feet={ name="Herculean Boots", augments={'Enmity-4','"Blood Pact" ability delay -3','Weapon skill damage +8%','Accuracy+20 Attack+20','Mag. Acc.+9 "Mag.Atk.Bns."+9'}},
		neck="Fotia Gorget",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Ishvara Earring",
		left_ring="Epaminondas's Ring",
		right_ring="Sroda Ring",
		back={ name="Camulus's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}}
	}


	--Snapshot Magic goes here - Precast Magic
    sets.Snapshot = {
		head="Chasseur's tricorne +2",
		body="Oshosi Vest +1",
		hands="Lanun Gants +2",
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

	
	
	--MIDCAST LOGIC OF DOOM
	sets.midcast = {}
    sets.midcast.RA = set_combine(sets.DamageTaken,{
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Clotharius Torque",
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

	
	--Engaged Sets--
	sets.engaged = {}
--				    	    1		     2           3 		   	   		 			4 				   5			6
	sets.engaged.index = {'Movement', 'TP', 'TakingLessPhysicalDamage', 'TakingLessMagicDamage', 'Accuracy', 'RangedAccuracy'}
	engaged_ind = 1 
	
		-- This needs to be the best TP set imaginable. TA, DW, Quadruple shit, Double attack. Really push this shit!
    sets.engaged.TP = set_combine(sets.DamageTaken, {
		head={ name="Dampening Tam", augments={'DEX+10','Accuracy+15','Mag. Acc.+15','Quadruple Attack +3',}},
		body={ name="Herculean Vest", augments={'INT+5','"Dbl.Atk."+2','Quadruple Attack +3','Accuracy+6 Attack+6',}},
		hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
		feet="Malignance Boots",
		neck="Clotharius Torque",
		waist="Windbuffet Belt +1",
		left_ear="Brutal Earring",
		right_ear="Cessance Earring",
		left_ring="Chirich Ring +1",
		right_ring="Epona's Ring",
        back=CamulusCape.melee_double_attack
    })
	
	sets.engaged.TakingLessPhysicalDamage = set_combine(sets.DamageTaken, {})
	sets.engaged.TakingLessMagicDamage = set_combine(sets.DamageTaken, {})
	
	sets.engaged.Accuracy = set_combine(sets.DamageTaken, {hands="Chasseur's Gants +2"})
	sets.engaged.RangedAccuracy = set_combine(sets.DamageTaken, {})
	sets.engaged.Movement = set_combine(sets.idle, {})
	
	
	
	--Weapon Sets--
	sets.weapon = {}
	sets.weapon.index = {'DWSavageCOR','SavageCORShield','Tauret','FomalhautRostamShield','DeathPenaltyRostamShield','FomalhautDivergence','DeathPenaltyDivergence'}
	weapon_ind = 1
	
	sets.weapon.DWSavageCOR = {
		main="Naegling",
		sub="Crepuscular Knife",
		range="Fomalhaut"
	}

	sets.weapon.SavageCORShield = {
		main="Naegling",
		sub="Nusku Shield",
		range="Fomalhaut"
	}
	
	sets.weapon.Tauret = {
		main="Tauret",
		sub="Crepuscular Knife",
		range="Fomalhaut"
	}
	
	sets.weapon.FomalhautRostamShield = {
		main={name="Rostam",bag="Wardrobe 3"},
		sub="Nusku Shield",
		range="Fomalhaut"
	}
	
	sets.weapon.DeathPenaltyRostamShield = {
		main={name="Rostam",bag="Wardrobe 3"},
		sub="Nusku Shield",
		range="Death Penalty"
	}
	
	sets.weapon.FomalhautDivergence = {
		main={name="Rostam",bag="Wardrobe 3"},
		sub="Crepuscular Knife",
		range="Fomalhaut"
	}

	sets.weapon.DeathPenaltyDivergence = {
		main={name="Rostam",bag="Wardrobe 3"},
		sub="Crepuscular Knife",
		range="Death Penalty"
	}	
	
end


--Precast Function
function precast(spell,abil)
	--If pew pew we want to do range stuffs here
	if spell.action_type == 'Ranged Attack' then
		--Regular Pew Pew Action outside of WS - Snapshot Glory
		equip(sets.Snapshot)
	end
	
	if spell.name == "Leaden Salute" then
		equip(sets.LeadenSalute)
	end
	if spell.name == "Last Stand" then
		equip(sets.LastStand)
	end
	if spell.name == "Wildfire" then
		equip(sets.Wildfire)
	end
	

	--Weapon skill lookups
	if spell.name == "Savage Blade" then
		equip(sets.SavageBlade)
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
	end
	if string.find(spell.english,'Roll') or spell.name == "Double-Up" then
		equip(sets.CorsairRoll)
	end
	
	--Corsair Job Abilities
	if spell.name == "Random Deal" then
		equip(sets.RandomDeal)
	end
	if spell.name == "Wild Card" then
		equip(sets.WildCard)
	end
	if spell.name == "Snake Eye" then
		equip(sets.SnakeEye)
	end
	if spell.name == "Fold" then
		equip(sets.Fold)
	end
	if spell.name == "Triple Shot" then
		equip(sets.midcast.RA.TripleShot)
	end
	
end



--Midcast Function
function midcast(spell,abil)
	--TODO - Pop into Midcast.RA logic
	if spell.action_type == 'Ranged Attack' or spell.type == 'WeaponSkill' then
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
	equip({body="Chasseur's Frac +2", hands="Lanun Gants +2"})
  end
end


--This function should only get kicked off when you're engaging.  
--If I want a manual 'Refresh' set or 'MDT' or 'DT' set I can do that in game with equipsets.  
--But I don't want to fuck myself by ignoring the engaged check.
--I'm also deciding not to use a Binding Key to put my in a MDT, PDT, DT, Refresh Set.
--I dunno, I'm just against hitting Ctrl+f# all the time for that shit
function equip_current()
	equip(sets.weapon[sets.weapon.index[weapon_ind]]) 
	equip(sets.engaged[sets.engaged.index[engaged_ind]]) 

end

--Function use for Changing the TP Set.  Ctrl+F9 is your meal ticket
--123 is a red color for the text output
--158 is a green color for the text output
function self_command(command)
	if command =='toggle weapon set' then
		weapon_ind = weapon_ind -1
		if weapon_ind == 0 then weapon_ind = #sets.weapon.index end
		send_command('@input /echo <----- Gear Set changed to '..sets.weapon.index[weapon_ind]..' ----->')
		equip_current()	
	elseif command == 'reverse weapon set' then
		weapon_ind = weapon_ind +1
		if weapon_ind > #sets.weapon.index then weapon_ind = 1 end
		send_command('@input /echo <----- Gear Set changed to '..sets.weapon.index[weapon_ind]..' ----->')
		equip_current()
	elseif command == 'toggle engage set' then
		engaged_ind = engaged_ind -1
		if engaged_ind == 0 then engaged_ind = #sets.engaged.index end
		send_command('@input /echo <----- Gear Set changed to '..sets.engaged.index[engaged_ind]..' ----->')
		equip_current()	
	elseif command == 'reverse engage set' then
		engaged_ind = engaged_ind +1
		if engaged_ind > #sets.engaged.index then engaged_ind = 1 end
		send_command('@input /echo <----- Gear Set changed to '..sets.engaged.index[engaged_ind]..' ----->')
		equip_current()
	end
end


-- Send tell to self if I died --
windower.register_event('status change', function()
	if player.status == 'Dead' then
	send_command('@input /tell <me> Wakies Wakies Baby Girl.  Daddy will not let this stand!')
	end
end)


