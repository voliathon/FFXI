function RedMageCapes()
	RedMageCapes = {}
	RedMageCapes.TP = {name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}}
	RedMageCapes.FastCast = {name="Sucellos's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Fast Cast"+10'}}
	RedMageCapes.DualWield = {name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dual Wield"+10'}}
	RedMageCapes.STRWS = {name="Sucellos's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%'}}
end

function get_sets()
	-- Instantiate RedMageCapes
	RedMageCapes()

	-- Set macro book/set --
    send_command('input /macro book 1;wait .1;input /macro set 1')
	
	-- Toggle Weapon F8 Key
	send_command('bind !f8 gs c C8') 
	send_command('bind ^f8 gs c Reverse Toggle Weapon')
	
	-- Toggle Equipment F9
    send_command('bind !f9 gs c C9')
	send_command('bind ^f9 gs c Reverse Engaged Set')
	
	-- Toggle Burst Mode
	send_command('bind ^f10 gs c C10')
	-- Default Disabled Burst unless set with F10
	Burst = 'Disabled'
	
    -- Job Abilities for Red Mage --
    sets.Chainspell = {body="Vitiation tabard +4"}
    sets.Composure = {head="Lethargy Chappel +3",body="Lethargy sayon +3",hands="Lethargy gantherots +3",legs="Leth. Fuseau +3",feet="Lethargy Houseaux +3"}
	sets.Saboteur = {hands="Lethargy gantherots +3"}
	sets.Dispel = {neck="Duelist's torque +2"}

    -- Fast Cast for Red Mage --
    sets.FastCast = {
		ammo="Impatiens",
		head="Atro. Chapeau +4",
		body={ name="Vitiation Tabard +4", augments={'Enhances "Chainspell" effect',}},
		hands="Leth. Ganth. +3",
		legs="Querkening Brais",
		feet={ name="Merlinic Crackows", augments={'INT+1','Pet: "Mag.Atk.Bns."+28','"Refresh"+2','Accuracy+8 Attack+8',}},
		neck="Incanter's Torque",
		waist="Embla Sash",
		left_ear="Loquac. Earring",
		right_ear={ name="Leth. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+14','Mag. Acc.+14','"Dbl.Atk."+5',}},
		left_ring="Kishar Ring",
		right_ring="Freke Ring",
		back=RedMageCapes.FastCast
	}

	-- Enhancing Spells \\Generalized//
    sets.Enhancing = {
		main="Crocea Mors",
		sub="Ammurapi Shield",
		ammo="Pemphredo Tathlum",
		head={ name="Telchine Cap", augments={'Enh. Mag. eff. dur. +9'}},
		body="Vitiation tabard +4",
		hands="Atro. gloves +4",
		legs="Atrophy Tights +4",
		feet="Lethargy Houseaux +3",
		neck={ name="Dls. Torque +2", augments={'Path: A'}},
		waist="Embla Sash",
		left_ear="Mimir Earring",
		right_ear="Lethargy Earring +1",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back=RedMageCapes.FastCast
	}
	
	sets.Gain = set_combine(sets.Enhancing,  {
		hands="Vitiation gloves +4"
	})
	
	sets.Spikes = set_combine(sets.Enhancing,  {
		legs="Vitiation tights +4"
	})	
	
	-- Stoneskin
	sets.Stoneskin = set_combine(sets.FastCast,  {
		legs="Querkening Brais"
	})
	
	sets.TP = {
		head="Malignance Chapeau",
		body="Malignance tabard",
		hands="Bunzi's gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Anu Torque",
		waist="Sailfi belt +1",
		left_ear="Sherida Earring",
		right_ear={ name="Leth. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+14','Mag. Acc.+14','"Dbl.Atk."+5'}},
		left_ring="Ilabrat Ring",
		right_ring="Hetairoi Ring",
		back=RedMageCapes.TP,
		ammo="Coiste Bodhar"
	}	

    sets.Cure = set_combine(sets.FastCast,  {
		head={ name="Vanya Hood", augments={'MND+10','Spell interruption rate down +15%','"Conserve MP"+6'}},
		body={ name="Vanya Robe", augments={'MP+50','"Cure" potency +7%','Enmity-6',}},
		hands={ name="Vanya Cuffs", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3'}},
		legs="Atrophy Tights +4",
		feet={ name="Vanya Clogs", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6'}},
		neck="Phalaina locket",
		waist="Embla Sash",
		left_ear="Meili Earring",
		right_ear="Mendi. Earring",
		left_ring="Mephitas's ring +1",
		right_ring="Lebeche Ring",
		back="Fi follet cape +1"
	})

  	-- Elemental Magic sets...  When shit needs to die, this is the set to make it happen
	sets.ElementalMagic = {
		head="Ea Hat +1",
		body="Ea Houppelande +1",
		hands="Leth. Ganth. +3",
		legs="Leth. Fuseau +3",
		feet="Leth. Houseaux +3",
		neck="Mizu. Kubikazari",
		waist="Eschan Stone",
		left_ear="Malignance Earring",
		right_ear="Regal Earring",
		left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		right_ring="Freke Ring",
		back=RedMageCapes.FastCast,
		ammo="Pemphredo Tathlum"
	}
	
	sets.BurstMagic = {
		ammo="Pemphredo Tathlum",
		head="Ea Hat +1",
		body="Ea Houppe. +1",
		hands="Ea Cuffs",
		legs="Leth. Fuseau +3",
		feet="Ea Pigaches",
		neck="Mizu. Kubikazari",
		waist="Eschan Stone",
		left_ear="Malignance Earring",
		right_ear="Regal Earring",
		left_ring="Locus Ring",
		right_ring="Freke Ring",
		back=RedMageCapes.FastCast
	}
	
    sets.Enfeebling = set_combine(sets.FastCast,  {
		ammo="Regal Gem",
		head="Vitiation chapeau +4",
		body="Lethargy sayon +3",
		hands="Lethargy gantherots +3",
		legs={ name="Chironic Hose", augments={'Attack+14','Mag. Acc.+13','"Treasure Hunter"+1','Mag. Acc.+18 "Mag.Atk.Bns."+18'}},
		feet="Vitiation Boots +4",
		neck={ name="Dls. Torque +2", augments={'Path: A'}},
		waist="Eschan Stone",
		left_ear="Snotra Earring",
		right_ear="Vor Earring",
		left_ring="Kishar Ring",
		right_ring="Stikini Ring +1",
		back=RedMageCapes.FastCast
	})

	sets.Cursna = set_combine(sets.FastCast,  {
		main="Gada",
		sub="Ammurapi shield",
		hands="Vanya cuffs",
		legs="Vanya slops",
		feet="Vanya clogs",
		right_ring="Menelaus's ring"
	})

	-- Impact whenever the fuck I get the damn cloak
    sets.Impact = {    
      body="Twilight Cloak"
	}

	sets.Accuracy = {
		head="Leth. Chappel +3",
		body="Lethargy Sayon +3",
		hands="Leth. Ganth. +3",
		legs="Leth. Fuseau +3",
		feet="Leth. Houseaux +3",
		neck="Null loop",
		waist="Kentarch Belt +1",
		left_ear="Sherida Earring",
		right_ear={ name="Leth. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+14','Mag. Acc.+14','"Dbl.Atk."+5',}},
		left_ring="Ilabrat Ring",
		right_ring="Rajas Ring",
		back=RedMageCapes.TP
	}

	-- PDT Set
    sets.PDT = {
		head="Lethargy Chappel +3",
		body="Lethargy sayon +3",
		hands="Lethargy gantherots +3",
		legs="Nyame flanchard",
		feet="Nyame sollerets",
		neck="Null loop",
		waist="Slipor Sash",
		left_ear="Genmei Earring",
		right_ear="Ethereal Earring",
		left_ring="Gelatinous Ring +1",
		right_ring="Defending Ring",
		back=RedMageCapes.TP		
	}

	-- Magic Defense and Magic Defense Set
    sets.MDT = {
		head="Nyame Helm",
		body="Nyame mail",
		hands="Nyame gauntlets",
		legs="Nyame flanchard",
		feet="Nyame sollerets",
		neck="Null loop",
		waist="Slipor Sash",
		left_ear="Genmei Earring",
		right_ear="Ethereal Earring",
		left_ring="Gelatinous Ring +1",
		right_ring="Defending Ring",
		back=RedMageCapes.TP		
	}
	
    sets.Movement = {		
		ammo="Homiliary",
		head="Leth. Chappel +3",
		body="Lethargy Sayon +3",
		hands="Leth. Ganth. +3",
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Null loop",
		waist="Sailfi belt +1",
		left_ear="Sherida Earring",
		right_ear={ name="Leth. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+14','Mag. Acc.+14','"Dbl.Atk."+5',}},
		left_ring="Shneddick Ring",
		right_ring="Stikini Ring +1",
		back=RedMageCapes.TP		
	}

	sets.RefreshSelf = set_combine(sets.PDT,  {
		body="Lethargy sayon +3",
		ammo="Homiliary",
		head="Vitiation chapeau +4",
	    hands={ name="Chironic Gloves", augments={'Accuracy+6','CHR+1','"Refresh"+2','Mag. Acc.+15 "Mag.Atk.Bns."+15',}},
		legs={ name="Merlinic Shalwar", augments={'DEX+2','Accuracy+14','"Refresh"+2','Mag. Acc.+11 "Mag.Atk.Bns."+11'}},
	    feet={ name="Merlinic Crackows", augments={'INT+1','Pet: "Mag.Atk.Bns."+28','"Refresh"+2','Accuracy+8 Attack+8'}},
		waist="Fucho-no-obi",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1"
	})

    
	sets.Refresh = set_combine(sets.Enhancing,  {
		body="Atrophy tabard +4",
		legs="Leth. Fuseau +3",
		ammo="Homiliary",
		head="Vitiation chapeau +4",
		waist="Fucho-no-obi",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1"
	})

	sets.Enspell = set_combine(sets.Enhancing,  {
		legs="Vitiation Tights +4"
	})	
	
	sets.EnspellActive = set_combine(sets.TP, {
		range="Ullr",
		head="Malignance Chapeau",
		body="Ayanmo Corazza +2",
		hands="Aya. Manopolas +2",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck={ name="Dls. Torque +2", augments={'Path: A',}},
		waist="Orpheus's Sash",
		left_ear="Sherida Earring",
		right_ear={ name="Leth. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+14','Mag. Acc.+14','"Dbl.Atk."+5',}},
		left_ring="Ilabrat Ring",
		right_ring="Hetairoi Ring",
		back=RedMageCapes.DualWield	
	})
	
	
    ------------------------------------------------------------------------------------------------------------------
    -- Weaponskill sets
    ------------------------------------------------------------------------------------------------------------------
	 sets.SavageBlade = {
		head="Vitiation chapeau +4",
		body="Nyame mail",
		hands="Atro. gloves +4",
		legs="Nyame flanchard",
		feet="Leth. Houseaux +3",
		neck="Rep. Plat. Medal",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Sherida Earring",
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		left_ring="Cornelia's Ring",
		right_ring="Sroda Ring",
		back=RedMageCapes.STRWS,
		ammo="Oshasha's Treatise"
	 }
	 
	 sets.SeraphBlade = {
		head="Lethargy Chappel +3",
		body="Lethargy Sayon +3",
		hands="Jhakri Cuffs +2",
		legs="Leth. Fuseau +3",
		feet="Lethargy Houseaux +3",
		neck="Sanctity Necklace",
		waist="Orpheus's Sash",
		left_ear="Regal Earring",
		right_ear="Malignance Earring",
		left_ring="Freke Ring",
		right_ring="Cornelia's Ring",
		back=RedMageCapes.STRWS,
		ammo="Oshasha's Treatise"
	 }
	 
	 sets.SanguineBlade = {
		head="Lethargy Chappel +3",
		body="Lethargy Sayon +3",
		hands="Jhakri Cuffs +2",
		legs="Leth. Fuseau +3",
		feet="Lethargy Houseaux +3",
		neck="Sanctity Necklace",
		waist="Orpheus's Sash",
		left_ear="Regal Earring",
		right_ear="Malignance Earring",
		left_ring="Archon Ring",
		right_ring="Cornelia's Ring",
		back=RedMageCapes.STRWS,		
		ammo="Oshasha's Treatise"	 
	 }
	 

	-- Engaged Sets Toggle--
	sets.engaged = {}
	sets.engaged.index = {'TP', 'Movement', 'TakingLessPhysicalDamage', 'TakingLessMagicDamage', 'Accuracy', 'RefreshSelf','EnspellActive'}
	engaged_ind = 1  	 
	 
	sets.engaged.TP = set_combine(sets.TP, {}) 
	sets.engaged.Movement = set_combine(sets.Movement, {})
	sets.engaged.TakingLessPhysicalDamage = set_combine(sets.PDT, {})
	sets.engaged.TakingLessMagicDamage = set_combine(sets.MDT, {})
	sets.engaged.Accuracy = set_combine(sets.Accuracy, {})
	sets.engaged.RefreshSelf = set_combine(sets.RefreshSelf, {})
	sets.engaged.EnspellActive = set_combine(sets.EnspellActive, {})
		 

	 -- Weapon Toggle--
	 sets.weapon = {}
	 sets.weapon.index = {'Nuke', 'Nuke2', 'HiEnspell', 'LowEnspell', 'Refresh', 'NaeglingShield', 'NaeglingTauret'}
	 weapon_ind = 1     
	  
	 sets.weapon.Nuke = {
		main="Wizard's rod",
		sub="Ammurapi Shield"
	 } 
	 sets.weapon.Nuke2 = {
		main="Bunzi's rod",
		sub="Ammurapi Shield"
	 } 	 
	 sets.weapon.HiEnspell = {
		main="Crocea Mors",
		sub="Daybreak"
	 }  
	 sets.weapon.LowEnspell = {
		main="Infiltrator",
		sub="Sacro Bulwark"
	 }  
	 sets.weapon.Refresh = {
		main="Bolelabunga",
		sub="Sacro Bulwark"
	 }  
	 sets.weapon.NaeglingShield = {
		main="Naegling",
		sub="Sacro Bulwark"
	 }
	 sets.weapon.NaeglingTauret = {
		main="Naegling",
		sub="Tauret"
	 }
 
end

function precast(spell,abil)
	--Should probably Fast Cast everything here for Red Mage but holy smokes FastCast is already...Fast for RDM.
	if spell.name == "Composure" then
		equip(sets.Composure)
	end
	if spell.name == 'Refresh' or spell.name == 'Refresh II' or spell.name == 'Refresh III' then
		equip(sets.Refresh)
	end
	if spell.action_type == 'Enhancing Magic' then
		equip(sets.FastCast)
	end
	if spell.skill == 'Elemental Magic' then
		equip(sets.ElementalMagic)
		get_obi(spell)
	end
	--WS Lookups
	if spell.name == "Savage Blade" then
		equip(sets.SavageBlade)
	elseif spell.name == "Sanguine Blade" then
		equip(sets.SanguineBlade)
	elseif spell.name == "Seraph Blade" or spell.name == "Shining Blade" then
		equip(sets.SeraphBlade)
	end

end

function midcast(spell)
	if spell.name == "Dispel" then
		equip(sets.Dispel)
	end
	if spell.skill == 'Enhancing Magic' then
		if spell.name == 'Refresh' or spell.name == 'Refresh II' or spell.name == 'Refresh III' then
			equip(sets.Refresh)
		elseif spell.name == 'Stoneskin' then
			equip(sets.Stoneskin)
		elseif spell.name == 'Enfire' or spell.name == 'Enfire II' or spell.name == 'Enstone' or spell.name == 'Enstone II' or spell.name == 'Enblizzard' or spell.name == 'Enblizzard II' or spell.name == 'Enaero' or spell.name == 'Enaero II' or spell.name == 'Enthunder' or spell.name == 'Enthunder II' or spell.name == 'Enwater' or spell.name == 'Enwater II' then
			equip(sets.Enspell)
		elseif string.find(spell.english,'Gain') then
			equip(sets.Gain)
		elseif string.find(spell.english,'Spikes') then
			equip(sets.Spikes)
		else
			--temper hits here
			equip(sets.Enhancing)
		end
	end

	if spell.name == 'Cursna' then
		equip(sets.Cursna)
	end
	if string.find(spell.english,'Cur') then 
		equip(sets.Cure)
	end
	if spell.skill == 'Elemental Magic' then
		send_command('@input /echo Bonus in midcast is: '..bonus..'%')	
		if Burst == 'Disabled' then 
			equip(sets.ElementalMagic)
		else
			equip(sets.BurstMagic)
		end
		if bonus > 0 then
			equip({waist = "Hachirin-no-obi"})
		end		
	end
	if spell.skill == 'Enfeebling Magic' then
		equip(sets.Enfeebling)
	end	

end

--We need to do some thinking and testing for this set...
function aftercast(spell)
	if string.find(spell.english,'Warp') then
		--do fuck all nothing
	else
		equip_current()
	end
end

function equip_current()
	equip(sets.engaged[sets.engaged.index[engaged_ind]]) 
	equip_weapon()
	enspellCheck()
end

function equip_weapon()
	equip(sets.weapon[sets.weapon.index[weapon_ind]])
end


--123 is a red color for the text output
--158 is a green color for the text output
function self_command(command)
	if command == 'C8' then -- Toggling Weapons--	
		weapon_ind = weapon_ind +1
		if weapon_ind > #sets.weapon.index then weapon_ind = 1 end
		send_command('@input /echo <----- Gear Set changed to '..sets.weapon.index[weapon_ind]..' ----->')
		equip_weapon()
	elseif command == 'Reverse Toggle Weapon' then --Reverse Toggling of Weapons
		weapon_ind = weapon_ind -1
		if weapon_ind == 0 then weapon_ind = #sets.weapon.index end
		send_command('@input /echo <----- Gear Set changed to '..sets.weapon.index[weapon_ind]..' ----->')
		equip_weapon()
	elseif command == 'C9' then
		engaged_ind = engaged_ind +1
		if engaged_ind > #sets.engaged.index then engaged_ind = 1 end
		send_command('@input /echo <----- Gear Set changed to '..sets.engaged.index[engaged_ind]..' ----->')
		equip_current()
	elseif command == 'Reverse Engaged Set' then
		engaged_ind = engaged_ind -1
		if engaged_ind == 0 then engaged_ind = #sets.engaged.index end
		send_command('@input /echo <----- Gear Set changed to '..sets.engaged.index[engaged_ind]..' ----->')
		equip_current()
	elseif command == 'C10' then
		if Burst == 'Disabled' then 
			Burst = 'Enabled'
		else
			Burst = 'Disabled'
		end
		send_command('@input /echo <----- Burst Mode changed to '..Burst..' ----->')
	end	 
end



-- Send tell to self if I died --
windower.register_event('status change', function()
	if player.status == 'Dead' then
		send_command('@input /tell <me> Wakies Wakies Voreus We hit 0 HP on accident. We shall live forever!!!')
	end
end)

function enspellCheck()
	if buffactive['Enthunder'] or buffactive['Enstone'] or buffactive['Enaero'] or buffactive['Enblizzard'] or buffactive['Enfire'] or buffactive['Enwater'] or buffactive['Enthunder II'] or buffactive['Enstone II'] or buffactive['Enaero II'] or buffactive['Enblizzard II'] or buffactive['Enfire II'] or buffactive['Enwater II'] then 
		equip({waist="Orpheus's sash"})
		--send_command('@input /echo O-Sash equipped')
	end
end

-- 10% bonus for magic of the day
-- 10% bonus for magic matching single weather
-- 20% bonus for magic matching single weather and day
-- 25% bonus for magic matching double weather
-- 35% bonus for magic matching double weather and day
-- Will also gain an equivalent negative bonuses during opposing day/weather 

-- Call this function in precast to see if you have any storm effects.
-- Function to check if the user has a storm effect
function has_storm_effect()
    local storm_effects = {
        "Firestorm", "Hailstorm", "Windstorm", "Sandstorm",
        "Thunderstorm", "Rainstorm", "Aurorastorm", "Voidstorm"
    }

    for _, effect in ipairs(storm_effects) do
        if buffactive[effect] then
            return true
        end
    end

    return false
end

-- Function to check if the Hachirin-no-Obi should be used
-- This returns a true or false
function use_hachirin_no_obi(spell)
    bonus = 0
	-- Define the opposing elements
	local opposing_elements = {
		Fire = "Ice",
		Ice = "Fire",
		Wind = "Earth",
		Earth = "Wind",
		Lightning = "Water",
		Water = "Lightning",
		Light = "Dark",
		Dark = "Light"
	}
	
	-- Define the weather intensity values
	local weather_to_intensity = {
		["Clear"] = 0,
		["Sunshine"] = 0,
		["Cloudy"] = 0,
		["Fog"] = 0,
		["Fine patches"] = 0,
		["Hot spells"] = 10,
		["Heat waves"] = 25,
		["Snow"] = 10,
		["Blizzards"] = 25,
		["Winds"] = 10,
		["Gales"] = 25,
		["Dust storms"] = 10,
		["Sand storms"] = 25,
		["Thunder"] = 10,
		["Thunderstorms"] = 25,
		["Rain"] = 10,
		["Squalls"] = 25,
		["Auroras"] = 10,
		["Stellar glare"] = 25,
		["Gloom"] = 10,
		["Darkness"] = 25
	}

	-- Debug: Spell Element Check
	--send_command('@input /echo Spell Element: ' .. spell.element)
	-- Debug: Day Element Check
	--send_command('@input /echo Day Element: ' .. world.day_element)
    
	-- Check if the spell element matches the current day
    if spell.element == world.day_element then
        bonus = bonus + 10
    elseif spell.element == opposing_elements[world.day_element] then
        bonus = bonus - 10
    end

	-- Debug: This returns the weather name found in weather_to_intensity example: Rain
	--send_command('@input /echo Self Weather Type: ' .. world.weather) 
	-- Debug: This returns back the weather of the zone or the storm.  
	--        Storm weather will come back first. Zone weather returns if there is no storm.
	--send_command('@input /echo Weather Type: ' .. world.weather_element)
	
    -- Check if a storm spell is up.
	if has_storm_effect() then
	    -- check if the spell and storm weather is the same.
		--send_command('@input /echo spell.element: ' .. spell.element)
		--send_command('@input /echo world.weather: ' .. world.weather)
		--send_command('@input /echo world.weather_element: ' .. world.weather_element)
		if spell.element == world.weather_element then
			bonus = bonus + weather_to_intensity[world.weather]
		-- check if the spell and storm weather are NOT the same.
		elseif spell.element == opposing_elements[world.weather_element] then
			bonus = bonus - weather_to_intensity[world.weather]
		end
	-- check if the spell and zone weather is the same.
	elseif spell.element == world.weather_element then
		bonus = bonus + weather_to_intensity[world.weather]
	-- check if the spell and zone weather are NOT the same.
	elseif spell.element == opposing_elements[world.weather_element] then
		bonus = bonus - weather_to_intensity[world.weather]
	end
	
	--Debug
	--send_command('@input /echo Bonus Amount: ' .. bonus.. '%')       
	-- Determine if the Hachirin-no-Obi should be used
    if bonus > 0 then
        return true
    else
        return false
    end
end

-- Function to get the appropriate obi
function get_obi(spell)
    if use_hachirin_no_obi(spell) then
		--Debug
		--send_command('@input /echo Waist: Hachirin-no-Obi')
        return { equip({waist = "Hachirin-no-obi"}) }
    else
		--Debug
		--send_command('@input /echo Waist: Tengu-no-Obi')	
        return { equip({waist = "Eschan Stone"}) }
    end
end
