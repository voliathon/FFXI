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
    EngagedArray = {"TH","TP","Accuracy", "Tank", "Evasion"}	-- Press ctrl + F10 for Engaged Array --
	Capacity = 'OFF' -- Press ctrl + F11 if you want to be in Capacity mode  --		


	-- Utilities --	
    SA = false
    TA = false	

	-- Ability Mapping --
	THStep = S{"Quickstep","Box Step","Stutter Step","Animated Flourish"}

	---- .:: TP Sets ::. ----->
    sets.engaged = {}
	
	sets.engaged.TH = {
		ammo="Ginsen",
		head="Mummu Bonnet +2",
		body="Volte Jupon",
		hands={ name="Plun. Armlets +3", augments={'Enhances "Perfect Dodge" effect'}},
		legs="Volte Hose",
		feet="Skulk. Poulaines +2",
		neck="Anu Torque",
		waist="Chaac Belt",
		left_ear="Brutal Earring",
		right_ear="Odr Earring",
		left_ring="Epona's Ring",
		right_ring="Hetairoi Ring"
	}
	
	sets.engaged.TP = {
		ammo="Ginsen",
		head={ name="Dampening Tam", augments={'DEX+10','Accuracy+15','Mag. Acc.+15','Quadruple Attack +3',}},
		body={ name="Herculean Vest", augments={'INT+5','"Dbl.Atk."+2','Quadruple Attack +3','Accuracy+6 Attack+6',}},
		hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		legs="Samnuha tights",
		feet="Malignance Boots",
		neck="Clotharius Torque",
		waist="Windbuffet Belt +1",
		left_ear="Brutal Earring",
		right_ear="Telos Earring",
		left_ring="Chirich Ring +1",
		right_ring="Hetairoi Ring",
		back="Canny Cape"
	}
	
	sets.engaged.Accuracy =  {
		ammo="Yamarang",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Sanctity Necklace",
		waist="Eschan Stone",
		left_ear="Odr Earring",
		right_ear="Telos Earring",
		left_ring="Chirich Ring +1",
		right_ring="Chirich Ring +1",
		back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%',}}
	}

	 sets.engaged.Tank = {
		 ammo="Staunch tathlum",
		 head="Malignance Chapeau",
		 body="Malignance tabard",
		 hands="Malignance gloves",
		 legs="Malignance tights",
		 feet="Skulker's Poulaines +2",
		 neck="Loricate Torque +1",
		 waist="Flume belt",
		 left_ear="Infused Earring",
		 right_ear="Eabani Earring",
		 left_ring="Fortified Ring",
		 right_ring="Defending Ring",
		 back="Repulse Mantle"
	 }	
	
	sets.engaged.Evasion = {
		ammo="Yamarang",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Warder's Charm",
		waist="Kasiri Belt",
		left_ear="Eabani Earring",
		right_ear="Infused Earring",
		left_ring="Defending Ring",
		right_ring="Fortified Ring",
		back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%',}}
	}	
	

