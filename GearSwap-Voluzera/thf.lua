function user_unload()
    send_command('unbind ^f9')
    send_command('unbind ^f10')
	send_command('unbind ^f11')
end

function get_sets()
-- Set macro book/set --
    send_command('input /macro book 6;wait .1;input /macro set 1') -- set macro book/set here --	
	
-- Binds for modes
    send_command('bind ^f9 gs c C9')
	send_command('bind ^f10 gs c C10') 
	send_command('bind ^f11 gs c C11')

	-- Modes --
    EngagedIndex = 1
    EngagedArray = {"TP","Defense","TH","ACC"}	-- Press ctrl + F10 for Engaged Array --
	Defense = 'OFF' -- Toogle on/off the DT set via ctrl + F9
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
	-- Area mapping --	
    Town = S{"Ru'Lude Gardens","Upper Jeuno","Lower Jeuno","Port Jeuno","Port Windurst","Windurst Waters","Windurst Woods","Windurst Walls","Heavens Tower",
	         "Port San d'Oria","Northern San d'Oria","Southern San d'Oria","Port Bastok","Bastok Markets","Bastok Mines","Metalworks","Aht Urhgan Whitegate",
	         "Tavnazian Safehold","Nashmau","Selbina","Mhaura","Norg","Eastern Adoulin","Western Adoulin","Kazham","Heavens Tower"}

	---- .:: TP Sets ::. ----->
    sets.engaged = {}
	sets.engaged.TP = {
		ammo="Aurgelmir Orb",
		head={ name="Herculean Helm", augments={'Attack+22','"Triple Atk."+3','DEX+9','Accuracy+5'}},
		body="Malignance Tabard",
		hands={ name="Floral Gauntlets", augments={'Rng.Acc.+15','Accuracy+15','"Triple Atk."+3','Magic dmg. taken -4%'}},
		legs={ name="Samnuha Tights", augments={'STR+9','DEX+8','"Dbl.Atk."+2','"Triple Atk."+2'}},
		feet={ name="Herculean Boots", augments={'Attack+17','"Triple Atk."+3','STR+10','Accuracy+3'}},
		neck="Anu Torque",
		waist="Sinew Belt",
		left_ear="Brutal Earring",
		right_ear="Cessance Earring",
		left_ring="Chirich Ring +1",
		right_ring="Epona's Ring",
		back="Agema Cape"
	}
	
	sets.engaged.Defense = {
		ammo="Staunch Tathlum +1",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Mummu Kecks +2",
		feet="Malignance Boots",
		neck="Loricate Torque +1",
		waist="Flume Belt",
		left_ear="Infused Earring",
		right_ear="Genmei Earring",
		left_ring="Moonbeam Ring",
		right_ring="Defending Ring",
		back="Agema Cape"
	}
	
	sets.engaged.TH = {
		head={ name="Herculean Helm", augments={'Accuracy+9 Attack+9','CHR+7','"Treasure Hunter"+2'}},
		body={ name="Herculean Vest", augments={'Mag. crit. hit dmg. +2%','Pet: Attack+5 Pet: Rng.Atk.+5','"Treasure Hunter"+2'}},
		hands={ name="Plun. Armlets +1", augments={'Enhances "Perfect Dodge" effect'}},
		legs={ name="Herculean Trousers", augments={'Rng.Atk.+13','"Mag.Atk.Bns."+14','"Treasure Hunter"+2'}},
		feet="Mummu Gamash. +2",
		neck="Sanctity Necklace",
		waist="Chaac Belt",
		left_ear="Dudgeon Earring",
		right_ear="Heartseeker Earring",
		left_ring="Moonbeam Ring",
		right_ring="Defending Ring",
		back="Moonbeam Cape",
		ammo="Aurgelmir Orb"
	}
	
	sets.engaged.ACC =  {
		ammo="Amar cluster",
		head="Mummu Bonnet +2",
		body="Adhemar Jacket +1",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance boots",
		neck="Subtlety Spec.",
		waist="Grunfeld Rope",
		left_ear="Dudgeon Earring",
		right_ear="Odr Earring",
		left_ring="Mummu Ring",
		right_ring="Beeline Ring",
		back="Agema Cape"
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
	    hands="Plun. Armlets +1",
	    feet="Skulker's Poulaines +1"})
		
		
    sets.JA['Trick Attack'] = set_combine(sets.JA['Sneak Attack'], {hands="Pillager's Armlets +1"})
	
	
    sets.JA.TATH = set_combine(sets.JA['Trick Attack'], {  -- Add TH gears --
	    hands="Pillager's Armlets +1",
		feet="Skulker's Poulaines +1"
	})
	
	
    sets.JA.SATA = set_combine(sets.JA['Sneak Attack'], {})

		
	--sets.JA["Assassin's Charge"] = {feet="Plun. Poulaines +1"}
	sets.JA['Feint'] = {legs="Plun. Culottes +1"}
	
	--sets.JA['Conspirator'] = {body="Raider's Vest +2"}
	sets.JA['Steal'] = {
	    hands="Pill. Armlets +1", legs="Pill. Culottes", feet="Pill. Poulaines", neck="Pentalagus charm"
	}
	
	--sets.JA['Mug'] = {head="Plun. Bonnet +1"}
	sets.JA['Despoil'] = {feet="Skulker's Poulaines +1"}
	
	--sets.JA['Accomplice'] = {head="Skulker's Bonnet +1",}
	sets.JA['Flee'] = {feet="Pill. Poulaines"}
	sets.JA['Hide'] = {body="Pillager's Vest"}
	sets.JA['Perfect Dodge'] = {hands="Plun. Armlets +1"}
	
	
