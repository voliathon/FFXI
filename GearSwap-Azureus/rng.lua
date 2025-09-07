-- The Ranger FFXI Script of Cool
-- by Voliathon

--Took this idea from the previous lua script I got off the net and rolled with it.
function BelenusCapes()
	BelenusCape = {}
    BelenusCape.ranged_ws={ name="Belenus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%'} }
	BelenusCape.snapshot = {}
	BelenusCape.double_atk={ name="Belenus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%'} }
end

function get_sets()
	-- Set macro book/set --
    send_command('input /macro book 9;wait .1;input /macro set 1')
	
	-- Binds for modes
	-- Toggle Weapon sets | Ctrl F8 or Alt F8
	send_command('bind !f8 gs c C8') 
	send_command('bind ^f8 gs c reverse Weapon set')

	-- Toggle Engaged sets | Ctrl F9 or Alt F9
	send_command('bind !f9 gs c C9')
	send_command('bind ^f9 gs c reverse Engaged set')

	-- Toggle Idle sets | Ctrl F10 or Alt F10
	send_command('bind !f10 gs c C10') 
	send_command('bind ^f10 gs c reverse Idle set')
		
	-- Initialize any Belenus capes that we need to use 
	BelenusCapes()

	-- Job Abilities
    sets.EagleEyeShot = {legs="Arcadian Braccae +4"}
	sets.Scavenge = {feet="Orion Socks +1"}
	sets.Shadowbind = {hands="Orion Bracers +4"}
	sets.Camouflage = {body="Orion Jerkin +2"}
	sets.Sharpshot = {legs="Orion Braccae +3"}
	sets.Barrage = {hands="Orion Bracers +4"}
	sets.UnlimitedShot = {feet="Amini Bottillons +3"}
	-- Important about Double Shot...
	-- Even though Double Shot is a Job Ability, I'm covering it in the midshot for Ranged Attacks.
	-- Refer to sets.midshot.RA.DoubleShot
	sets.VelocityShot = {body="Amini Caban +3", back=BelenusCape.ranged_ws}
	sets.BountyShot = {hands="Amini Glove. +3"}
	sets.FlashShot = {hands="Arcadian bracers +3"}
	sets.StealthShot = {feet="Arcadian socks +4"}

	-- Preshot
	-- Snapshot caps at 70% from any combination of merits, gear, and/or Flurry/Flurry II. 
	-- Once snapshot is capped put Rapid Shot where you can.
    -- You get 10% from merits.
	-- When velocity shot is up, the total aiming delay reduction is 25%  Just from Velocity shot
	-- Baby Bear already has 10% Snapshot merits
    sets.Snapshot = {
		head="Orion Beret +4", --rapid shot 18
		body="Amini Caban +3", --velocity shot 11
		hands="Carmine finger gauntlets +1", --rapid shot 11 snapshot 8
		legs="Orion Braccae +3", --rapid shot 16 snapshot 15
		feet="Arcadian socks +4", --Rapidshot 10
		neck="Scout's gorget +2", --snapshot 4
		waist="Yemaya Belt",
		left_ear="Telos Earring",
		right_ear="Enervating Earring",
		left_ring="Dingir Ring",
		right_ring="Cacoethic Ring +1",
		back={ name="Belenus's Cape", augments={'"Snapshot"+10'}}
    }
	
	sets.VelocityShotActive = set_combine(sets.Snapshot,{
		body="Amini Caban +3", --Velocity Shot 11%
    })
	

	--Engaged Sets--
	sets.engaged = {}
--				    	    1		    2      3 		 4 			   5
	sets.engaged.index = {'Movement', 'TP', 'Tank', 'Accuracy', 'RangedAccuracy'}
	engaged_ind = 1 
	
	sets.engaged.Tank = {
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Amini Glove. +3",
		legs="Amini Bragues +3",
		feet="Malignance Boots",
		neck="Null loop",
		waist="Null belt",
		left_ear="Sherida Earring",
		right_ear="Amini Earring +1",
		left_ring="Defending Ring",
		right_ring="Fortified Ring",
		back=BelenusCape.double_atk
	}

    sets.engaged.TP = set_combine(sets.engaged.Tank, {
		head={ name="Dampening Tam", augments={'DEX+10','Accuracy+15','Mag. Acc.+15','Quadruple Attack +3'}},
		body="Malignance Tabard",
		hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20'}},
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Null loop",
		waist="Windbuffet Belt +1",
		left_ear="Sherida Earring",
		right_ear="Amini Earring +1",
		left_ring="Chirich Ring +1",
		right_ring="Epona's Ring",
        back=BelenusCape.double_atk
    })
	
	sets.engaged.Accuracy = set_combine(sets.engaged.Tank, {
		head="Malignance Chapeau",
		body="Amini Caban +3",
		hands="Amini Glove. +3",
		legs="Amini Bragues +3",
		feet="Amini Bottillons +3",
		neck="Null loop",
		waist="Null belt",
		left_ear="Telos Earring",
		right_ear="Amini Earring +1",
		left_ring={name="Chirich Ring +1", bag="Wardrobe 3"},
		right_ring={name="Chirich Ring +1", bag="Wardrobe 4"},
		back="Null shawl"	
	})
	
	sets.engaged.RangedAccuracy = set_combine(sets.engaged.Tank, {
		head="Malignance Chapeau",
		body="Amini Caban +3",
		hands="Amini Glove. +3",
		legs="Amini Bragues +3",
		feet="Amini Bottillons +3",
		neck="Scout's Gorget +2",
		waist="K. Kachina Belt +1",
		left_ear="Telos Earring",
		right_ear="Crep. Earring",
		left_ring="Dingir Ring",
		right_ring="Cacoethic Ring +1",
		back="Null shawl"
	})
	
	sets.engaged.Movement = set_combine(sets.engaged.Tank, {
		left_ring="Shneddick Ring"
	})
	
	
	-- Idle Sets Toggle-- Alt+F10 or Ctrl+F10
	sets.idle = {}
	sets.idle.index = {'PDTMovement', 'Craft', 'Fishing'}
	idle_ind = 1  
	
	sets.idle.PDTMovement = set_combine(sets.engaged.Movement, {})

	sets.idle.Craft = set_combine(sets.engaged.Movement, {
		hands="Goldsmith's Cuffs",
		left_ring="Craftmaster's Ring",
		right_ring="Craftkeeper's ring",
		back="Shaper's Shawl"
	})
	
	sets.idle.Fishing = {
		hands="Fisherman's cuffs",
		left_ring="Shneddick Ring",
		right_ring="Duck ring",
		waist="Fisherman's ring",
		range="Ebisu Fishing rod"
	}
		
	
	--MIDSHOT LOGIC OF DOOM
	sets.midshot = {}
    sets.midshot.RA = set_combine(sets.engaged.Tank,{
		head="Arcadian Beret +4",
		body="Amini Caban +3",
		hands="Amini Glove. +3",
		legs="Amini Bragues +3",
		feet="Ikenga's Clogs",
		neck={ name="Scout's Gorget +2", augments={'Path: A',}},
		waist="Yemaya Belt",
		left_ear="Telos Earring",
		right_ear="Crep. Earring",
		left_ring="Dingir Ring",
		right_ring="Cacoethic Ring +1",
		back="Null Shawl"
	})

    sets.midshot.RA.DoubleShot = set_combine(sets.midshot.RA,{
		head="Oshosi Mask +1",
		body="Arcadian jerkin +4",
		hands="Oshosi Gloves +1",
		legs="Osh. Trousers +1",
		feet="Osh. Leggings +1"
	})	
	
	--WeaponSkills
	sets.Coronach = {
		head="Orion Beret +4",
		body="Amini Caban +3",
		hands="Nyame Gauntlets",
		legs="Arcadian Braccae +4",
		feet="Amini Bottillons +3",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250'}},
		right_ear="Amini Earring +1",
		left_ring="Dingir Ring",
		right_ring="Epaminondas's Ring",
		back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%'}}
	}

	--Wildfire    AGI/MAB/WSD
    sets.Wildfire = {
		head="Nyame Helm",
		body="Nyame mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck="Scout's Gorget +2",
		waist="Fotia belt",
		left_ear="Crep. Earring",
		right_ear="Friomisi Earring",
		left_ring="Dingir Ring",
		right_ring="Epaminondas's Ring",
		back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%',}}	
	}

	sets.Wildfire.Obi = set_combine(sets.Wildfire, {waist="Hachirin-no-Obi"})	
	sets.Wildfire.Sash = set_combine(sets.Wildfire, {waist="Orpheus's Sash"})

	--Last Stand   AGI/RAtt/RAcc/WSD
    sets.LastStand = {
		head="Orion Beret +4",
		body="Amini Caban +3",
		hands="Nyame Gauntlets",
		legs="Arcadian Braccae +4",
		feet="Amini Bottillons +3",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250'}},
		right_ear="Ishvara Earring",
		left_ring="Dingir Ring",
		right_ring="Epaminondas's Ring",
		back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%'}}
	}

	--Savage Blade  50% STR / 50% MND
    sets.SavageBlade = {
		head="Orion Beret +4",
		body="Nyame mail",
		hands="Nyame Gauntlets",
		legs="Arcadian Braccae +4",
		feet="Amini Bottillons +3",
		neck="Fotia Gorget",
		waist="Sailfi Belt +1",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250'}},
		right_ear="Ishvara Earring",
		left_ring="Sroda Ring",
		right_ring="Epaminondas's Ring",
		back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%'}}
	}
	
	sets.Jishnu = {
		head="Orion Beret +4",
		body="Nisroch Jerkin",
		hands="Amini Glove. +3",
		legs="Amini Bragues +3",
		feet="Amini Bottillons +3",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250'}},
		right_ear="Odr Earring",
		left_ring="Dingir Ring",
		right_ring="Epaminondas's Ring",
		back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%'}}	
	}
	
	sets.Trueflight = {
		head="Nyame Helm",
		body="Nyame mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck="Scout's Gorget +2",
		waist="Fotia belt",
		left_ear="Crep. Earring",
		right_ear="Friomisi Earring",
		left_ring="Dingir Ring",
		right_ring="Epaminondas's Ring",
		back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%',}}	
	}
	
	sets.Trueflight.Obi = set_combine(sets.Trueflight, {waist="Hachirin-no-Obi"})	
	sets.Trueflight.Sash = set_combine(sets.Trueflight, {waist="Orpheus's Sash"})
	
	--Weapon Sets--
	sets.weapon = {}
	sets.weapon.index = {'DWSavageRNG','SavageRNGShield','TauretCrep','FomalhautPerunShield','AnnihilatorPerunShield','FomalhautDual','AnnihilatorDual','GastroDual'}
	weapon_ind = 1
	
	sets.weapon.DWSavageRNG = {
		main="Naegling",
		sub="Crepuscular Knife",
		range="Accipiter",
		ammo="Hauksbok arrow"
	}

	sets.weapon.SavageRNGShield = {
		main="Naegling",
		sub="Nusku Shield",
		range="Accipiter",
		ammo="Hauksbok arrow"
	}
	
	sets.weapon.TauretCrep = {
		main="Tauret",
		sub="Crepuscular Knife",
		range="Accipiter",
		ammo="Hauksbok arrow"
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
	
	sets.weapon.FomalhautDual = {
		main="Perun +1",
		sub="Crepuscular Knife",
		range="Fomalhaut"
	}

	sets.weapon.AnnihilatorDual = {
		main="Perun +1",
		sub="Crepuscular Knife",
		range="Annihilator"
	}
	
	sets.weapon.GastroDual = {
		main="Malevolence",
		sub="Malevolence",
		range="Gastraphetes"
	}
	
end


--Precast Function
function precast(spell,abil)
	
	--embrava is 25 snapshot
	--If pew pew we want to do range stuffs here
	if spell.action_type == 'Ranged Attack' then
		--Regular Pew Pew Action outside of WS - Snapshot Glory
		if buffactive['Velocity Shot'] then
			equip(sets.VelocityShotActive)
		else
			equip(sets.Snapshot)
		end
	end

	--Weapon skill lookups	
    if spell.name == "Wildfire" or spell.name == "Hot Shot" then
        if buffactive[178] or buffactive[589] then  -- Firestorm / Firestorm II
            send_command('@input /echo Firestorm detected! Equipping Hachirin-no-Obi.')
            equip(sets.Wildfire.Obi)
        else
            local target = windower.ffxi.get_mob_by_target("t")
            
            if target and target.distance then
                local dist = target.distance / 2  -- Convert squared distance to yalms

                if dist <= 3 then  -- Close range (Orpheus Sash gets higher than 10% bonus)
                    send_command('@input /echo Close range detected! Equipping Orpheus Sash.')
                    equip(sets.Wildfire.Sash)
                else
                    send_command('@input /echo No storm effect detected. Equipping Fotia Belt for TP bonus.')
                    equip(sets.Wildfire)
                end
            end
        end
    end

	
    if spell.name == "Trueflight" then
        if buffactive[184] or buffactive[595] then  -- Aurorastorm / Aurorastorm II
            send_command('@input /echo Aurorastorm detected! Equipping Hachirin-no-Obi.')
            equip(sets.Trueflight.Obi)
        else
            local target = windower.ffxi.get_mob_by_target("t")
            
            if target and target.distance then
                local dist = target.distance / 2  -- Convert squared distance to yalms

                if dist <= 3 then  -- Close range (Orpheus Sash gets higher than 10% bonus)
                    send_command('@input /echo Close range detected! Equipping Orpheus Sash.')
                    equip(sets.Trueflight.Sash)
                else
                    send_command('@input /echo No storm effect detected. Equipping Fotia Belt for TP bonus.')
                    equip(sets.Trueflight)
                end
            end
        end
    end


	if spell.name == "Coronach" or spell.name == "Empyreal Arrow" then
		equip(sets.Coronach)
	end
	
	if spell.name == "Last Stand" then
		equip(sets.LastStand)
	end
	
	if spell.name == "Jishnu's Radiance" then
		equip(sets.Jishnu)
	end	
	
	if spell.name == "Savage Blade" then
		equip(sets.SavageBlade)
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


function aftercast(spell)
	equip_current()
end


function equip_current()
	equip(sets.engaged[sets.engaged.index[engaged_ind]]) 
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
		send_command('@input /tell <me> Wakies Wakies my Campbellkitty. We hit 0 HP on accident. We shall live forever!!!')
	end
end)
