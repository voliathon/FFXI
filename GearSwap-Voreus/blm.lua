-- Final Fantasy XI Black Mage Lua Script

function get_sets()
	-- Set macro book/set --
    send_command('input /macro book 1;wait .1;input /macro set 1')
	
	bonus = 0
	-- Toggle Engaged sets button, change if you want; currently ALT+F9 toggles forward, CTRL+F9 toggles backwards
    send_command('bind !f9 gs c toggle Engaged set')
	send_command('bind ^f9 gs c reverse Engaged set')
	
	-- We gotta have a Burst Mode
    -- This is used when I want force burst gear sets on nukes	
	send_command('bind !f9 gs c toggle Engaged set')
	send_command('bind ^f9 gs c reverse Engaged set')
	
    -- Job Abilities for Black Mage --
    sets.Manafont = {}
	sets.ElementalSeal = {}
	sets.ManaWall = {}
	sets.EnmityDouse = {}
	sets.Manawell = {}
	sets.SubtleSorcery = {}
	sets.Cascade = {}


	sets.Aspir = {feet="Agwu's Pigaches"}

    -- Fast Cast for Black Mage --
    sets.FastCast = {
		head={ name="Merlinic Hood", augments={'Mag. Acc.+7','Magic burst dmg.+10%','MND+9','"Mag.Atk.Bns."+9',}},
		body="Shango Robe",
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Artsieq Hose", augments={'"Mag.Atk.Bns."+25','Mag. Evasion+10','Phys. dmg. taken -5',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Incanter's Torque",
		waist="Eschan Stone",
		left_ear="Loquacious Earring",
		right_ear="Barkaro. Earring",
		left_ring="Kishar Ring",
		right_ring={ name="Mephitas's Ring +1", augments={'Path: A',}},
		back={ name="Fi Follet Cape +1", augments={'Path: A',}}
	}

	sets.Duration = {
		main="Gada",
		sub="Ammurapi shield",
		ammo="Pemphredo Tathlum",
		head={ name="Telchine Cap", augments={'Enh. Mag. eff. dur. +9',}},
		body={ name="Telchine Chas.", augments={'Enh. Mag. eff. dur. +10',}},
		hands={ name="Telchine Gloves", augments={'Enh. Mag. eff. dur. +10',}},
		legs={ name="Telchine Braconi", augments={'Enh. Mag. eff. dur. +10',}},
		feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +10',}},
		neck="Incanter's Torque",
		waist="Embla Sash",
		left_ear="Loquac. Earring",
		right_ear="Mendi. Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back={ name="Fi Follet Cape +1", augments={'Path: A',}}
	}
	
    sets.Klimaform = set_combine(sets.Duration,  {
		feet="Arbatel Loafers +2"
	})


	-- Stoneskin
	sets.Stoneskin = set_combine(sets.Duration,  {
		hands="Carapacho Cuffs",
		legs="Doyen Pants",
		neck="Nodens Gorget",
		waist="Siegel Sash",
	})
	
	-- Hitting the Duration set due to longer enhancing duration gear
	sets.Aquaveil = set_combine(sets.Duration,  {
		head={ name="Amalric Coif +1", augments={'INT+12','Mag. Acc.+25','Enmity-6'}},
		hands="Regal Cuffs",
		waist="Emphatikos Rope",
	})
	
    sets.Cure = set_combine(sets.FastCast,  {
		main="Daybreak",
		sub="Sors Shield",
		ammo="Pemphredo Tathlum",
		head={ name="Vanya Hood", augments={'MND+10','Spell interruption rate down +15%','"Conserve MP"+6',}},
		body={ name="Vanya Robe", augments={'MP+50','"Cure" potency +7%','Enmity-6',}},
		hands={ name="Vanya Cuffs", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
		legs={ name="Vanya Slops", augments={'MND+10','Spell interruption rate down +15%','"Conserve MP"+6',}},
		feet={ name="Vanya Clogs", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6',}},
		neck="Phalaina locket",
		waist="Witful Belt",
		left_ear="Mendi. Earring",
		right_ear="Loquac. Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back={ name="Fi Follet Cape +1", augments={'Path: A',}}
	})

	-- Protecting the party
    sets.Protect = set_combine(sets.Duration,  {
		ring1="Sheltered Ring"
	})
	
	--Regen Max Duration
	sets.Regen = set_combine(sets.Duration,  {	
	})

	
	-- MDF the party
    sets.Shell = set_combine(sets.Duration,  {
		ring1="Sheltered Ring"
	})

  	-- Elemental Magic sets...  When shit needs to die, this is the set to make it happen
	sets.ElementalMagic = {
		main="Marin staff +1", 
		sub="Enki strap", 
		ammo="Pemphredo Tathlum",
		head="Wicce Petasos +2",
		body="Wicce Coat +2",
		hands="Wicce Gloves +2",
		legs="Wicce Chausses +2",
		feet="Wicce Sabots +2",
		neck="Mizu. Kubikazari",
		waist="Eschan Stone",
		left_ear="Malignance Earring",
		right_ear={ name="Wicce Earring +1", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+15','Enmity-5',}},
		left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		right_ring="Locus Ring",
		back={ name="Aurist's Cape +1", augments={'Path: A',}}
	}
	
	-- sets.Burst = {
		-- main="Bunzi's Rod",
		-- sub="Ammurapi Shield",
		-- ammo="Sroda Tathlum",
		-- head="Agwu's Cap",
		-- body="Agwu's Robe",
		-- hands="Arbatel Bracers +2",
		-- legs="Agwu's Slops",
		-- feet="Agwu's Pigaches",
		-- neck="Argute stole +2",
		-- waist="Tengu-no-Obi",
		-- left_ear="Malignance Earring",
		-- right_ear="Halasz Earring",
		-- left_ring="Mujin band",
		-- right_ring="Locus Ring",
		--     back={ name="Lugh's Cape", augments={'INT+10','Mag. Acc+17 /Mag. Dmg.+17','Mag. Acc.+8','"Mag.Atk.Bns."+3',}}	
	
	-- }
	
	sets.Kaustra = {
		main="Marin staff +1", 
		sub="Enki strap", 
		ammo="Pemphredo Tathlum",
		head={ name="Merlinic Hood", augments={'"Mag.Atk.Bns."+28','"Fast Cast"+3','INT+2','Mag. Acc.+10',}},
		body="Jhakri Robe +2",
		hands="Jhakri Cuffs +2",
		legs={ name="Merlinic Shalwar", augments={'"Mag.Atk.Bns."+10','Magic burst dmg.+8%','MND+2','Mag. Acc.+10',}},
		feet="Jhakri Pigaches +2",
		neck="Mizu. Kubikazari",
		waist="Eschan Stone",
		left_ear="Malignance Earring",
		right_ear="Wicce Earring +1",
		left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		right_ring="Locus Ring",
		back="Aurist's Cape +1"
	}
	
    sets.DarkMagic = {

	}
	
	sets.Helix = {
		main="Marin staff +1", 
		sub="Enki strap", 
		ammo="Pemphredo Tathlum",
		head={ name="Merlinic Hood", augments={'"Mag.Atk.Bns."+28','"Fast Cast"+3','INT+2','Mag. Acc.+10',}},
		body="Jhakri Robe +2",
		hands="Jhakri Cuffs +2",
		legs={ name="Merlinic Shalwar", augments={'"Mag.Atk.Bns."+10','Magic burst dmg.+8%','MND+2','Mag. Acc.+10',}},
		feet="Jhakri Pigaches +2",
		neck="Mizu. Kubikazari",
		waist="Eschan Stone",
		left_ear="Malignance Earring",
		right_ear="Wicce Earring +1",
		left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		right_ring="Locus Ring",
		back="Aurist's Cape +1"
}


    sets.Enfeebling = set_combine(sets.FastCast,  {

	})


	-- Impact ugh mutha-fucka
    sets.Impact = set_combine(sets.Kaustra,  {  
      body="Twilight Cloak"
	})


    -- /heal the damn MP/HP up.
    sets.heal = {

	}

	sets.TP = set_combine(sets.PDT,  {
		main="Malignance Pole",
		sub="Ajja grip",
		ammo="Oshasha's Treatise",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Rep. Plat. Medal",
		waist="Cetl Belt",
		left_ear="Cessance Earring",
		right_ear="Telos Earring",
		left_ring="Hetairoi Ring",
		right_ring="Petrov Ring",
		back="Aurist's Cape +1"	
	})

	-- PDT Set
    sets.PDT = {
		main="Malignance Pole",
		sub="Ajja grip",
		ammo="Impatiens",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck={ name="Loricate Torque +1", augments={'Path: A',}},
		waist="Fucho-no-Obi",
		left_ear="Infused Earring",
		right_ear="Hearty Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back="Aurist's Cape +1"
	}

	-- When I gotta kite shite, I put on my Sandals and shit...
    sets.Kiting = set_combine(sets.PDT,  {
		left_ring="Shneddick ring"
	})

    
	sets.Refresh = set_combine(sets.PDT,  {
		head="Befouled Crown",
		body="Jhakri Robe +2",
		legs="Assid. Pants +1",
		neck="Sanctity Necklace",
		waist="Fucho-no-Obi",
		left_ear="Infused Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1"
	})
	
	
    ------------------------------------------------------------------------------------------------------------------
    -- Weaponskill sets
    ------------------------------------------------------------------------------------------------------------------

	-- All Weaponskills for Red Mage unless explicitly defined below sets.precast.WS 
	sets.WSD = {
		head={ name="Nyame Helm", augments={'Path: B',}},
		body="Jhakri Robe +2",
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs="Assid. Pants +1",
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Sanctity Necklace",
		waist="Fucho-no-Obi",
		left_ear="Infused Earring",
		right_ear="Hearty Earring",
		left_ring="Stikini Ring +1",
		right_ring="Cornelia's Ring",
		back="Aurist's Cape +1"
	}
	
	sets.Cataclysm = {
		head={ name="Nyame Helm", augments={'Path: B',}},
		body="Jhakri Robe +2",
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs="Assid. Pants +1",
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Sanctity Necklace",
		waist="Fucho-no-Obi",
		left_ear="Infused Earring",
		right_ear="Hearty Earring",
		left_ring="Archon Ring",
		right_ring="Cornelia's Ring",
		back="Aurist's Cape +1"	
	}
	 
	sets.Myrkr = {
		head="Pixie Hairpin +1",
		body="Arbatel Gown +2",
		hands="Regal Cuffs",
		legs={ name="Amalric Slops +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		feet="Skaoi Boots",
		neck="Sanctity Necklace",
		waist="Mujin Obi",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Halasz Earring",
		left_ring="Sangoma Ring",
		right_ring="Mephitas's Ring +1",
		back={ name="Lugh's Cape", augments={'INT+10','Mag. Acc+17 /Mag. Dmg.+17','Mag. Acc.+8','"Mag.Atk.Bns."+3',}}	
	} 

	  -- Engaged Sets Toggle--
	sets.engaged = {}
	sets.engaged.index = {'TP', 'Movement', 'Tank', 'Refresh'}
	engaged_ind = 1  	 
	 
	sets.engaged.TP = set_combine(sets.TP, {}) 
	sets.engaged.Movement = set_combine(sets.Kiting, {})
	sets.engaged.Tank = set_combine(sets.PDT, {})
	sets.engaged.Refresh = set_combine(sets.Refresh, {})
	 
end

function precast(spell,abil)
	--Scholar Job Abilities
	
	if spell.skill == 'Elemental Magic' then
		equip(sets.ElementalMagic)
		get_obi(spell)
	end
	if spell.action_type == 'Magic' then
		equip(sets.FastCast)
	end
		
	--Can add stuff here for other magic. Doesn't have to go to idle at all
	

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

	if spell.name == 'Klimaform' then
		equip(sets.Klimaform)
	end
	
	if string.find(spell.english,'storm') then 
		equip(sets.Duration)
	end


	if string.find(spell.english,'Cur') then 
		equip(sets.Cure)
	end
	if spell.name == 'Stoneskin' then
		equip(sets.Stoneskin)
	end
	if string.find(spell.english,'Regen') then 
		equip(sets.Regen)
	end
	if spell.name == 'Aquaveil' then
		equip(sets.Aquaveil)
	end
	if spell.name == 'Cursna' then
		--TODO - Add a Cursna set 5/26/2023
		equip(sets.FastCast)
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
	if string.find(spell.english,'helix') then 
		equip(sets.Helix)
		if bonus > 0 then
			equip({waist = "Hachirin-no-obi"})
		end
	end	
	if spell.skill == 'Elemental Magic' then
		send_command('@input /echo Bonus in midcast is: '..bonus..'%')	
		equip(sets.ElementalMagic)
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
	equip(sets.engaged[sets.engaged.index[engaged_ind]]) 
end


--Function use for Changing the Engaged Set.  Ctrl+F9 is your meal ticket
--123 is a red color for the text output
--158 is a green color for the text output
function self_command(command)
	if command == 'C7' then -- Mecistopins Mantle toggle 
		if Capacity == 'OFF' then
			Capacity = 'ON'
			equip({back="Mecistopins mantle"})
            add_to_chat(158,'Capacity mantle: [ON]')
		else
			Capacity = 'OFF'
			equip_current()
   		    add_to_chat(123,'Capacity mantle: [OFF]')
		end
	elseif command == 'toggle Engaged set' then
		engaged_ind = engaged_ind +1
		if engaged_ind > #sets.engaged.index then engaged_ind = 1 end
		send_command('@input /echo <----- Gear Set changed to '..sets.engaged.index[engaged_ind]..' ----->')
		equip_current()
	elseif command == 'reverse Engaged set' then
		engaged_ind = engaged_ind -1
		if engaged_ind == 0 then engaged_ind = #sets.engaged.index end
		send_command('@input /echo <----- Gear Set changed to '..sets.engaged.index[engaged_ind]..' ----->')
		equip_current()
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
		["Thunderstorm"] = 10,
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