---- .:: Weapon Skill Sets ::. ---->
    -- .::Generic Sets::. --
    sets.WS = {	
		ammo="Yetshila",
		head={ name="Herculean Helm", augments={'Weapon skill damage +5%','STR+10','Attack+1'}},
		body={ name="Herculean Vest", augments={'INT+9','Pet: "Mag.Atk.Bns."+2','Weapon skill damage +9%','Accuracy+16 Attack+16','Mag. Acc.+1 "Mag.Atk.Bns."+1'}},
		hands="Meg. Gloves +2",
		legs={ name="Herculean Trousers", augments={'Mag. Acc.+16','Blood Pact Dmg.+2','Weapon skill damage +8%'}},
		feet={ name="Herculean Boots", augments={'Accuracy+4 Attack+4','Weapon skill damage +5%','STR+10','Accuracy+7'}},
		neck="Fotia Gorget",
		waist="Sinew Belt",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250'}},
		right_ear="Odr Earring",
		left_ring="Epaminondas's Ring",
		right_ring="Ifrit Ring +1",
		back="Vespid Mantle"
	}

    sets.Aeolian = {	
		ammo="Dosis tathlum",
		head="Mummu Bonnet +2",
		body="Herculean Vest",
		hands="Malignance Gloves",
		legs="Mummu kecks +2",
		feet="Malignance boots",
		neck="Sanctity Necklace",
		waist="Fotia Belt",
		left_ear="Hecate's Earring",
		right_ear="Friomisi Earring",
		left_ring="Fenrir Ring +1",
		right_ring="Karieyh Ring",
		back="Toro cape"
	}
	

	
---- .:: Preshot Sets ::. ---->
	sets.preshot = {}
	sets.preshot.RA = {}	
	
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
	
---- .:: Idle Sets ::. ---->
    sets.aftercast = {}
	sets.aftercast.Idle = {
		ammo="Staunch Tathlum +1",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Mummu Kecks +2",
		feet="Jute Boots +1",
		neck="Loricate Torque +1",
		waist="Flume Belt",
		left_ear="Infused Earring",
		right_ear="Genmei Earring",
		left_ring="Moonbeam Ring",
		right_ring="Defending Ring",
		back="Agema Cape"
	}
	sets.aftercast.Town = {feet="Jute Boots +1"}
	sets.aftercast.Defense = set_combine(sets.aftercast.Idle, {
		ammo="Staunch Tathlum +1",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Mummu Kecks +2",
		feet="Malignance Boots",
		neck="Loricate Torque +1",
		waist="Flume Belt",
		left_ear="Infused Earring",
		right_ear="Genmei Earring",
		left_ring="Moonbeam Ring",
		right_ring="Defending Ring",
		back="Agema Cape"
	})
end