---- .:: Job Abilities Sets ::. ---->
    sets.JA = {}
	
    -- Dancer's Abilities --
    sets.JA.Waltz = {head="Mummu Bonnet +2", legs="Dashing subligar"}
	sets.JA.Step = 	{}
    sets.JA.Stun = {}
	
	
	-- Thief's Abilities --
    sets.JA['Sneak Attack'] = {}
    sets.JA.SATH = set_combine(sets.JA['Sneak Attack'], { hands="Plun. Armlets +3", feet="Skulker's Poulaines +2"})

    sets.JA['Trick Attack'] = set_combine(sets.JA['Sneak Attack'], {hands="Pillager's Armlets +1"})
    sets.JA['Trick Attack'] = set_combine(sets.JA['Sneak Attack'], {hands="Pillager's Armlets +1"})
	
	
    sets.JA.TATH = set_combine(sets.JA['Trick Attack'], { hands="Pillager's Armlets +1", feet="Skulker's Poulaines +2"})
	
	
    sets.JA.SATA = set_combine(sets.JA['Sneak Attack'], {})
	--sets.JA["Assassin's Charge"] = {feet="Plun. Poulaines +1"}
	sets.JA['Feint'] = {legs="Plun. Culottes +1"}
	--sets.JA['Conspirator'] = {body="Raider's Vest +2"}
	sets.JA['Steal'] = { hands="Pill. Armlets +1", legs="Pill. Culottes", feet="Pill. Poulaines", neck="Pentalagus charm"}
	--sets.JA['Mug'] = {head="Plun. Bonnet +1"}
	sets.JA['Despoil'] = {feet="Skulker's Poulaines +2"}
	--sets.JA['Accomplice'] = {head="Skulker's Bonnet +1",}
	sets.JA['Flee'] = {feet="Pill. Poulaines"}
	sets.JA['Hide'] = {body="Pillager's Vest"}
	sets.JA['Perfect Dodge'] = {hands="Plun. Armlets +3"}
	
	
---- .:: Weapon Skill Sets ::. ---->
    -- .::Generic Sets::. --
    sets.WSD = {	
		ammo="Yetshila +1",
		head={ name="Herculean Helm", augments={'AGI+6','CHR+1','Weapon skill damage +7%',}},
		body={ name="Herculean Vest", augments={'Phys. dmg. taken -3%','"Mag.Atk.Bns."+21','Weapon skill damage +6%','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
		hands="Meg. Gloves +2",
		legs={ name="Herculean Trousers", augments={'AGI+4','Attack+10','Weapon skill damage +6%','Mag. Acc.+4 "Mag.Atk.Bns."+4',}},
		feet={ name="Herculean Boots", augments={'Enmity-4','"Blood Pact" ability delay -3','Weapon skill damage +8%','Accuracy+20 Attack+20','Mag. Acc.+9 "Mag.Atk.Bns."+9',}},
		neck="Fotia Gorget",
		waist="Grunfeld Rope",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Odr Earring",
		left_ring="Epaminondas's Ring",
		right_ring="Hetairoi Ring",
		back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%',}}
	}
	
	sets.Evisceration = {
		ammo="Yetshila +1",
		head={ name="Adhemar Bonnet +1", augments={'STR+12','DEX+12','Attack+20',}},
		body={ name="Herculean Vest", augments={'INT+5','"Dbl.Atk."+2','Quadruple Attack +3','Accuracy+6 Attack+6',}},
		hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		legs="Meg. Chausses +2",
		feet="Malignance Boots",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Odr Earring",
		left_ring="Epaminondas's Ring",
		right_ring="Hetairoi Ring",
		back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%',}}	
	}
	
    sets.Aeolian = {	
		ammo="Pemphredo Tathlum",
		head="Nyame Helm",
		body={ name="Herculean Vest", augments={'Phys. dmg. taken -3%','"Mag.Atk.Bns."+21','Weapon skill damage +6%','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet={ name="Herculean Boots", augments={'Enmity-4','"Blood Pact" ability delay -3','Weapon skill damage +8%','Accuracy+20 Attack+20','Mag. Acc.+9 "Mag.Atk.Bns."+9',}},
		neck="Baetyl Pendant",
		waist="Orpheus's Sash",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Friomisi Earring",
		left_ring="Epaminondas's Ring",
		right_ring="Dingir Ring",
		back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%',}}
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
	-- 50% DEX Modifier Evisceration / Crits per hits
	elseif spell.name =="Evisceration" then
		equip(sets.Evisceration)
	
	-- 80% DEX Modifier Rudra's Storm <--This is a quad hit to Crit Hit DMG+
	-- 60% DEX Modifier Mandalic Stab
    elseif spell.name == "Rudra's Storm" or spell.name == "Mandalic Stab" then
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
