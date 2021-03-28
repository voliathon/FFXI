--https://www.bg-wiki.com/bg/Community_Thief_Guide#TP_Sets
-- Will eventually get more and more gear that is mentioned from the community Thief Site...
function user_unload()
    send_command('unbind ^f9')
    send_command('unbind ^f10')
end

function get_sets()
-- Set macro book/set --
    send_command('input /macro book 1;wait .1;input /macro set 1') -- set macro book/set here --	
	
-- Binds for modes
    send_command('bind ^f8 gs c C8')
	send_command('bind ^f9 gs c C9') 

	-- Modes --
    EngagedIndex = 1
    EngagedArray = {"TH","Solo","ACC", "Defense"}	-- Press ctrl + F10 for Engaged Array --
	Capacity = 'OFF' -- Press ctrl + F11 if you want to be in Capacity mode  --		


	-- Utilities --	
    SA = false
    TA = false	

	-- Ability Mapping --
	THStep = S{"Quickstep","Box Step","Stutter Step","Animated Flourish"}

	---- .:: TP Sets ::. ----->
    sets.engaged = {}
	sets.engaged.Solo = {
		ammo="Ginsen",
		head="Adhemar Bonnet +1",
		--Pillager's Vest +3 in time...
		body="Adhemar Jacket +1",
		hands="Adhemar Wristbands +1",
		--Samnuha Tights - Perfect Augments
		legs="Malignance tights",
		--Plunderer's Poulaines +3
		feet="Malignance boots",
		neck="Sanctity Necklace",
		--Reiki Yotai
		waist="Grunfeld Rope",
		--Sherida Earring
		left_ear="Brutal Earring",
		--Dedition Earring
		right_ear="Cessance Earring",
		left_ring="Epona's Ring",
		right_ring="Hetairoi Ring",
		--Toutatis's Cape  DEX +20, Acc +30, Atk +20, STP +10
		back="Canny Cape"
	}
	
	sets.engaged.TH = {
		ammo="Ginsen",
		head="Adhemar Bonnet +1",
		body="Adhemar Jacket +1",
		hands="Plun. Armlets +1",
		legs="Malignance tights",
		feet="Mummu Gamash. +2",
		neck="Sanctity Necklace",
		waist="Chaac Belt",
		left_ear="Brutal Earring",
		right_ear="Cessance Earring",
		left_ring="Epona's Ring",
		right_ring="Hetairoi Ring",
		back="Canny Cape"
	}
	
	--Accuracy Max
	-- Aeneas
    -- Twashtar (Level 119 III)
    -- C. Palug Stone
    -- Pill. Bonnet +3
    -- Pillager's Vest +3
    -- Pill. Armlets +3
    -- Pill. Culottes +3
    -- Plun. Poulaines +3
    -- Asn. Gorget +2 DEX/AGI +15, TA +4
    -- Sherida Earring
    -- Telos Earring
    -- Ilabrat Ring
    -- Regal Ring
    -- Kentarch Belt +1
    -- Toutatis's Cape DEX +20, Acc +30, Atk +20, STP +10
	sets.engaged.ACC =  {
		ammo="Amar cluster",
		head="Malignance Chapeau",
		body="Adhemar Jacket +1",
		hands="Mummu Wrists +2",
		legs="Malignance tights",
		feet="Malignance boots",
		neck="Subtlety Spec.",
		waist="Grunfeld Rope",
		left_ear="Brutal Earring",
		right_ear="Cessance Earring",
		left_ring="Mummu Ring",
		right_ring="Beeline Ring",
		back="Canny Cape"
	}
	
	 sets.engaged.Defense = {
		 ammo="Yetshila",
		 head="Malignance Chapeau",
		 body="Malignance tabard",
		 hands="Malignance gloves",
		 legs="Malignance tights",
		 feet="Malignance boots",
		 neck="Loricate Torque +1",
		 waist="Grunfeld Rope",
		 left_ear="Infused Earring",
		 right_ear="Hearty Earring",
		 left_ring="Patricius Ring",
		 right_ring="Defending Ring",
		 back="Repulse Mantle"
	 }	
	
	
