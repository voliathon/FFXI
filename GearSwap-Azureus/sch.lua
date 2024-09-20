-- The Official Azureus Scholar Lua Script of Awesome
-- Created by Voliathon
-- Level 1

    -- Liquefaction: Stone > Fire, or Thunder > Fire.
    -- Scission: Fire > Stone, or Aero > Stone.
    -- Reverberation: Stone > Water, or Luminohelix > Water.
    -- Detonation: Stone > Aero, or Thunder > Wind.
    -- Induration: Water > Blizzard.
    -- Impaction: Water > Thunder, or Blizzard > Thunder.
    -- Transfixion: Noctohelix > Luminohelix.
    -- Compression: Blizzard > Noctohelix.

-- Level 2

    -- Fragmentation: Blizzard > Water
    -- Fusion: Fire > Thunder
    -- Gravitation: Aero > Noctohelix
    -- Distortion: Luminohelix > Stone

-- How it looks in a Macro

    -- Here is an example of what an Immanence macro should look like:

        -- /ja “Immanence” <me> <wait1>
        -- /ma “Fire” <t> <wait5>
        -- /ja “Immanence” <me> <wait1>
        -- /ma “Thunder” <t>

    -- Using a standard macro, this leaves 2 lines open for announcing "Opening" and "Closing".
    -- In cases when opening with a Helix, set the wait period to 7 seconds.

