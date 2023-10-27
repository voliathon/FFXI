function user_unload()
    send_command('unbind ^f9')
    send_command('unbind ^f10')
	send_command('unbind ^f11')
end

function get_sets()
-- Set macro book/set --
    send_command('input /macro book 14;wait .1;input /macro set 1') -- set macro book/set here --	
	
-- Binds for modes
    send_command('bind ^f9 gs c C9')
	send_command('bind ^f10 gs c C10') 
	send_command('bind ^f11 gs c C11')

	-- Modes --
    EngagedIndex = 1
    EngagedArray = {"TH","TP","Accuracy", "Tank", "Evasion"}	-- Press ctrl + F10 for Engaged Array --

	Capacity = 'OFF' -- Press ctrl + F11 if you want to be in Capacity mode  --		

	-- Gears --
    gear = {}
    gear.DW_Cape = { 
		back="Canny Cape"
	}	
    gear.TA_Cape = { 
		back="Canny Cape"
	}	

	-- Utilities --	
    SA = false
    TA = false	

	-- Ability Mapping --
	THStep = S{"Quickstep","Box Step","Stutter Step","Animated Flourish"}


	---- .:: TP Sets ::. ----->
    sets.engaged = {}
	sets.engaged.TH = {
		ammo="Yetshila +1",
		head={ name="Herculean Helm", augments={'Attack+19','STR+5','"Treasure Hunter"+2','Accuracy+20 Attack+20',}},
		body="Volte Jupon",
		hands={ name="Plun. Armlets +3", augments={'Enhances "Perfect Dodge" effect',}},
		legs="Malignance tights",
		feet="Skulk. Poulaines +2",
		neck="Anu Torque",
		waist="Chaac Belt",
		left_ear="Suppanomimi",
		right_ear="Cessance Earring",
		left_ring="Chirich Ring +1",
		right_ring="Defending Ring",
		back={ name="Canny Cape", augments={'DEX+2','AGI+3','"Dual Wield"+3','Crit. hit damage +2%',}}
	}
	
	sets.engaged.TP = {
		ammo="Ginsen",
		head={ name="Adhemar Bonnet +1", augments={'STR+12','DEX+12','Attack+20',}},
		body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},
		hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
		legs="Meg. Chausses +2",
		feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+3','DEX+3','Attack+2',}},
		neck="Clotharius Torque",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Suppanomimi",
		right_ear={ name="Skulker's Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+8','Mag. Acc.+8',}},
		left_ring="Chirich Ring +1",
		right_ring="Chirich Ring +1",
		back={ name="Canny Cape", augments={'DEX+2','AGI+3','"Dual Wield"+3','Crit. hit damage +2%',}}
	}
	
	sets.engaged.Accuracy =  {
		ammo="Amar cluster",
		head="Mummu Bonnet +2",
		body="Adhemar Jacket +1",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance boots",
		neck="Subtlety Spec.",
		waist="Grunfeld Rope",
		left_ear="Dudgeon Earring",
		right_ear="Heartseeker Earring",
		left_ring="Mummu Ring",
		right_ring="Beeline Ring",
		back="Canny Cape"
	}	
	
	sets.engaged.Tank = {
		ammo="Staunch Tathlum +1",
		head="Nyame Helm",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Skulk. Poulaines +2",
		neck="Loricate torque +1",
		waist="Flume Belt +1",
		left_ear="Suppanomimi",
		right_ear="Cessance Earring",
		left_ring="Chirich Ring +1",
		right_ring="Chirich Ring +1",
		back="Engulfer Cape +1"
	}
	
	sets.engaged.Evasion = {
		ammo="Staunch Tathlum +1",
		head="Nyame Helm",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Skulk. Poulaines +2",
		neck="Loricate torque +1",
		waist="Flume Belt +1",
		left_ear="Suppanomimi",
		right_ear="Cessance Earring",
		left_ring="Chirich Ring +1",
		right_ring="Chirich Ring +1",
		back="Engulfer Cape +1"
	}

	
	