---- .:: Job Abilities Sets ::. ---->
    sets.JA = {}
	
    -- Dancer's Abilities --
    sets.JA.Waltz = {head="Mummu Bonnet +2", legs="Dashing subligar"}
	sets.JA.Step = 	{}
    sets.JA.Stun = {}
	
	
	-- Thief's Abilities --
    sets.JA['Sneak Attack'] = {}
    sets.JA.SATH = set_combine(sets.JA['Sneak Attack'], { hands="Plun. Armlets +1", feet="Skulker's Poulaines +1"})

    sets.JA['Trick Attack'] = set_combine(sets.JA['Sneak Attack'], {hands="Pillager's Armlets +1"})
	
	
    sets.JA.TATH = set_combine(sets.JA['Trick Attack'], { hands="Pillager's Armlets +1", feet="Skulker's Poulaines +1"})
	
	
    sets.JA.SATA = set_combine(sets.JA['Sneak Attack'], {})
	--sets.JA["Assassin's Charge"] = {feet="Plun. Poulaines +1"}
	sets.JA['Feint'] = {legs="Plun. Culottes +1"}
	--sets.JA['Conspirator'] = {body="Raider's Vest +2"}
	sets.JA['Steal'] = { hands="Pill. Armlets +1", legs="Pill. Culottes", feet="Pill. Poulaines", neck="Pentalagus charm"}
	--sets.JA['Mug'] = {head="Plun. Bonnet +1"}
	sets.JA['Despoil'] = {feet="Skulker's Poulaines +1"}
	--sets.JA['Accomplice'] = {head="Skulker's Bonnet +1",}
	sets.JA['Flee'] = {feet="Pill. Poulaines"}
	sets.JA['Hide'] = {body="Pillager's Vest"}
	sets.JA['Perfect Dodge'] = {hands="Plun. Armlets +1"}
	
	
---- .:: Weapon Skill Sets ::. ---->
    -- .::Generic Sets::. --
    sets.WSD = {	
		ammo="Yetshila",
		head="Adhemar Bonnet +1",
		body="Herculean Vest",
		hands="Meg. Gloves +2",
		legs="Malignance tights",
		feet="Malignance boots",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Moonshade Earring",
		right_ear="Ishvara Earring",
		left_ring="Mummu Ring",
		right_ring="Rajas Ring",
		back="Toutatis's Cape"
	}
	
    sets.Aeolian = {	
		ammo="Dosis tathlum",
		head="Malignance Chapeau",
		body="Herculean Vest",
		hands="Mummu Wrists +2",
		legs="Mummu kecks +2",
		feet="Mummu Gamash. +2",
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
		ammo="Yetshila",
		head="Adhemar Bonnet +1",
		body="Adhemar Jacket +1",
		hands="Mummu Wrists +2",
		legs="Malignance tights",
		feet="Mummu Gamash. +2",
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


-- Precast Function --
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
	-- 80% DEX Modifier Rudra's Storm
	-- 50% DEX Modifier Evisceration
	-- 60% DEX Modifier Mandalic Stab
    elseif spell.name == "Rudra's Storm" or spell.name == "Evisceration" or spell.name == "Mandalic Stab" then
		equip(sets.WSD)

	-- DEX 40% INT 40% Modifier Aeolian Edge | Also pack on all of that MAB+MACC shit
	elseif spell.name == "Aeolian Edge" then
		equip(sets.Aeolian)

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
	elseif EngagedArray[EngagedIndex] == 'Solo' then
		equip(sets.engaged.Solo)	
	elseif EngagedArray[EngagedIndex] == 'ACC' then
		equip(sets.engaged.ACC)
	elseif EngagedArray[EngagedIndex] == 'Defense' then
		equip(sets.engaged.Defense)	
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