function get_sets()
	-- Set macro book/set --
    send_command('input /macro book 8;wait .1;input /macro set 1')
	
	bonus = 0
	-- Toggle Engaged sets button, change if you want; currently ALT+F9 toggles forward, CTRL+F9 toggles backwards
    send_command('bind !f9 gs c toggle Engaged set')
	send_command('bind ^f9 gs c reverse Engaged set')
	
	-- We gotta have a Burst Mode
    -- This is used when I want force burst gear sets on nukes	
	send_command('bind !f9 gs c toggle Engaged set')
	send_command('bind ^f9 gs c reverse Engaged set')
	
    -- Job Abilities for Scholar --
    sets.Ebullience = {head="Arbatel Bonnet +2"}
    sets.Rapture = {head="Arbatel Bonnet +2"}
    sets.Perpetuance = {hands="Arbatel Bracers +2"}
    sets.Immanence = {hands="Arbatel Bracers +2"}
    sets.Penury = {legs="Arbatel Pants +2"}
    sets.Parsimony = {legs="Arbatel Pants +2"}
    sets.Celerity = {feet={ name="Peda. Loafers +1", augments={'Enhances "Stormsurge" effect'}},}
    sets.Alacrity = {head="Nahtirah Hat",feet="Pedagogy Loafers +1"}
    sets.Stormsurge = {feet={ name="Peda. Loafers +1", augments={'Enhances "Stormsurge" effect'}},}


	sets.Aspir = {feet="Agwu's Pigaches"}

    -- Fast Cast for Scholar --
    sets.FastCast = {
		ammo="Pemphredo Tathlum",
		head={ name="Amalric Coif +1", augments={'INT+12','Mag. Acc.+25','Enmity-6'}},
		body="Zendik Robe",
		hands={ name="Gende. Gages +1", augments={'Phys. dmg. taken -4%','Song spellcasting time -4%'}},
		legs="Pinga Pants",
		feet={ name="Amalric Nails +1", augments={'Mag. Acc.+20','"Mag.Atk.Bns."+20','"Conserve MP"+7'}},
		neck="Baetyl pendant",
		waist="Embla Sash",
		left_ear="Malignance Earring",
		right_ear="Loquac. Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back="Perimede Cape"
	}

	sets.Duration = {
		main="Musa",
		sub="Eletta grip",
		ammo="Pemphredo Tathlum",
		head={ name="Telchine Cap", augments={'"Conserve MP"+5','Enh. Mag. eff. dur. +10'}},
		body={ name="Telchine Chas.", augments={'"Conserve MP"+5','Enh. Mag. eff. dur. +10'}},
		hands={ name="Telchine Gloves", augments={'Accuracy+15','"Conserve MP"+5','Enh. Mag. eff. dur. +10'}},
		legs={ name="Telchine Braconi", augments={'Accuracy+15 Attack+15','"Conserve MP"+5','Enh. Mag. eff. dur. +10'}},
		feet={ name="Telchine Pigaches", augments={'Accuracy+5 Attack+5','"Conserve MP"+5','Enh. Mag. eff. dur. +10'}},
		neck="Incanter's Torque",
		waist="Embla Sash",
		left_ear="Mendi. Earring",
		right_ear="Magnetic Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
	}
	
    sets.Klimaform = set_combine(sets.Duration,  {
		feet="Arbatel Loafers +2"
	})
	
	sets.Sublimation = {
		head="Academic's Mortarboard +3"
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
		head={ name="Amalric Coif +1", augments={'INT+12','Mag. Acc.+25','Enmity-6'}},
		hands="Regal Cuffs",
		waist="Emphatikos Rope",
	})
	
    sets.Cure = set_combine(sets.FastCast,  {
	    main="Daybreak",
		sub="Culminus",
		ammo="Pemphredo Tathlum",
		head={ name="Kaykaus Mitra", augments={'MP+60','MND+10','Mag. Acc.+15'}},
		body="Vanya robe",
		hands="Arbatel bracers +2",
		legs="Pinga Pants",
		feet={ name="Amalric Nails +1", augments={'Mag. Acc.+20','"Mag.Atk.Bns."+20','"Conserve MP"+7'}},
		neck="Incanter's Torque",
		waist="Luminary Sash",
		left_ear="Mendi. Earring",
		right_ear="Magnetic Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back="Pahtli Cape"
	})

	-- Protecting the party
    sets.Protect = set_combine(sets.Duration,  {
		ring1="Sheltered Ring"
	})
	
	--Regen Max Duration
	sets.Regen = set_combine(sets.Duration,  {
		main="Musa",
		sub="Clerisy strap",
		head="Arbatel Bonnet +2",
		back={ name="Bookworm's Cape", augments={'INT+2','MND+2','Helix eff. dur. +15','"Regen" potency+10'}}	
	})

	
	-- MDF the party
    sets.Shell = set_combine(sets.Duration,  {
		ring1="Sheltered Ring"
	})

  	-- Elemental Magic sets...  When shit needs to die, this is the set to make it happen
	sets.ElementalMagic = {
		main="Bunzi's Rod",
		sub="Ammurapi Shield",
		ammo="Sroda Tathlum",
		head="Agwu's Cap",
		body="Agwu's Robe",
		hands="Arbatel Bracers +2",
		legs="Agwu's Slops",
		feet="Arbatel Loafers +2",
		neck="Argute stole +2",
		waist="Tengu-no-Obi",
		left_ear="Malignance Earring",
		right_ear="Halasz Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back={ name="Lugh's Cape", augments={'INT+8','Mag. Acc+7 /Mag. Dmg.+7','Mag. Acc.+8',}}
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
		-- back={ name="Lugh's Cape", augments={'INT+8','Mag. Acc+7 /Mag. Dmg.+7','Mag. Acc.+8',}}	
	
	-- }
	
	sets.Kaustra = {
		main="Bunzi's Rod",
		sub="Ammurapi Shield",
		ammo="Sroda Tathlum",
		head="Pixie Hairpin +1",
		body="Agwu's Robe",
		hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		legs={ name="Amalric Slops +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		feet="Agwu's Pigaches",
		neck="Argute stole +2",
		waist="Tengu-no-Obi",
		left_ear="Malignance Earring",
		right_ear="Halasz Earring",
		left_ring="Mujin Band",
		right_ring="Locus Ring",
		back={ name="Bookworm's Cape", augments={'INT+2','MND+2','Helix eff. dur. +15','"Regen" potency+10',}}	
	}
	
    sets.DarkMagic = {

	}

    sets.Enfeebling = set_combine(sets.FastCast,  {
		main="Bunzi's Rod",
		sub="Ammurapi Shield",
		ammo="Pemphredo Tathlum",
		head="Arbatel Bonnet +2",
		body="Arbatel Gown +2",
		hands="Arbatel Bracers +2",
		legs="Arbatel Pants +2",
		feet="Agwu's Pigaches",
		neck={ name="Argute Stole +2", augments={'Path: A',}},
		waist="Luminary Sash",
		left_ear="Crep. Earring",
		right_ear="Malignance Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back={ name="Lugh's Cape", augments={'INT+8','Mag. Acc+7 /Mag. Dmg.+7','Mag. Acc.+8',}}
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
		sub="Mensch Strap +1",
		ammo="Crepuscular Pebble",
		head="Arbatel Bonnet +2",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck="Clotharius Torque",
		waist="Windbuffet Belt +1",
		left_ear="Crep. Earring",
		right_ear="Telos Earring",
		left_ring="Chirich Ring +1",
		right_ring="Chirich Ring +1",
		back="Moonbeam Cape"	
	})

	-- PDT Set
    sets.PDT = {
		main="Bolelabunga",
		sub="Genmei Shield",
		ammo="Staunch Tathlum",
		head="Arbatel Bonnet +2",
		body="Arbatel Gown +2",
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs="Arbatel Pants +2",
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Sanctity Necklace",
		waist="Emphatikos Rope",
		left_ear="Infused Earring",
		right_ear="Hearty Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back="Relucent Cape"
	}

	-- Magic Defense and Magic Defense Set
    sets.MDT = {
		main="Bolelabunga",
		sub="Genmei Shield",
		ammo="Staunch Tathlum",
		head="Arbatel Bonnet +2",
		body="Arbatel Gown +2",
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs="Arbatel Pants +2",
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Sanctity Necklace",
		waist="Emphatikos Rope",
		left_ear="Infused Earring",
		right_ear="Hearty Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back="Relucent Cape"
	}

		
	-- When I gotta kite shite, I put on my Sandals and shit...
    sets.Kiting = set_combine(sets.PDT,  {
		left_ring="Shneddick ring"
	})

    
	sets.Refresh = set_combine(sets.PDT,  {
		head="Volte Beret",
		body="Jhakri Robe +2",
		hands="Volte Gloves",
		legs="Assid. Pants +1",
		feet={ name="Chironic Slippers", augments={'Phys. dmg. taken -1%','Pet: Attack+9 Pet: Rng.Atk.+9','"Refresh"+2','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
		neck="Sanctity Necklace",
		waist="Fucho-no-Obi",
		left_ear="Infused Earring",
		right_ear="Hearty Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back="Kumbira Cape"
	})
	
	
    ------------------------------------------------------------------------------------------------------------------
    -- Weaponskill sets
    ------------------------------------------------------------------------------------------------------------------

	-- All Weaponskills for Red Mage unless explicitly defined below sets.precast.WS 
	sets.WSD = {
		ammo="Crepuscular Pebble",
		head={ name="Chironic Hat", augments={'DEX+3','"Drain" and "Aspir" potency +5','Weapon skill damage +8%',}},
		body={ name="Chironic Doublet", augments={'Enmity+4','"Mag.Atk.Bns."+14','Weapon skill damage +9%','Accuracy+9 Attack+9',}},
		hands="Jhakri Cuffs +2",
		legs={ name="Chironic Hose", augments={'Accuracy+2','STR+2','Weapon skill damage +10%','Mag. Acc.+5 "Mag.Atk.Bns."+5',}},
		feet={ name="Chironic Slippers", augments={'Phys. dmg. taken -2%','"Store TP"+6','Weapon skill damage +10%','Accuracy+17 Attack+17',}},
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Ishvara Earring",
		left_ring="Epaminondas's Ring",
		right_ring="Chirich Ring +1",
		back="Moonbeam Cape"
	}
	
	sets.Cataclysm = {
		ammo="Pemphredo Tathlum",
		head="Pixie Hairpin +1",
		body={ name="Chironic Doublet", augments={'Enmity+4','"Mag.Atk.Bns."+14','Weapon skill damage +9%','Accuracy+9 Attack+9',}},
		hands={ name="Chironic Gloves", augments={'Pet: "Dbl. Atk."+2','INT+8','Weapon skill damage +7%','Accuracy+7 Attack+7',}},
		legs={ name="Chironic Hose", augments={'Accuracy+2','STR+2','Weapon skill damage +10%','Mag. Acc.+5 "Mag.Atk.Bns."+5',}},
		feet={ name="Chironic Slippers", augments={'Phys. dmg. taken -2%','"Store TP"+6','Weapon skill damage +10%','Accuracy+17 Attack+17',}},
		neck={ name="Argute Stole +2", augments={'Path: A',}},
		waist="Orpheus's Sash",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Friomisi Earring",
		left_ring="Epaminondas's Ring",
		right_ring="Hetairoi Ring",
		back={ name="Lugh's Cape", augments={'INT+8','Mag. Acc+7 /Mag. Dmg.+7','Mag. Acc.+8',}}	
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
		back="Pahtli Cape"	
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
	if spell.name == 'Immanence' then
		equip(sets.Immanence)
	end
	if spell.name == 'Ebullience' then
		equip(sets.Ebullience)
	end
	if spell.name == 'Rapture' then
		equip(sets.Rapture)
	end
	if spell.name == 'Perpetuance' then
		equip(sets.Perpetuance)
	end
	if spell.name == 'Penury' then
		equip(sets.Penury)
	end
	if spell.name == 'Parsimony' then
		equip(sets.Parsimony)
	end
	if spell.name == 'Celerity' then
		equip(sets.Celerity)
	end
	if spell.name == 'Alacrity' then
		equip(sets.Alacrity)
	end
	if spell.name == 'Stormsurge' then
		equip(sets.Stormsurge)
	end
	
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
	if spell.name == 'Adloquium' or spell.name == 'Embrava' or string.find(spell.english,'Animus') then 
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
		equip(sets.ElementalMagic)
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
--If I want a manual 'Refresh' set or 'MDT' or 'DT' set I can do that in game with equipsets.  
--But I don't want to fuck myself by ignoring the engaged check.
--I'm also deciding not to use a Binding Key to put my in a MDT, PDT, DT, Refresh Set.
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
	send_command('@input /echo Spell Element: ' .. spell.element)
	-- Debug: Day Element Check
	send_command('@input /echo Day Element: ' .. world.day_element)
    
	-- Check if the spell element matches the current day
    if spell.element == world.day_element then
        bonus = bonus + 10
    elseif spell.element == opposing_elements[world.day_element] then
        bonus = bonus - 10
    end

	-- Debug: This returns the weather name found in weather_to_intensity example: Rain
	send_command('@input /echo Self Weather Type: ' .. world.weather) 
	-- Debug: This returns back the weather of the zone or the storm.  
	--        Storm weather will come back first. Zone weather returns if there is no storm.
	send_command('@input /echo Weather Type: ' .. world.weather_element)
	
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
	send_command('@input /echo Bonus Amount: ' .. bonus.. '%')       
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
		send_command('@input /echo Waist: Hachirin-no-Obi')
        return { equip({waist = "Hachirin-no-obi"}) }
    else
		--Debug
		send_command('@input /echo Waist: Tengu-no-Obi')	
        return { equip({waist = "Tengu-no-obi"}) }
    end
end