---- .:: Job Abilities Sets ::. ---->
    sets.JA = {}
	
    -- Dancer's Abilities --
    sets.JA.Waltz = {head="Mummu Bonnet +2", legs="Dashing subligar"}
	sets.JA.Step = 	{}
    sets.JA.Stun = {}
	
	
	-- Thief's Abilities --
    sets.JA['Sneak Attack'] = {}
	
	
    sets.JA.SATH = set_combine(sets.JA['Sneak Attack'], {  -- Add TH gears --
	    hands="Plun. Armlets +3",
	    feet="Skulker's Poulaines +2"})
		
		
    sets.JA['Trick Attack'] = set_combine(sets.JA['Sneak Attack'], {hands="Pillager's Armlets +1"})
	
	
    sets.JA.TATH = set_combine(sets.JA['Trick Attack'], {  -- Add TH gears --
	    hands="Pillager's Armlets +1",
		feet="Skulker's Poulaines +2"
	})
	
	
    sets.JA.SATA = set_combine(sets.JA['Sneak Attack'], {})

		
	--sets.JA["Assassin's Charge"] = {feet="Plun. Poulaines +1"}
	sets.JA['Feint'] = {legs="Plun. Culottes +1"}
	
	--sets.JA['Conspirator'] = {body="Raider's Vest +2"}
	sets.JA['Steal'] = {
	    hands="Pill. Armlets +1", legs="Pill. Culottes", feet="Pill. Poulaines", neck="Pentalagus charm"
	}
	
	--sets.JA['Mug'] = {head="Plun. Bonnet +1"}
	sets.JA['Despoil'] = {feet="Skulker's Poulaines +2"}
	
	--sets.JA['Accomplice'] = {head="Skulker's Bonnet +1",}
	sets.JA['Flee'] = {feet="Pill. Poulaines"}
	sets.JA['Hide'] = {body="Pillager's Vest"}
	sets.JA['Perfect Dodge'] = {hands="Plun. Armlets +3"}
	
	
---- .:: Weapon Skill Sets ::. ---->
    -- .::Generic Sets::. --
	
	sets.Evisceration  = {
		ammo="Yetshila +1",
		head={ name="Adhemar Bonnet +1", augments={'STR+12','DEX+12','Attack+20'}},
		body={ name="Herculean Vest", augments={'Attack+14','Damage taken-1%','Weapon skill damage +7%','Accuracy+11 Attack+11'}},
		hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20'}},
		legs={ name="Herculean Trousers", augments={'Pet: STR+5','"Dual Wield"+3','Weapon skill damage +6%','Accuracy+3 Attack+3','Mag. Acc.+7 "Mag.Atk.Bns."+7'}},
		feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+3','DEX+3','Attack+2'}},
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250'}},
		right_ear="Ishvara Earring",
		left_ring="Mummu Ring",
		right_ring="Epaminondas's Ring",
		back={ name="Toutatis's Cape", augments={'DEX+15','Accuracy+20 Attack+20','DEX+5','Weapon skill damage +10%'}}	
	}
	
	sets.Rudra = {
		ammo="Yetshila +1",
		head="Nyame Helm",
		body="Skulker's Vest +2",
		hands="Meg. Gloves +2",
		legs={ name="Lustr. Subligar +1", augments={'Accuracy+20','DEX+8','Crit. hit rate+3%'}},
		feet={ name="Lustra. Leggings +1", augments={'Accuracy+20','DEX+8','Crit. hit rate+3%'}},
		neck="Sanctity Necklace",
		waist="Grunfeld Rope",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250'}},
		right_ear="Ishvara Earring",
		left_ring="Stikini Ring +1",
		right_ring="Epaminondas's Ring",
		back={ name="Toutatis's Cape", augments={'DEX+15','Accuracy+20 Attack+20','DEX+5','Weapon skill damage +10%'}}	
	}
	
    sets.WS = {	
		ammo="Yetshila +1",
		head={ name="Adhemar Bonnet +1", augments={'STR+12','DEX+12','Attack+20'}},
		body="Skulker's Vest +2",
		hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20'}},
		legs={ name="Herculean Trousers", augments={'Pet: STR+5','"Dual Wield"+3','Weapon skill damage +6%','Accuracy+3 Attack+3','Mag. Acc.+7 "Mag.Atk.Bns."+7'}},
		feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+3','DEX+3','Attack+2'}},
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250'}},
		right_ear="Ishvara Earring",
		left_ring="Mummu Ring",
		right_ring="Epaminondas's Ring",
		back={ name="Toutatis's Cape", augments={'DEX+15','Accuracy+20 Attack+20','DEX+5','Weapon skill damage +10%'}}
	}

    sets.Aeolian = {	
		ammo="Pemphredo Tathlum",
		head="Nyame Helm",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck="Sanctity Necklace",
		waist="Orpheus's Sash",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250'}},
		right_ear="Friomisi Earring",
		left_ring="Stikini Ring +1",
		right_ring="Epaminondas's Ring",
		back={ name="Toutatis's Cape", augments={'DEX+15','Accuracy+20 Attack+20','DEX+5','Weapon skill damage +10%'}}
	}
	
	
