       -- _                                               
      -- / \    _____   _ _ __ ___ _   _ ___              
     -- / _ \  |_  / | | | '__/ _ \ | | / __|             
    -- / ___ \  / /| |_| | | |  __/ |_| \__ \             
   -- /_/_  \_\/___|\__,_|_|  \___|\__,_|___/             
  -- / ___| ___  ___  _ __ ___   __ _ _ __   ___ ___ _ __ 
 -- | |  _ / _ \/ _ \| '_ ` _ \ / _` | '_ \ / __/ _ \ '__|
 -- | |_| |  __/ (_) | | | | | | (_| | | | | (_|  __/ |   
  -- \____|\___|\___/|_| |_| |_|\__,_|_| |_|\___\___|_|   
                                                      

function get_sets()
	-- Set macro book/set --
    send_command('input /macro book 10;wait .1;input /macro set 1')
	
	bonus = 0

	-- Binds for switching weapon modes
    send_command('bind !f8 gs c toggle weapon set')
	send_command('bind ^f8 gs c reverse weapon set')
	
	-- Binds for switching gear sets
    send_command('bind !f9 gs c toggle engage set')
	send_command('bind ^f9 gs c reverse engage set')
	
	-- Toggle Burst Mode
	send_command('bind ^f10 gs c C10')
	-- Default Disabled Burst unless set with F10
	Burst = 'Disabled'	
	
    -- Job Abilities for Geomancer --
    sets.Bolster = {body="Bagua Tunic +1"}
    sets.LifeCycle = {body="Geomancy Tunic +1", back="Nantosuelta's Cape"}
    sets.FullCircle = {head="Azimuth Hood +2"}
    sets.CurativeRecantation = {hands="Bagua Mitaines +1"}
    sets.MendingHalation = {legs="Bagua Pants"}
    sets.RadialArcana = {feet="Bagua Sandals +1"}

    -- Fast Cast for Geomancer --
    sets.FastCast = {
		range="Dunna",
		head={ name="Merlinic Hood", augments={'Pet: "Mag.Atk.Bns."+25','Crit. hit damage +1%','Magic burst dmg.+15%','Mag. Acc.+12 "Mag.Atk.Bns."+12',}},
		body="Agwu's Robe",
		hands="Agwu's Gages",
		legs="Volte Brais",
		feet={ name="Merlinic Crackows", augments={'Magic burst dmg.+11%','CHR+3','"Mag.Atk.Bns."+15',}},
		neck="Voltsurge Torque",
		waist="Witful Belt",
		left_ear="Loquac. Earring",
		right_ear="Malignance Earring",
		left_ring="Lebeche Ring",
		right_ring="Stikini Ring +1",
		back={ name="Lifestream Cape", augments={'Geomancy Skill +6','Indi. eff. dur. +14','Pet: Damage taken -3%','Damage taken-1%',}}
	}


	-- Geomancer Spells
    sets.Geomancy = {
		main="Idris",
		sub="Ammurapi shield",
		range="Dunna",
		head="Azimuth Hood +2",
		body="Bagua tunic +1",
		hands="Geomancy mitaines +1",
		legs="Bagua pants +1",
		feet="Azimuth Gaiters +2",
		neck="Incanter's Torque",
		waist="Embla Sash",
		left_ear="Magnetic Earring",
		right_ear={ name="Azimuth Earring +1", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+12','Damage taken-4%',}},
		left_ring={name="Stikini Ring +1", bag="Wardrobe 3"},
		right_ring={name="Stikini Ring +1", bag="Wardrobe 5"},
		back="Lifestream Cape"
	}

	-- Enhancing Spells \\Generalized//
    sets.EnhancingMagic = {
		main="Gada",
		sub="Ammurapi shield",
		ammo="Clarus stone",
		head="Volte beret",
		body="Shango Robe",
		hands="Bagua Mitaines +1",
		legs="Geomancy pants +1",
		feet="Regal pumps +1",
		waist="Austerity Belt +1",
		left_ear="Infused Earring",
		right_ear="Loquacious Earring",
		left_ring={name="Stikini Ring +1", bag="Wardrobe 3"},
		right_ring={name="Stikini Ring +1", bag="Wardrobe 5"},
		back="Perimede Cape"
	}

	sets.Stoneskin = {
		ammo="Clarus stone",
		head="Umuthi Hat",
		body="Shango Robe",
		hands="Carapacho Cuffs",
		legs="Geomancy pants +1",
		feet="Regal pumps +1",
		neck="Nodens gorget",
		waist="Austerity Belt +1",
		left_ear="Infused Earring",
		right_ear="Earthcry Earring",
		left_ring={name="Stikini Ring +1", bag="Wardrobe 3"},
		right_ring={name="Stikini Ring +1", bag="Wardrobe 5"},
		back="Perimede Cape"	
	}

	sets.Aspir = {
		ammo="Pemphredo Tathlum",
		head={ name="Amalric Coif +1", augments={'INT+12','Mag. Acc.+25','Enmity-6',}},
		body={ name="Amalric Doublet +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		hands={ name="Amalric Gages", augments={'INT+10','Elem. magic skill +15','Dark magic skill +15',}},
		legs="Amalric Slops",
		feet="Agwu's Pigaches",
		neck="Null Loop",
		waist="Fucho-no-Obi",
		left_ear="Malignance Earring",
		right_ear="Magnetic Earring",
		left_ring="Evanescence Ring",
		right_ring="Excelsis Ring",
		back="Perimede Cape"
	}

	sets.Entrust = set_combine(sets.Geomancy, {
		main="Solstice",
		legs="Bagua Pants +1",
		feet="Azimuth gaiters +2",
		back="Lifestream cape"	
	})

    sets.Cure = {
		main="Daybreak",
		sub="Genmei Shield",
		head={ name="Vanya Hood", augments={'MP+50','"Fast Cast"+10','Haste+2%',}},
		body={ name="Vanya Robe", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
		hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		legs="Doyen Pants",
		feet={ name="Vanya Clogs", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
		neck="Incanter's Torque",
		waist="Witful Belt",
		left_ear="Loquac. Earring",
		right_ear="Mendi. Earring",
		left_ring="Lebeche Ring",
		right_ring="Stikini Ring +1",
		back="Pahtli Cape"
	}

  	-- Elemental Magic sets...  When shit needs to die, this is the set to make it happen
	sets.ElementalMagic = {
		ammo="Ghastly Tathlum +1",
		head="Agwu's Cap",
		body="Agwu's Robe",
		hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		legs="Agwu's Slops",
		feet="Agwu's Pigaches",
		neck="Baetyl Pendant",
		waist="Tengu-no-Obi",
		left_ear="Friomisi Earring",
		right_ear="Malignance Earring",
		left_ring="Metamorph Ring +1",
		right_ring="Stikini ring +1",
		back="Seshaw Cape"
	}
	
	sets.BurstMagic = set_combine(sets.ElementalMagic,  {
		ammo={ name="Ghastly Tathlum +1", augments={'Path: A'}},
		left_ring="Mujin band",
		right_ring="Locus Ring"
	})		
	
    sets.Enfeebling = {
		head={ name="Amalric Coif +1", augments={'INT+12','Mag. Acc.+25','Enmity-6',}},
		body={ name="Amalric Doublet +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		hands="Regal Cuffs",
		legs="Agwu's Slops",
		feet="Agwu's Pigaches",
		neck="Null Loop",
		waist="Null Belt",
		left_ear="Malignance Earring",
		right_ear="Crep. Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back="Null Shawl"
	}
	
	sets.Cursna = set_combine(sets.FastCast,  {
		head={ name="Merlinic Hood", augments={'Pet: "Mag.Atk.Bns."+25','Crit. hit damage +1%','Magic burst dmg.+15%','Mag. Acc.+12 "Mag.Atk.Bns."+12',}},
		body={ name="Vanya Robe", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
		hands="Agwu's Gages",
		legs={ name="Vanya Slops", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
		feet={ name="Vanya Clogs", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
		neck="Malison Medallion",
		waist="Gishdubar Sash",
		left_ear="Loquac. Earring",
		right_ear="Malignance Earring",
		left_ring="Ephedra Ring",
		right_ring="Menelaus's Ring",
		back="Oretan. Cape +1"		
	})

    sets.Impact = set_combine(sets.Enfeebling,  {    
      body="Twilight Cloak",
	})

	-- PDT Set
    sets.PDT = {
		range="Dunna",
		head="Azimuth Hood +2",
		body="Shamash Robe",
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet="Azimuth Gaiters +2",
		neck="Null loop",
		waist="Null belt",
		left_ear="Eabani Earring",
		right_ear={ name="Azimuth Earring +1", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+12','Damage taken-4%',}},
		left_ring="Shneddick Ring",
		right_ring={name="Stikini Ring +1",bag="Wardrobe 5"},
		back="Null shawl"
	}
	
	sets.TP = set_combine(sets.PDT,  {
		ammo="Crepuscular Pebble",
		head={ name="Blistering Sallet +1", augments={'Path: A',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Null loop",
		waist="Null Belt",
		left_ear="Brutal Earring",
		right_ear="Telos Earring",
		left_ring="Hetairoi Ring",
		right_ring="Chirich Ring +1",
		back="Null Shawl"
	})
	
    -- .Pet sets are for when Luopan is present.
    sets.PetDT = {
		range="Dunna",
		head="Azimuth hood +2",
		body={ name="Telchine Chas.", augments={'Pet: Mag. Evasion+18','Pet: "Regen"+3','Pet: Damage taken -4%',}},
		hands={ name="Telchine Gloves", augments={'Pet: Mag. Evasion+18','Pet: "Regen"+3','Pet: Damage taken -4%',}},
		legs={ name="Telchine Braconi", augments={'Pet: DEF+15','Pet: "Regen"+3','Pet: Damage taken -4%',}},
		feet={ name="Telchine Pigaches", augments={'Pet: Mag. Evasion+19','Pet: "Regen"+3','Pet: Damage taken -4%',}},
		neck="Null loop",
		waist="Isa Belt",
		left_ear="Genmei Earring",
		right_ear="Infused Earring",
		left_ring={name="Stikini Ring +1",bag="Wardrobe 3"},
		right_ring="Defending Ring",
		back={ name="Nantosuelta's Cape", augments={'MP+60','Pet: "Regen"+10','Pet: "Regen"+5',}}
	}

	-- Magic Defense and Magic Defense Set
    sets.MDT = {
		range="Dunna",
		head="Azimuth Hood +2",
		body="Shamash Robe",
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet="Azimuth Gaiters +2",
		neck="Null loop",
		waist="Null Belt",
		left_ear="Eabani Earring",
		right_ear={ name="Azimuth Earring +1", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+12','Damage taken-4%',}},
		left_ring={name="Stikini Ring +1",bag="Wardrobe 3"},
		right_ring={name="Stikini Ring +1",bag="Wardrobe 5"},
		back="Null shawl"
	}

	-- When I gotta kite shite, I put on my Sandals and shit...
    sets.Kiting = set_combine(sets.PDT,  {
		left_ring="Shneddick Ring"
	})

	sets.Refresh = set_combine(sets.PDT,  {
		head="Volte Beret",
		body="Jhakri Robe +2",
		hands="Volte Gloves",
		legs={ name="Merlinic Shalwar", augments={'Accuracy+19','Pet: INT+5','"Refresh"+2',}},
		feet="Volte Gaiters",
		neck="Null loop",
		waist="Null Belt",
		left_ear="Etiolation Earring",
		right_ear={ name="Azimuth Earring +1", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+12','Damage taken-4%',}},
		left_ring={name="Stikini Ring +1",bag="Wardrobe 3"},
		right_ring={name="Stikini Ring +1",bag="Wardrobe 5"},
		back="Null Shawl"
	})
	
    ------------------------------------------------------------------------------------------------------------------
    -- Weaponskill sets
    ------------------------------------------------------------------------------------------------------------------

	-- All Weaponskills for Geomancer unless explicitly defined below sets.precast.WS 
     sets.Exudation = {
		ammo="Crepuscular Pebble",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Malignance Earring",
		right_ear="Azimuth earring +1",
		left_ring="Metamorph ring +1",
		right_ring="Epaminondas's Ring",
		back="Null shawl"
	 }
	 
	 sets.BlackHalo = {
		ammo="Crepuscular Pebble",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Ishvara Earring",
		right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		left_ring="Metamorph ring +1",
		right_ring="Epaminondas's Ring",
		back="Null shawl"	 
	 }
	  
	-- Engaged Sets Toggle--
	sets.engaged = {}
	sets.engaged.index = {'TP','Movement','PETDT', 'TakingLessPhysicalDamage', 'TakingLessMagicDamage', 'Accuracy', 'Refresh'}
	engaged_ind = 1  	 
	 
    sets.engaged.TP = set_combine(sets.TP, {})
	sets.engaged.Movement = set_combine(sets.PDT, {left_ring="Shneddick Ring"})
	sets.engaged.PETDT = set_combine(sets.PetDT, {})
	sets.engaged.TakingLessPhysicalDamage = set_combine(sets.PDT, {})
	sets.engaged.TakingLessMagicDamage = set_combine(sets.MDT, {})
	sets.engaged.Accuracy = {
		head="Azimuth Hood +2",
		body="Jhakri Robe +2",
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet="Nyame Sollerets",
		neck="Null loop",
		waist="Null Belt",
		left_ear="Digni. Earring",
		right_ear="Crep. Earring",
		left_ring={name="Chirich Ring +1", bag="Wardrobe 3"},
		right_ring={name="Chirich Ring +1", bag="Wardrobe 4"},
		back="Null shawl"	
	}
	sets.engaged.Refresh = set_combine(sets.Refresh, {})
	 
	--Weapon Sets--
	sets.weapon = {}
	sets.weapon.index = {'IdrisGenmei','Maxentius','MarinStaff','BunziRod'}
	weapon_ind = 1
	
	sets.weapon.IdrisGenmei = {
		main="Idris",
		sub="Genmei shield"
	}
	sets.weapon.Maxentius = {
		main="Maxentius",
		sub="Genmei Shield"
	}
	sets.weapon.MarinStaff = {
		main="Marin staff +1",
		sub="Enki strap"
	}		 
	sets.weapon.BunziRod = {
		main="Bunzi's Rod",
		sub="Ammurapi shield"
	}	
	 
end

function precast(spell,abil)
	if spell.name == 'Impact' then 
		equip(sets.Impact)
	elseif spell.skill == 'Elemental Magic' then
		equip(sets.ElementalMagic)
		get_obi(spell)	
	elseif spell.action_type == 'Magic' then
		equip(sets.FastCast)
	end

	--WS Lookups
	if spell.name == "Exudation" then
		equip(sets.Exudation)
	end
	if spell.name == "Black Halo" then
		equip(sets.BlackHalo)
	end	
 
  
end

function midcast(spell)
	if string.find(spell.english, 'Aspir') or string.find(spell.english, 'Drain') then
		equip(sets.Aspir)
	end
	if spell.skill == 'Enhancing Magic' then
		equip(sets.EnhancingMagic)
	end
	if spell.name == 'Stoneskin' then
		equip(sets.Stoneskin)
	end
	if spell.type == 'Geomancy' then
		if (buffactive['Entrust'] and string.find(spell.english, 'Indi-')) then
			equip(sets.Entrust)
		else
			equip(sets.Geomancy)
		end
	end
	if spell.name == 'Cursna' then
		equip(sets.Cursna)
	end
	if string.find(spell.english,'Cur') then 
		equip(sets.Cure)
	end
	
	if spell.name == 'Impact' then 
		equip(sets.Impact)
	elseif spell.skill == 'Elemental Magic' then
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
	equip_current()
end

--This function should only get kicked off when you're engaging.  
--If I want a manual 'Refresh' set or 'Tank' set I can do that in game with equipsets.  
--But I don't want to fuck myself by ignoring the engaged check.
--I'm also deciding not to use a Binding Key to put my in a  Tank, Refresh Set.
--I dunno, I'm just against hitting Ctrl+f# all the time for that shit
function equip_current()
	equip(sets.weapon[sets.weapon.index[weapon_ind]]) 
	equip(sets.engaged[sets.engaged.index[engaged_ind]]) 
end


--Function use for Changing the Weapon Set.  Ctrl+F8 is your meal ticket
--123 is a red color for the text output
--158 is a green color for the text output
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
		send_command('@input /tell <me> Wakies Wakies my baby Bear. We hit 0 HP on accident. We shall live forever!!!')
	end
end)

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
