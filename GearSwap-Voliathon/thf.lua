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
    EngagedArray = {"TH","Solo","Party","ACC"}	-- Press ctrl + F10 for Engaged Array --
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
	sets.engaged.Solo = {
		ammo="Yetshila +1",
		head="Adhemar Bonnet +1",
		body="Adhemar Jacket +1",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance boots",
		neck="Sanctity Necklace",
		waist="Grunfeld Rope",
		left_ear="Dudgeon Earring",
		right_ear="Heartseeker Earring",
		left_ring="Mummu Ring",
		right_ring="Rajas Ring",
		back="Canny Cape"
	}
	
	sets.engaged.Party = {
		ammo="Yetshila +1",
		head="Adhemar Bonnet +1",
		body="Adhemar Jacket +1",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance boots",
		neck="Sanctity Necklace",
		waist="Grunfeld Rope",
		left_ear="Dudgeon Earring",
		right_ear="Heartseeker Earring",
		left_ring="Mummu Ring",
		right_ring="Rajas Ring",
		back="Canny Cape"
	}
	
	sets.engaged.TH = {
		ammo="Yetshila +1",
		head={ name="Herculean Helm", augments={'Attack+19','STR+5','"Treasure Hunter"+2','Accuracy+20 Attack+20'}},
		body="Adhemar Jacket +1",
		hands="Plun. Armlets +1",
		feet="Skulk. Poulaines +2",
		neck="Sanctity Necklace",
		waist="Chaac Belt",
		left_ear="Dudgeon Earring",
		right_ear="Heartseeker Earring",
		left_ring="Beeline Ring",
		right_ring="Defending Ring",
		back="Canny Cape"
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
		right_ear="Heartseeker Earring",
		left_ring="Mummu Ring",
		right_ring="Beeline Ring",
		back="Canny Cape"
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
	sets.JA['Perfect Dodge'] = {hands="Plun. Armlets +1"}
	
	
---- .:: Weapon Skill Sets ::. ---->
    -- .::Generic Sets::. --
    sets.WS = {	
		ammo="Yetshila +1",
		head="Adhemar Bonnet +1",
		body="Herculean Vest",
		hands="Meg. Gloves +2",
		legs="Malignance Tights",
		feet="Malignance boots",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Bladeborn Earring",
		right_ear="Steelflash Earring",
		left_ring="Mummu Ring",
		right_ring="Epaminondas's Ring",
		back="Toutatis's Cape"
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
	
	sets.WS.Party = {}
	sets.WS.Acc = {}
	sets.WS.SA = {}
	sets.WS.TA = {}
	sets.WS.SATA = {}
	-- .::Specific Sets::. --
	-- Evisceration --
	sets.WS['Evisceration'] = set_combine(sets.WS, {})
	sets.WS.Party['Evisceration'] = set_combine(sets.WS['Evisceration'], {})
	sets.WS.Acc['Evisceration'] = set_combine(sets.WS['Evisceration'], {})
	sets.WS.SA['Evisceration'] = set_combine(sets.WS['Evisceration'], {})
	sets.WS.TA['Evisceration'] = set_combine(sets.WS['Evisceration'], {})
	sets.WS.SATA['Evisceration'] = set_combine(sets.WS['Evisceration'], {})
	
	-- Exenterator --
	sets.WS['Exenterator'] = set_combine(sets.WS, {})
	sets.WS.Party['Exenterator'] = set_combine(sets.WS['Exenterator'], {})
	sets.WS.Acc['Exenterator'] = set_combine(sets.WS['Exenterator'], {})
	sets.WS.SA['Exenterator'] = set_combine(sets.WS['Exenterator'], {})
	sets.WS.TA['Exenterator'] = set_combine(sets.WS['Exenterator'], {})
	sets.WS.SATA['Exenterator'] = set_combine(sets.WS['Exenterator'], {})	
    
	-- Mandalic Stab --
	sets.WS['Mandalic Stab'] = set_combine(sets.WS, {})
	sets.WS.Party['Mandalic Stab'] = set_combine(sets.WS['Mandalic Stab'], {})
	sets.WS.Acc['Mandalic Stab'] = set_combine(sets.WS['Mandalic Stab'], {})
	sets.WS.SA['Mandalic Stab'] = set_combine(sets.WS['Mandalic Stab'], {})
	sets.WS.TA['Mandalic Stab'] = set_combine(sets.WS['Mandalic Stab'], {})
	sets.WS.SATA['Mandalic Stab'] = set_combine(sets.WS['Mandalic Stab'], {})
	
	-- Rudra's Storm --
	sets.WS["Rudra's Storm"] = set_combine(sets.WS, {})
	sets.WS.Party["Rudra's Storm"] = set_combine(sets.WS, {})
	sets.WS.Acc["Rudra's Storm"] = set_combine(sets.WS.Party["Rudra's Storm"], {})
	sets.WS.SA["Rudra's Storm"] = set_combine(sets.WS.Party["Rudra's Storm"], {})
	sets.WS.TA["Rudra's Storm"] = set_combine(sets.WS.Party["Rudra's Storm"], {})
	sets.WS.SATA["Rudra's Storm"] = set_combine(sets.WS.Party["Rudra's Storm"], {})
	
	-- Aeolian Edge
	sets.WS["Aeolian Edge"] = set_combine(sets.Aeolian, {})
	sets.WS.Party["Aeolian Edge"] = set_combine(sets.WS, {})
	sets.WS.Acc["Aeolian Edge"] = set_combine(sets.WS.Party["Aeolian Edge"], {})
	sets.WS.SA["Aeolian Edge"] = set_combine(sets.WS.Party["Aeolian Edge"], {})
	sets.WS.TA["Aeolian Edge"] = set_combine(sets.WS.Party["Aeolian Edge"], {})
	sets.WS.SATA["Aeolian Edge"] = set_combine(sets.WS.Party["Aeolian Edge"], {})
	
	-- Mercy Stroke --
	sets.WS['Mercy Stroke'] = {}
	sets.WS.Party['Mercy Stroke'] = {}
	sets.WS.Acc['Mercy Stroke'] = {}
	sets.WS.SA['Mercy Stroke'] = {}
	sets.WS.TA['Mercy Stroke'] = {}
	sets.WS.SATA['Mercy Stroke'] = {}	
	
	-- Aolian Edge --
	sets.WS['Aolian Edge'] = {}
	
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
		ammo="Yetshila +1",
		head="Malignance chapeau",
		body="Ashera harness",
		hands="Malignance gloves",
		legs="Malignance Tights",
		feet="Jute Boots +1",
		neck="Loricate torque +1",
		waist="Grunfeld Rope",
		left_ear="Infused Earring",
		right_ear="Hearty Earring",
		left_ring="Moonlight ring",
		right_ring="Defending Ring",
		back="Repulse Mantle"
	}
	sets.aftercast.Town = {feet="Jute Boots +1"}
	sets.aftercast.Defense = set_combine(sets.aftercast.Idle, {
		ammo="Yetshila +1",
		head="Malignance chapeau",
		body="Ashera harness",
		hands="Malignance gloves",
		legs="Malignance Tights",
		feet="Jute Boots +1",
		neck="Loricate torque +1",
		waist="Grunfeld Rope",
		left_ear="Infused Earring",
		right_ear="Hearty Earring",
		left_ring="Moonlight ring",
		right_ring="Defending Ring",
		back="Repulse Mantle"
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
            equip(sets.WS[spell.english])
	    if EngagedArray[EngagedIndex] == 'Party' then
            equip(sets.WS.Party[spell.english])
	    elseif EngagedArray[EngagedIndex] == 'ACC' then			
			equip(sets.WS.Acc[spell.english])			
		elseif SA == 'true' then
		    equip(sets.WS.SA[spell.english])
		elseif TA == 'true' then
            equip(sets.WS.TA[spell.english])
		elseif SA == 'true' and TA == 'true' then
            equip(sets.WS.SATA[spell.english])	
		end			
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
		    equip(sets.engaged.Solo)	
	    elseif EngagedArray[EngagedIndex] == 'Solo' then
            equip(sets.engaged.Solo)			
	    elseif EngagedArray[EngagedIndex] == 'Party' then
            equip(sets.engaged.Party)			
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
	    elseif EngagedArray[EngagedIndex] == 'Solo' then
            equip(sets.engaged.Solo)			
	    elseif EngagedArray[EngagedIndex] == 'Party' then
            equip(sets.engaged.Party)			
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