---- .:: Precast Sets ::. ---->
	sets.precast = {}
	sets.precast.Fastcast = {}
	sets.precast['Utsusemi'] = {	
		ammo="Yetshila +1",
		head="Adhemar Bonnet +1",
		body="Adhemar Jacket +1",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance boots",
		neck="Sanctity Necklace",
		waist="Ninurta's Sash",
		left_ear="Loquac. Earring",
		right_ear="Magnetic Earring",
		left_ring="Veneficium Ring",
		right_ring="Rajas Ring",
		back="Repulse Mantle"
	}
		
---- .:: Midshot Sets ::. ---->	
	sets.midshot = {}
	sets.midshot.RA = {}	
	
---- .:: Midcast Sets ::. ---->	
	sets.midcast = {}
	sets.midcast.RA = {}
	sets.midcast.Ninjutsu = {}
	sets.midcast['Utsusemi'] = set_combine(sets.precast['Utsusemi'], {})
	
end


-- Precast Functions --
function precast(spell,action)
    -- Dancer Abilities --
    if string.find(spell.name, 'Waltz') then
	    equip(sets.JA.Waltz)
    elseif spell.name == 'Violent Flourish' then
        equip(sets.JA.Stun)
	-- Thief Abilities --
	elseif spell.type == 'JobAbility' then
	        equip(sets.JA[spell.name])
    -- Weapon Skill --
    elseif spell.type == 'WeaponSkill' then
			if spell.name == "Evisceration" then
				equip(sets.Evisceration)
			elseif spell.name == "Rudra's Storm" or spell.name == "Mandalic Stab" then
				equip(sets.Rudra)
			elseif spell.name == 'Aeolian Edge' then
				equip(sets.Aeolian)
			else
				equip(sets.WS)
			end
	-- Ninja Spells --
	elseif spell.skill == 'Ninjutsu' then
	    equip(sets.precast.Fastcast)
		if string.find(spell.name, 'Utsusemi') then
		    equip(sets.precast['Utsusemi'])
		end
	end	
end	


-- Midcast Functions --
function midcast(spell,action)

end	


-- Aftercast Functions --
function aftercast(spell,action)
    status_change(player.status)    	
end	


-- Status Changes --	
function status_change(new,tab,old)
	if Capacity == 'ON' then
		equip{back="Mecisto. Mantle"}
		disable('back')
	else
		enable('back')
	end	
	if EngagedArray[EngagedIndex] == 'TH' then
		equip(sets.engaged.TH)	
	elseif EngagedArray[EngagedIndex] == 'TP' then
		equip(sets.engaged.TP)	
	elseif EngagedArray[EngagedIndex] == 'Accuracy' then
		equip(sets.engaged.Accuracy)
	elseif EngagedArray[EngagedIndex] == 'Tank' then
		equip(sets.engaged.Tank)
	elseif EngagedArray[EngagedIndex] == 'Evasion' then
		equip(sets.engaged.Evasion)		
	elseif SA then
		if EngagedArray[EngagedIndex] == 'TH' then
			equip(sets.JA.SATH)
		else
			equip(sets.JA['Sneak Attack'])
		end		
	elseif TA then
		if EngagedArray[EngagedIndex] == 'TH' then
			equip(sets.JA.TATH)
		else
			equip(sets.JA['Trick Attack'])
		end	
	elseif buffactive == 'Feint' then
		equip(sets.JA[spell.name])
	end			
end	


-- Modes functions --
function self_command(command)	
	if command == 'C9' then -- Offense Cycle --
        EngagedIndex = (EngagedIndex % #EngagedArray) + 1
        status_change(player.status)
        add_to_chat(158,'TP Set: ' .. EngagedArray[EngagedIndex])			
    elseif command == 'C8' then -- Capacity toggle --
        if Capacity == 'ON' then
            Capacity = 'OFF'
            add_to_chat(123,'Capacity Set: [OFF]')
        else
            Capacity = 'ON'
            add_to_chat(158,'Capacity Set: [ON]')
        end
        status_change(player.status)
	end
end	


