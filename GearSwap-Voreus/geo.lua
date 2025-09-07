    -- __     __                                          
    -- \ \   / /__  _ __ ___ _   _ ___                    
     -- \ \ / / _ \| '__/ _ \ | | / __|                   
   -- ___\ V / (_) | | |  __/ |_| \__ \                   
  -- / ___\_/_\___/|_|_ \___|\__,_|___/ __   ___ ___ _ __ 
 -- | |  _ / _ \/ _ \| '_ ` _ \ / _` | '_ \ / __/ _ \ '__|
 -- | |_| |  __/ (_) | | | | | | (_| | | | | (_|  __/ |   
  -- \____|\___|\___/|_| |_| |_|\__,_|_| |_|\___\___|_|   
                                                      
                                                                                                                             
function get_sets()
	-- Set macro book/set --
    send_command('input /macro book 5;wait .1;input /macro set 1')
	
	bonus = 0
	-- Default Disabled Burst unless set with F11
	Burst = 'Disabled'	
	
	-- Binds for modes
	-- Toggle Weapon sets | Ctrl F8 or Alt F8
	send_command('bind ^f8 gs c C8') 
	send_command('bind !f8 gs c reverse Weapon set')

	-- Toggle Engaged sets | Ctrl F9 or Alt F9
	send_command('bind ^f9 gs c C9')
	send_command('bind !f9 gs c reverse Engaged set')

	-- Toggle Idle sets | Ctrl F10 or Alt F10
	send_command('bind ^f10 gs c C10') 
	send_command('bind !f10 gs c reverse Idle set')
	
	-- Toggle Burst Mode
	send_command('bind ^f11 gs c C11')
	
    -- Job Abilities for Geomancer --
    sets.Bolster = {body="Bagua tunic +4"}
    sets.LifeCycle = {body="Geomancy Tunic +4", back="Nantosuelta's Cape"}
    sets.FullCircle = {head="Azimuth Hood +3"}
    sets.CurativeRecantation = {hands="Bagua mitaines +4"}
    sets.MendingHalation = {legs="Bagua Pants +4"}
    sets.RadialArcana = {feet="Bagua Sandals +4"}

    -- Fast Cast for Geomancer --
    sets.FastCast = {
		head={ name="Merlinic Hood", augments={'Mag. Acc.+7','Magic burst dmg.+10%','MND+9','"Mag.Atk.Bns."+9',}},
		body="Shango Robe",
		hands="Jhakri Cuffs +2",
		legs="Geo. pants +2",
		feet={ name="Merlinic Crackows", augments={'INT+1','Pet: "Mag.Atk.Bns."+28','"Refresh"+2','Accuracy+8 Attack+8',}},
		neck="Incanter's Torque",
		waist="Witful Belt",
		left_ear="Loquac. Earring",
		right_ear="Malignance Earring",
		left_ring={name="Stikini Ring +1", bag="Wardrobe"},
		right_ring={name="Stikini Ring +1", bag="Wardrobe 5"},
		back={ name="Fi Follet Cape +1", augments={'Path: A',}}
	}

	-- Geomancer Spells
    sets.Geomancy = {
		main="Idris",
		sub="Ammurapi Shield",
		range="Dunna",
        head="Azimuth Hood +3",
        body="Bagua tunic +4",
		hands="Geo. Mitaines +4",		
		legs="Bagua Pants +4",
		feet="Azimuth gaiters +3",
		waist="Witful belt",
		neck="Incanter's torque",
		left_ear="Malignance Earring",
		right_ear="Azimuth earring +1",
		left_ring={name="Stikini Ring +1", bag="Wardrobe"},
		right_ring={name="Stikini Ring +1", bag="Wardrobe 5"},
        back="Lifestream cape"
	}

	sets.Cursna = set_combine(sets.FastCast,  {
		main="Gada",
		sub="Ammurapi shield",
		hands="Vanya cuffs",
		legs="Vanya slops",
		feet="Vanya clogs",
		right_ring="Menelaus's ring"
	})

	-- Enhancing Spells \\Generalized//
    sets.EnhancingMagic = {
		head={ name="Telchine Cap", augments={'Enh. Mag. eff. dur. +9',}},
		body={ name="Telchine Chas.", augments={'Enh. Mag. eff. dur. +10',}},
		hands={ name="Telchine Gloves", augments={'Enh. Mag. eff. dur. +10',}},
		legs={ name="Telchine Braconi", augments={'Enh. Mag. eff. dur. +10',}},
		feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +10',}},
		neck="Incanter's Torque",
		waist="Embla Sash",
		left_ear="Loquac. Earring",
		right_ear="Mimir Earring",
		left_ring={name="Stikini Ring +1", bag="Wardrobe"},
		right_ring={name="Stikini Ring +1", bag="Wardrobe 5"},
		back={ name="Fi Follet Cape +1", augments={'Path: A',}}
	}

	sets.Stoneskin = set_combine(sets.EnhancingMagic,  {
		legs="Querkening brais",
		neck="Nodens gorget"
	})

    sets.Cure = {
		main="Daybreak",
		sub="Ammurapi Shield",
		head={ name="Vanya Hood", augments={'MND+10','Spell interruption rate down +15%','"Conserve MP"+6',}},
		body={ name="Vanya Robe", augments={'MP+50','"Cure" potency +7%','Enmity-6',}},
		hands={ name="Vanya Cuffs", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
		legs={ name="Vanya Slops", augments={'MND+10','Spell interruption rate down +15%','"Conserve MP"+6',}},
		feet={ name="Vanya Clogs", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6',}},
		neck="Incanter's Torque",
		waist="Rumination Sash",
		left_ear="Loquac. Earring",
		right_ear="Meili Earring",
		left_ring="Lebeche Ring",
		right_ring={ name="Mephitas's Ring +1", augments={'Path: A',}},
		back={ name="Aurist's Cape +1", augments={'Path: A',}}
	}

  	-- Elemental Magic sets...  When shit needs to die, this is the set to make it happen
	sets.ElementalMagic = {
		ammo="Ghastly tathlum +1",
		head="Agwu's cap",
		body="Azimuth coat +3",
		hands="Bagua mitaines +4",
		legs="Azimuth Tights +3",
		feet="Azimuth gaiters +3",
		neck="Sibyl Scarf",
		waist="Acuity belt +1",
		left_ear="Malignance Earring",
		right_ear="Regal Earring",
		left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		right_ring="Freke Ring",
		back={ name="Nantosuelta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10',}}
	}

	sets.BurstMagic = set_combine(sets.ElementalMagic,  {
		head="Ea Hat +1",
		right_ring="Locus Ring"
	})		

    sets.Aspir = {
		main={ name="Rubicundity", augments={'Mag. Acc.+10','"Mag.Atk.Bns."+10','Dark magic skill +10','"Conserve MP"+7',}},
		sub="Ammurapi Shield",
		range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
		head={ name="Bagua Galero +3", augments={'Enhances "Primeval Zeal" effect',}},
		body="Geo. tunic +4",
		hands="Geo. Mitaines +4",
		legs="Azimuth Tights +3",
		feet={ name="Merlinic Crackows", augments={'INT+1','Pet: "Mag.Atk.Bns."+28','"Refresh"+2','Accuracy+8 Attack+8',}},
		neck="Erra Pendant",
		waist="Fucho-no-Obi",
		left_ear="Malignance Earring",
		right_ear={ name="Azimuth Earring +1", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+13','Damage taken-4%',}},
		left_ring="Evanescence Ring",
		right_ring={name="Stikini Ring +1", bag="Wardrobe 5"},
		back={ name="Aurist's Cape +1", augments={'Path: A',}}
	}

    sets.Enfeebling = {
		ammo="Pemphredo Tathlum",
		head="Azimuth Hood +3",
		body="Azimuth coat +3",
		hands="Regal Cuffs",
		legs="Azimuth Tights +3",
		feet="Azimuth gaiters +3",
		neck="Null loop",
		waist="Rumination Sash",
		left_ear="Malignance Earring",
		right_ear={ name="Azimuth Earring +1", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+13','Damage taken-4%',}},
		left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		right_ring={name="Stikini Ring +1", bag="Wardrobe 5"},
		back={ name="Aurist's Cape +1", augments={'Path: A',}}
	}

    sets.Impact = set_combine(sets.Enfeebling,  {    
      body="Twilight Cloak",
	})
	
	sets.Entrust = set_combine(sets.Geomancy, {
		main="Solstice",
		legs="Bagua Pants +4",
		feet="Azimuth gaiters +3",
		back="Lifestream cape"	
	})

	-- Engaged Sets Toggle--
	sets.engaged = {}
	sets.engaged.index = {'PDT', 'PetDT', 'Refresh', 'TP', 'Accuracy', 'Movement'}
	engaged_ind = 1  

	-- PDT Set
    sets.engaged.PDT = {
		head="Azimuth Hood +3",
		body="Nyame mail",
		hands="Azimuth gloves +3",
		legs="Nyame flanchard",
		feet="Azimuth gaiters +3",
		neck="Null loop",
		waist="Isa Belt",
		left_ear="Ammurapi Earring",
		right_ear="Infused Earring",
		left_ring="Fortified Ring",
		right_ring={name="Stikini Ring +1", bag="Wardrobe 5"},
		back={ name="Nantosuelta's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Pet: "Regen"+10','Damage taken-5%',}}
	}

    -- .Pet sets are for when Luopan is present.
    sets.engaged.PetDT = {
		head="Azimuth Hood +3",
		body={ name="Telchine Chas.", augments={'Mag. Evasion+25','Pet: "Regen"+3','Pet: Damage taken -3%',}},
		hands="Geo. Mitaines +4",
		legs={ name="Telchine Braconi", augments={'Mag. Evasion+22','Pet: "Regen"+3','Pet: Damage taken -4%',}},
		feet={ name="Bagua Sandals +4", augments={'Enhances "Radial Arcana" effect',}},
		neck="Null Loop",
		waist="Isa Belt",
		left_ear="Digni. Earring",
		right_ear="Infused Earring",
		left_ring="Shneddick Ring",
		right_ring="Stikini Ring +1",
		back={ name="Nantosuelta's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Pet: "Regen"+10','Damage taken-5%',}}
	}
	
	sets.engaged.Refresh = set_combine(sets.engaged.PDT,  {
		range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
		head="Befouled Crown",
		body="Azimuth coat +3",
		hands="Bagua mitaines +4",
		legs={ name="Merlinic Shalwar", augments={'DEX+2','Accuracy+14','"Refresh"+2','Mag. Acc.+11 "Mag.Atk.Bns."+11',}},
		feet={ name="Merlinic Crackows", augments={'INT+1','Pet: "Mag.Atk.Bns."+28','"Refresh"+2','Accuracy+8 Attack+8',}},
		neck="Sanctity Necklace",
		waist="Fucho-no-Obi",
		left_ear="Ammurapi Earring",
		right_ear="Infused Earring",
		left_ring={name="Stikini Ring +1", bag="Wardrobe"},
		right_ring={name="Stikini Ring +1", bag="Wardrobe 5"},
		back={ name="Nantosuelta's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Pet: "Regen"+10','Damage taken-5%',}}
	})	
	
	sets.engaged.TP = set_combine(sets.engaged.PDT,  {
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
		back={ name="Nantosuelta's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Pet: "Regen"+10','Damage taken-5%',}}
	})
	
	sets.engaged.Accuracy = {
		head="Azimuth Hood +3",
		body="Azimuth coat +3",
		hands="Azimuth gloves +3",
		legs="Azimuth tights +3",
		feet="Azimuth gaiters +3",
		neck="Null loop",
		waist="Null Belt",
		left_ear="Digni. Earring",
		right_ear="Crep. Earring",
		left_ring={name="Chirich Ring +1", bag="Wardrobe 3"},
		right_ring={name="Chirich Ring +1", bag="Wardrobe 4"},
		back="Null shawl"	
	}	

	-- When I gotta kite shite, I put on my Sandals and shit...
    sets.engaged.Movement = {
		head="Azimuth Hood +3",
		body="Shamash robe",
		hands="Azimuth gloves +3",
		legs="Nyame flanchard",
		feet="Azimuth gaiters +3",
		neck="Null loop",
		waist="Isa Belt",
		left_ear="Ammurapi Earring",
		right_ear="Infused Earring",
		left_ring="Shneddick Ring",
		right_ring={name="Stikini Ring +1", bag="Wardrobe 5"},
		back={ name="Nantosuelta's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Pet: "Regen"+10','Damage taken-5%'}}
	}
    

	-- Idle Sets Toggle-- Alt+F10 or Ctrl+F10
	sets.idle = {}
	sets.idle.index = {'PDTMovement', 'RefreshMovement', 'PureRefresh', 'Craft'}
	idle_ind = 1      
	
	sets.idle.PDTMovement = set_combine(sets.engaged.Movement,  {})

	sets.idle.RefreshMovement = set_combine(sets.engaged.Refresh,  {
		left_ring="Shneddick ring"
	})

	sets.idle.PureRefresh = set_combine(sets.engaged.Refresh,  { })

	sets.idle.Craft = set_combine(sets.engaged.Movement, {
		sub="Bv. escutcheon",
		hands="Tanner's gloves",
		neck="Tanner's torque",
		left_ring="Artificer's Ring"
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
	  
	 
	--Weapon Sets--
	sets.weapon = {}
	sets.weapon.index = {'IdrisGenmei','Maxentius','Nuke','Nuke2'}
	weapon_ind = 1
	
	sets.weapon.IdrisGenmei = {
		main="Idris",
		sub="Ammurapi shield"
	}
	sets.weapon.Maxentius = {
		main="Maxentius",
		sub="Ammurapi shield"
	}
	sets.weapon.Nuke = {
		main="Wizard's rod",
		sub="Ammurapi Shield",
	}		 
	sets.weapon.Nuke2 = {
		main="Bunzi's rod",
		sub="Ammurapi Shield",
	}
	 
end

function precast(spell,abil)
	if spell.name == 'Impact' then 
		equip(sets.Impact)
	elseif spell.action_type == 'Magic' then
		equip(sets.FastCast)
		get_obi(spell)
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
	if spell.name == 'Stoneskin' then
		equip(sets.Stoneskin)
	elseif spell.skill == 'Enhancing Magic' then
		equip(sets.EnhancingMagic)
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

function aftercast(spell)
	equip_current()
end


function equip_current()
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
--F11 --> BURST Mode
--F12 --> Occult Acumen
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
	elseif command == 'C11' then
		if Burst == 'Disabled' then 
			Burst = 'Enabled'
		else
			Burst = 'Disabled'
		end
		send_command('@input /echo <----- Burst Mode changed to '..Burst..' ----->')
	end	 
--Consider Occult Acumen in the future here	
end


-- Send tell to self if I died --
windower.register_event('status change', function()
	if player.status == 'Dead' then
		send_command('@input /tell <me> Wake up Voreus!')
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
        --return { equip({waist = "Hachirin-no-obi"}) }
		return true
    else
		--Debug
		--send_command('@input /echo Waist: Tengu-no-Obi')	
        --return { equip({waist = "Eschan Stone"}) }
		return false
    end
end
