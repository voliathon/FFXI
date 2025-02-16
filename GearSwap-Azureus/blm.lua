-- Final Fantasy XI Black Mage Lua Script

function get_sets()
	-- Set macro book/set --
    send_command('input /macro book 1;wait .1;input /macro set 1')
	
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
	
    -- Job Abilities for Black Mage --
    sets.Manafont = {}
	sets.ElementalSeal = {}
	sets.ManaWall = {}
	sets.EnmityDouse = {}
	sets.Manawell = {}
	sets.SubtleSorcery = {}
	sets.Cascade = {}


	sets.Aspir = {
		ammo="Pemphredo Tathlum",
		head={ name="Amalric Coif +1", augments={'INT+12','Mag. Acc.+25','Enmity-6',}},
		body={ name="Amalric Doublet +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		hands={ name="Amalric Gages", augments={'INT+10','Elem. magic skill +15','Dark magic skill +15',}},
		legs="Agwu's Slops",
		feet="Agwu's Pigaches",
		neck="Null Loop",
		waist="Fucho-no-Obi",
		left_ear="Malignance Earring",
		right_ear="Magnetic Earring",
		left_ring="Evanescence Ring",
		right_ring="Excelsis Ring",
		back="Perimede Cape"
	}

    -- Fast Cast for Black Mage --
    sets.FastCast = {
		ammo="Staunch Tathlum +1",
		head="Vanya hood",
		body="Zendik Robe",
		hands="Agwu's Gages",
		legs="Agwu's Slops",
		feet={ name="Amalric Nails +1", augments={'Mag. Acc.+20','"Mag.Atk.Bns."+20','"Conserve MP"+7',}},
		neck="Voltsurge Torque",
		waist="Embla Sash",
		left_ear="Malignance Earring",
		right_ear="Loquac. Earring",
		left_ring="Stikini Ring +1",
		right_ring="Lebeche Ring",
		back="Perimede Cape"
	}

	sets.Duration = {
		main={ name="Gada", augments={'Enh. Mag. eff. dur. +6','VIT+2','Mag. Acc.+9',}},
		sub="Ammurapi Shield",
		ammo="Pemphredo Tathlum",
		head={ name="Telchine Cap", augments={'"Conserve MP"+5','Enh. Mag. eff. dur. +10',}},
		body={ name="Telchine Chas.", augments={'"Conserve MP"+5','Enh. Mag. eff. dur. +10',}},
		hands={ name="Telchine Gloves", augments={'Accuracy+15','"Conserve MP"+5','Enh. Mag. eff. dur. +10',}},
		legs={ name="Telchine Braconi", augments={'Accuracy+15 Attack+15','"Conserve MP"+5','Enh. Mag. eff. dur. +10',}},
		feet={ name="Telchine Pigaches", augments={'Accuracy+5 Attack+5','"Conserve MP"+5','Enh. Mag. eff. dur. +10',}},
		neck="Incanter's Torque",
		waist="Embla Sash",
		left_ear="Magnetic Earring",
		right_ear="Mendi. Earring",
		left_ring="Stikini Ring +1",
		right_ring={ name="Mephitas's Ring +1", augments={'Path: A',}},
		back="Seshaw cape"
	}
	
	-- Stoneskin
	sets.Stoneskin = set_combine(sets.Duration,  {
		hands="Carapacho Cuffs",
		legs="Doyen Pants",
		neck="Nodens Gorget",
		waist="Siegel Sash",
	})
	
	-- Hitting the Duration set due to longer enhancing duration gear
	sets.Aquaveil = set_combine(sets.Duration,  {
		head="Amalric Coif +1",
		hands="Regal Cuffs",
		waist="Emphatikos Rope",
	})
	
    sets.Cure = set_combine(sets.FastCast,  {
		main="Daybreak",
		sub="Culminus",
		ammo="Pemphredo Tathlum",
		head={ name="Vanya Hood", augments={'MP+50','"Fast Cast"+10','Haste+2%',}},
		body={ name="Vanya Robe", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
		hands={ name="Telchine Gloves", augments={'Accuracy+15','"Conserve MP"+5','Enh. Mag. eff. dur. +10',}},
		legs={ name="Vanya Slops", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
		feet={ name="Vanya Clogs", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6',}},
		neck="Incanter's Torque",
		waist="Acerbic Sash +1",
		left_ear="Mendi. Earring",
		right_ear="Magnetic Earring",
		left_ring="Stikini Ring +1",
		right_ring={ name="Mephitas's Ring +1", augments={'Path: A',}},
		back="Pahtli Cape"
	})

  	-- Elemental Magic sets...  When shit needs to die, this is the set to make it happen
	sets.ElementalMagic = {
		main="Marin staff +1", 
		sub="Enki strap", 
		ammo="Sroda Tathlum",
		head="Agwu's Cap",
		body="Agwu's Robe",
		hands="Agwu's Gages",
		legs="Agwu's Slops",
		feet="Agwu's Pigaches",
		neck="Baetyl Pendant",
		waist="Eschan Stone",
		left_ear="Malignance Earring",
		right_ear="Choleric Earring",
		left_ring="Stikini Ring +1",
		right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		back="Null Shawl"
	}
	
	sets.BurstMagic = set_combine(sets.ElementalMagic,  {
		ammo={ name="Ghastly Tathlum +1", augments={'Path: A'}},
		left_ring="Mujin band",
		right_ring="Locus Ring"
	})	
	
	sets.Kaustra = {
		main="Marin staff +1", 
		sub="Enki strap", 
		ammo="Sroda Tathlum",
		head="Agwu's Cap",
		body="Agwu's Robe",
		hands="Agwu's Gages",
		legs="Agwu's Slops",
		feet="Agwu's Pigaches",
		neck="Baetyl Pendant",
		waist="Eschan Stone",
		left_ear="Malignance Earring",
		right_ear="Choleric Earring",
		left_ring="Stikini Ring +1",
		right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		back="Null Shawl"
	}
	
	sets.Death = {}
	
    sets.Enfeebling = set_combine(sets.FastCast,  {
		ammo="Pemphredo Tathlum",
		head="Wicce Petasos +3",
		body="Wicce Coat +2",
		hands="Regal Cuffs",
		legs="Wicce Chausses +2",
		feet="Wicce Sabots +2",
		neck="Null loop",
		waist="Null belt",
		left_ear="Malignance Earring",
		right_ear={ name="Wicce Earring +1", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+15','Enmity-5',}},
		left_ring="Stikini Ring +1",
		right_ring="Kishar Ring",
		back="Null shawl"
	})

	
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

	-- Impact ugh mutha-fucka
    sets.Impact = set_combine(sets.Kaustra,  {  
      body="Twilight Cloak"
	})


	sets.TP = set_combine(sets.PDT,  {
		ammo="Crepuscular Pebble",
		head={ name="Blistering Sallet +1", augments={'Path: A',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Clotharius Torque",
		waist="Null Belt",
		left_ear="Brutal Earring",
		right_ear="Telos Earring",
		left_ring="Hetairoi Ring",
		right_ring="Chirich Ring +1",
		back="Null Shawl"
	})

	-- PDT Set
    sets.PDT = {
		ammo="Staunch Tathlum +1",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body="Shamash Robe",
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Null Loop",
		waist="Null Belt",
		left_ear="Infused Earring",
		right_ear="Hearty Earring",
		left_ring="Shneddick Ring",
		right_ring="Stikini Ring +1",
		back="Null Shawl"
	}

	-- When I gotta kite shite, I put on my Sandals and shit...
    sets.Kiting = set_combine(sets.PDT,  {
		left_ring="Shneddick ring"
	})

    
	sets.Refresh = set_combine(sets.PDT,  {
		ammo="Sroda Tathlum",
		head="Volte Beret",
		body="Jhakri robe +2",
		hands="Volte Gloves",
		legs={ name="Merlinic Shalwar", augments={'Accuracy+19','Pet: INT+5','"Refresh"+2',}},
		feet="Volte Gaiters",
		neck="Sanctity Necklace",
		waist="Fucho-no-Obi",
		left_ear="Infused Earring",
		right_ear="Hearty Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back="Null Shawl"
	})
	
	sets.ElementalDebuff = {
		ammo="Pemphredo Tathlum",
		head="Wicce Petasos +2",
		body="Wicce Coat +2",
		hands="Wicce Gloves +2",
		legs="Wicce Chausses +2",
		feet="Wicce Sabots +2",
		neck="Null loop",
		waist="Null belt",
		left_ear="Malignance Earring",
		right_ear="Regal Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back="Null shawl"	
	}
	
	
    ------------------------------------------------------------------------------------------------------------------
    -- Weaponskill sets
    ------------------------------------------------------------------------------------------------------------------

	-- All Weaponskills for Red Mage unless explicitly defined below sets.precast.WS 
	sets.WSD = {
		head={ name="Nyame Helm", augments={'Path: B',}},
		body="Nyame Mail",
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs="Assid. Pants +1",
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Sanctity Necklace",
		waist="Fucho-no-Obi",
		left_ear="Infused Earring",
		right_ear="Hearty Earring",
		left_ring="Stikini Ring +1",
		right_ring="Cornelia's Ring",
		back="Null shawl"
	}
	
	sets.Cataclysm = {
		head={ name="Nyame Helm", augments={'Path: B',}},
		body="Wicce Coat +2",
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs="Assid. Pants +1",
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Sanctity Necklace",
		waist="Fucho-no-Obi",
		left_ear="Infused Earring",
		right_ear="Hearty Earring",
		left_ring="Archon Ring",
		right_ring="Cornelia's Ring",
		back="Null shawl"	
	}
	 
	sets.Myrkr = {
		head="Pixie Hairpin +1",
		body="Wicce Coat +2",
		hands="Regal Cuffs",
		legs={ name="Amalric Slops +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		feet="Skaoi Boots",
		neck="Sanctity Necklace",
		waist="Mujin Obi",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Halasz Earring",
		left_ring="Sangoma Ring",
		right_ring="Mephitas's Ring +1",
		back={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}}
	} 

	-- Engaged Sets Toggle--
	sets.engaged = {}
	sets.engaged.index = {'TP', 'MovementTank', 'Refresh'}
	engaged_ind = 1  	 
	 
	sets.engaged.TP = set_combine(sets.TP, {}) 
	sets.engaged.MovementTank = set_combine(sets.Kiting, {})
	sets.engaged.Refresh = set_combine(sets.Refresh, {})
	
	--Weapon Sets--
	sets.weapon = {}
	sets.weapon.index = {'MalignancePole','DaybreakShield','MarinStaff'}
	weapon_ind = 1
	
	sets.weapon.MalignancePole = {
		main="Malignance Pole",
		sub="Khonsu"
	}
	sets.weapon.DaybreakShield = {
		main="Daybreak",
		sub="Ammurapi Shield"
	}
	sets.weapon.MarinStaff = {
		main="Marin staff +1",
		sub="Enki strap"
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
	if spell.name == "Hexa Strike" or spell.name == "Savage Blade" then
		equip(sets.WSD)
	end
	if spell.name == "Rock Crusher" then
		equip(sets.WSD)
	end
	if spell.name == "Earth Crusher" then
		equip(sets.WSD)
	end
	if spell.name == "Starburst" then
		equip(sets.WSD)
	end
	if spell.name == "Sunburst" then
		equip(sets.WSD)
	end
	if spell.name == "Shell Crusher" then
		equip(sets.WSD)
	end
	if spell.name == "Full Swing" then
		equip(sets.WSD)
	end
	if spell.name == "Spirit Taker" then
		equip(sets.WSD)
	end
	if spell.name == "Retribution" then
		equip(sets.WSD)
	end
	if spell.name == "Omniscience" then
		equip(sets.WSD)
	end
	if spell.name == "Cataclysm" then
		equip(sets.Cataclysm)
	end
	if spell.name == "Myrkr" then
		equip(sets.Myrkr)
	end
	if spell.name == "Shattersoul" then
		equip(sets.WSD)
	end
	-- Add logic for Waltz
	-- Add logic for Utsusemi
  
end


function midcast(spell)
	if string.find(spell.english, 'Aspir') or string.find(spell.english, 'Drain') then
		equip(sets.Aspir)
	end
	if string.find(spell.english,'storm') or spell.name == 'Klimaform' then 
		equip(sets.Duration)
	end

	if string.find(spell.english,'Cur') then 
		equip(sets.Cure)
	end
	if spell.name == 'Stoneskin' then
		equip(sets.Stoneskin)
	end
	if string.find(spell.english,'Regen') then 
		equip(sets.Duration)
	end
	if spell.name == 'Aquaveil' then
		equip(sets.Aquaveil)
	end
	if spell.name == 'Cursna' then
		equip(sets.Cursna)
	end
	if spell.name == "Dispel" then
		equip(sets.Enfeebling)
	end
	if string.find(spell.english,'Kaustra') then 
		equip(sets.Kaustra)
		if bonus > 0 then
			equip({waist = "Hachirin-no-obi"})
		end
	end
	
	if spell.name == "Shock" or spell.name == 'Rasp' or spell.name == 'Choke' or spell.name == 'Frost' or spell.name == 'Burn' or spell.name == 'Drown' then
		equip(sets.ElementalDebuff)
	elseif spell.name == 'Impact' then 
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
		send_command('@input /tell <me> We shall live forever!!!  It is time to get back up and try again')
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

