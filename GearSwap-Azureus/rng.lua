-- The Ranger FFXI Script of Cool
-- by Voliathon

--Took this idea from the previous lua script I got off the net and rolled with it.
function BelenusCapes()
	BelenusCape = {}
--    BelenusCape.storetp={ name="Belenus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+9','"Store TP"+10'} }
    BelenusCape.ranged_ws={ name="Belenus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%'} }	
--    BelenusCape.matk={ name="Belenus's Mantle", augments={'Weapon skill damage +10%'} }
--    BelenusCape.str_ws={ name="Belenus's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%'} }
    BelenusCape.melee_double_attack={ name="Belenus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%'} }
	BelenusCape.snapshot={ name="Belenus's Mantle", augments={'"Snapshot"+10'}}
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
	
	
	-- Initialize any Belenus capes that we need to use 
	BelenusCapes()

	-- Job Abilities
    sets.EagleEyeShot = {legs="Arcadian Braccae +1"}
	sets.Scavenge = {feet="Orion Socks +1"}
	sets.Shadowbind = {hands="Orion Bracers +1"}
	sets.Camouflage = {body="Orion Jerkin +1"}
	sets.Sharpshot = {legs="Orion Braccae +1"}
	sets.Barrage = {hands="Orion Bracers +1"}
	sets.UnlimitedShot = {feet="Amini Bottillons +2"}
	-- Important about Double Shot...
	-- Even though Double Shot is a Job Ability, I'm covering it in the midshot for Ranged Attacks.
	-- Refer to sets.midshot.RA.DoubleShot
	sets.VelocityShot = {body="Amini Caban +2", back=BelenusCape.ranged_ws}
	sets.BountyShot = {hands="Amini Glovelettes +2"}
	sets.DecoyShot = {}
	sets.Overkill = {}
	sets.HoverShot = {}
	
	--
    sets.Coronach = {
		back={ name="Belenus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%',}}
	}

	--Wildfire    AGI/MAB/WSD
    sets.Wildfire = set_combine(sets.LeadenSalute,{
		-- macc +25, matk +35
	})

	--Last Stand   AGI/RAtt/RAcc/WSD
    sets.LastStand = {
		back={ name="Belenus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%',}}		
	}

	--Savage Blade  50% STR / 50% MND
    sets.SavageBlade = {

	}


	-- Preshot
	-- Snapshot caps at 70% from any combination of merits, gear, and/or Flurry/Flurry II. 
	-- Once snapshot is capped put Rapid Shot where you can.
    -- You get 10% from merits.
    sets.Snapshot = {
		head="Orion Beret +3",
		body="Amini Caban +2",
		hands="Carmine finger gauntlets +1",
		legs="Laksamana's Trews +3",
		feet="Meg. Jam. +2",
		neck="Clotharius Torque",
		waist="K. Kachina Belt +1",
		left_ear="Telos Earring",
		right_ear="Enervating Earring",
		left_ring="Dingir Ring",
		right_ring="Hetairoi Ring",
		back=BelenusCape.snapshot
    }
	
	--Flurry I gives 15% Snapshot
	sets.SnapshotFlurryI = {}
	
	--Flurry II gives 30% Snapshot
	--TODO add logic in preshot to determine if Flurry II is present.
	-- It only checks for flurry in general
	sets.SnapshotFlurryII = {}

	
	--Engaged Sets--
	sets.engaged = {}
--				    	    1		     2           3 		   	   		 			4 				   5			6
	sets.engaged.index = {'Movement', 'TP', 'TakingLessPhysicalDamage', 'TakingLessMagicDamage', 'Accuracy', 'RangedAccuracy'}
	engaged_ind = 1 
	
		-- This needs to be the best TP set imaginable. TA, DW, Quadruple shit, Double attack. Really push this shit!
    sets.engaged.TP = set_combine(sets.engaged.TakingLessPhysicalDamage, {
		head={ name="Dampening Tam", augments={'DEX+10','Accuracy+15','Mag. Acc.+15','Quadruple Attack +3'}},
		body={ name="Herculean Vest", augments={'INT+5','"Dbl.Atk."+2','Quadruple Attack +3','Accuracy+6 Attack+6'}},
		hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20'}},
		legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6'}},
		feet="Malignance Boots",
		neck="Clotharius Torque",
		waist="Windbuffet Belt +1",
		left_ear="Brutal Earring",
		right_ear="Cessance Earring",
		left_ring="Chirich Ring +1",
		right_ring="Epona's Ring",
        back=BelenusCape.melee_double_attack
    })
	
	sets.engaged.TakingLessPhysicalDamage = set_combine(sets.engaged.TakingLessPhysicalDamage, {
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck={ name="Loricate Torque +1", augments={'Path: A',}},
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Hearty Earring",
		right_ear="Genmei Earring",
		left_ring="Defending Ring",
		right_ring="Fortified Ring",
		back=BelenusCape.melee_double_attack
	})
	
	
	sets.engaged.TakingLessMagicDamage = set_combine(sets.engaged.TakingLessPhysicalDamage, {
		head="Nyame Helm",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Malignance Boots",
		neck={ name="Loricate Torque +1", augments={'Path: A',}},
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Hearty Earring",
		right_ear="Genmei Earring",
		left_ring="Defending Ring",
		right_ring="Fortified Ring",
		back=BelenusCape.melee_double_attack		
	})
	
	sets.engaged.Accuracy = set_combine(sets.engaged.TakingLessPhysicalDamage, {
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Sanctity Necklace",
		waist="Grunfeld Rope",
		left_ear="Telos Earring",
		right_ear="Crep. Earring",
		left_ring="Chirich Ring +1",
		right_ring="Chirich Ring +1",
		back=BelenusCape.melee_double_attack	
	})
	
	sets.engaged.RangedAccuracy = set_combine(sets.engaged.TakingLessPhysicalDamage, {
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Scout's Gorget +2",
		waist="K. Kachina Belt +1",
		left_ear="Telos Earring",
		right_ear="Crep. Earring",
		left_ring="Dingir Ring",
		right_ring="Chirich Ring +1",
		back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%'}}
	})
	
	sets.engaged.Movement = set_combine(sets.engaged.TakingLessPhysicalDamage, {legs="Carmine Cuisses +1"})
	
	--MIDSHOT LOGIC OF DOOM
	sets.midshot = {}
    sets.midshot.RA = set_combine(sets.engaged.TakingLessPhysicalDamage,{
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

    sets.midshot.RA.DoubleShot = set_combine(sets.midshot.RA,{
		head="Oshosi Mask +1",
		body="Oshosi Vest +1",
		hands="Oshosi Gloves +1",
		legs="Osh. Trousers +1",
		feet="Osh. Leggings +1"
	})	
	
	
	--Weapon Sets--
	sets.weapon = {}
	sets.weapon.index = {'DWSavageRNG','SavageRNGShield','TauretCrep','FomalhautPerunShield','AnnihilatorPerunShield','FomalhautDivergence','AnnihilatorDivergence'}
	weapon_ind = 1
	
	sets.weapon.DWSavageRNG = {
		main="Naegling",
		sub="Crepuscular Knife",
		range="Ataktos"
	}

	sets.weapon.SavageRNGShield = {
		main="Naegling",
		sub="Nusku Shield",
		range="Ataktos"
	}
	
	sets.weapon.TauretCrep = {
		main="Tauret",
		sub="Crepuscular Knife",
		range="Ataktos"
	}
	
	sets.weapon.FomalhautPerunShield = {
		main="Perun +1",
		sub="Nusku Shield",
		range="Fomalhaut"
	}
	
	sets.weapon.AnnihilatorPerunShield = {
		main="Perun +1",
		sub="Nusku Shield",
		range="Annihilator"
	}
	
	sets.weapon.FomalhautDivergence = {
		main="Perun +1",
		sub="Crepuscular Knife",
		range="Fomalhaut"
	}

	sets.weapon.AnnihilatorDivergence = {
		main="Perun +1",
		sub="Crepuscular Knife",
		range="Annihilator"
	}	
	
end


--Precast Function
function precast(spell,abil)
	
	--embrava is 25 snapshot
	--If pew pew we want to do range stuffs here
	if spell.action_type == 'Ranged Attack' then
		--Regular Pew Pew Action outside of WS - Snapshot Glory
		if buffactive['Flurry'] then
			equip(sets.SnapshotFlurryI)
		else
			equip(sets.Snapshot)
		end
	end
	
	if spell.name == "Coronach" then
		equip(sets.Coronach)
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
	
	if spell.type == 'WeaponSkill' then
		equip(sets.LastStand)
	end

	--Ranger Job Abilities
	if spell.name == "Eagle Eye Shot" then
		equip(sets.EagleEyeShot)
	end
	if spell.name == "Scavenge" then
		equip(sets.Scavenge)
	end
	if spell.name == "Shadowbind" then
		equip(sets.Shadowbind)
	end
	if spell.name == "Camouflage" then
		equip(sets.Camouflage)
	end
	if spell.name == "Sharpshot" then
		equip(sets.Sharpshot)
	end
	if spell.name == "Barrage" then
		equip(sets.Barrage)
	end
	if spell.name == "Unlimited Shot" then
		equip(sets.UnlimitedShot)
	end	
	if spell.name == "Velocity Shot" then
		equip(sets.VelocityShot)
	end
	if spell.name == "Double Shot" then
		equip(sets.midshot.RA.DoubleShot)
	end
	if spell.name == "Bounty Shot" then
		equip(sets.BountyShot)
	end
	if spell.name == "Decoy Shot" then
		equip(sets.DecoyShot)
	end
	if spell.name == "Overkill" then
		equip(sets.Overkill)
	end
	if spell.name == "Hover Shot" then
		equip(sets.HoverShot)
	end
	
end



--Midcast Function <-- This shit is really your midshot function
function midcast(spell,abil)
	if spell.action_type == 'Ranged Attack' then
		if (buffactive['Double Shot']) then
			equip(sets.midshot.RA.DoubleShot)
		else
			equip(sets.midshot.RA)
		end
	end
end




--Aftercast Function
function aftercast(spell)
  equip_current()
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