-- Precast Functions --
function precast(spell,action)
    -- Dancer Abilities --
    if string.find(spell.english, 'Waltz') then
	    equip(sets.JA.Waltz)
    elseif spell.english == 'Violent Flourish' then
        equip(sets.JA.Stun)
	elseif THStep:contains(spell.name) then
        equip(sets.JA.Step)	
	-- Thief Abilities --
	elseif spell.type == 'JobAbility' then
	        equip(sets.JA[spell.english])
        if spell.english=="Sneak Attack" then 	
            SA = true
		else 
            SA = false		
        end
        if spell.english=="Trick Attack" then 	
			TA = true
		else
            TA = false		
        end
    -- Weapon Skill --
    elseif spell.type == 'WeaponSkill' then
            equip(sets.WS)
	-- Ranged Attacks --
    elseif spell.action_type == 'Ranged Attack' then
	    equip(sets.preshot.RA)
	-- Ninja Spells --
	elseif spell.skill == 'Ninjutsu' then
	    equip(sets.precast.Fastcast)
		if string.find(spell.english, 'Utsusemi') then
		    equip(sets.precast['Utsusemi'])
		end
	end	
end	


-- Midcast Functions --
function midcast(spell,action)
	-- Ranged Attacks --
    if spell.action_type == 'Ranged Attack' then
	    equip(sets.midshot.RA)
	-- Ninja Spells --
    elseif spell.skill == 'Ninjutsu' then
	    equip(sets.midcast.Ninjutsu)
		if string.find(spell.english, 'Utsusemi') then
		    equip(sets.midcast['Utsusemi'])
		end
	end		
end	


-- Aftercast Functions --
function aftercast(spell,action)
-- Idle rules --
    if player.status == 'Idle' then
	    equip(sets.aftercast.Idle)
	    if Town:contains(world.zone) then
            equip(sets.aftercast.Town)
        end	
	    status_change(player.status)	
-- TP Rules --		
    elseif player.status == 'Engaged' then
	    if Capacity == 'ON' then
            equip{back="Mecisto. Mantle"}
		    disable('back')
	    else
	        enable('back')
		end	
	    status_change(player.status)				
	    if EngagedArray[EngagedIndex] == 'TH' then
		    equip(sets.engaged.TH)	
	    elseif EngagedArray[EngagedIndex] == 'TP' then
            equip(sets.engaged.TP)			
	    elseif EngagedArray[EngagedIndex] == 'Defense' then
            equip(sets.engaged.Defense)			
	    elseif EngagedArray[EngagedIndex] == 'ACC' then
            equip(sets.engaged.ACC)		
	    end	
	    status_change(player.status)		
	end	
end	


-- Status Changes --	
function status_change(new,tab,old)
-- Idle rules --
    if new == 'Idle' then
	    equip(sets.aftercast.Idle)
	    if Town:contains(world.zone) then
            equip(sets.aftercast.Town)
        end	
-- TP rules --		
	elseif new == 'Engaged' then
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
	    elseif EngagedArray[EngagedIndex] == 'Defense' then
            equip(sets.engaged.Defense)			
	    elseif EngagedArray[EngagedIndex] == 'ACC' then
            equip(sets.engaged.ACC)	
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
end	


-- Modes functions --
function self_command(command)	
	if command == 'C9' then -- Defense Cycle --	
        if Defense == 'ON' then
            Defense = 'OFF'
            add_to_chat(123,'DT Set: [OFF]')
        else
            Defense = 'ON'
            add_to_chat(158,'DT Set: [ON]')
	        equip(sets.aftercast.Defense)			
        end
        status_change(player.status)	
	elseif command == 'C10' then -- Offense Cycle --
        EngagedIndex = (EngagedIndex % #EngagedArray) + 1
        status_change(player.status)
        add_to_chat(158,'TP Set: ' .. EngagedArray[EngagedIndex])			
    elseif command == 'C11' then -- Capacity toggle --
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


-- Automatically changes Idle gears if you zone in or out of town --
windower.register_event('zone change', function()
	if Town:contains(world.zone) then
        equip(sets.aftercast.Town)
    else
        equip(sets.aftercast.Idle)
    end	
end)


-- Handles SA/TA so it doesn't switch gears until the buff is off --
function buff_change(buff,gain)
    buff = string.lower(buff)
    if buff == "sneak attack" then
        SA = gain
    elseif buff == "trick attack" then
        TA = gain
	end
    if not midaction() then
        status_change(player.status)
    end		
end	


-- Checks for SA/TA Buffs --	
function job_handle_equipping_gear(playerStatus, eventArgs)
    check_buff('Sneak Attack', eventArgs)
    check_buff('Trick Attack', eventArgs)
end

