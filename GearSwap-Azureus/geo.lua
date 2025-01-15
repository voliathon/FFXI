function get_sets()
	-- Set macro book/set --
    send_command('input /macro book 10;wait .1;input /macro set 1')
	
	-- Toggle Engaged sets button, change if you want; currently ALT+F9 toggles forward, CTRL+F9 toggles backwards
    send_command('bind !f9 gs c toggle Engaged set')
	send_command('bind ^f9 gs c reverse Engaged set')
	
    -- Job Abilities for Geomancer --
    sets.Bolster = {body="Bagua Tunic +1"}
    sets.LifeCycle = {body="Geomancy Tunic +1", back="Nantosuelta's Cape"}
    sets.FullCircle = {head="Azimuth Hood +2"}
    sets.CurativeRecantation = {hands="Bagua Mitaines +1"}
    sets.MendingHalation = {legs="Bagua Pants"}
    sets.RadialArcana = {feet="Bagua Sandals +1"}

    -- Fast Cast for Geomancer --
    sets.FastCast = {
		main="Idris",
		sub="Genmei Shield",	
		range="Dunna",
		head={ name="Merlinic Hood", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','"Conserve MP"+3','INT+2','"Mag.Atk.Bns."+15',}},
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
		sub="Genmei Shield",
		range="Dunna",
		head="Azimuth Hood +2",
		body="Agwu's Robe",
		hands={ name="Amalric Gages", augments={'INT+10','Elem. magic skill +15','Dark magic skill +15',}},
		legs="Volte Brais",
		feet="Azimuth Gaiters +2",
		neck="Incanter's Torque",
		waist="Embla Sash",
		left_ear="Magnetic Earring",
		right_ear={ name="Azimuth Earring +1", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+12','Damage taken-4%',}},
		left_ring={name="Stikini Ring +1",bag="Wardrobe 3"},
		right_ring={name="Stikini Ring +1",bag="Wardrobe 5"},
		back={ name="Lifestream Cape", augments={'Geomancy Skill +6','Indi. eff. dur. +14','Pet: Damage taken -3%','Damage taken-1%',}}
	}

	-- Enhancing Spells \\Generalized//
    sets.EnhancingMagic = {
		main="Daybreak",
		sub="Genmei Shield",
		ammo="Clarus stone",
		head="Volte beret",
		body="Shango Robe",
		hands="Bagua Mitaines +1",
		legs="Geomancy pants +1",
		feet="Regal pumps +1",
		waist="Austerity Belt +1",
		left_ear="Infused Earring",
		right_ear="Loquacious Earring",
		left_ring={name="Stikini Ring +1",bag="Wardrobe 3"},
		right_ring={name="Stikini Ring +1",bag="Wardrobe 5"},
		back="Perimede Cape"
	}

	-- Stoneskin
	sets.Stoneskin = {
		main="Daybreak",
		sub="Genmei Shield",
		ammo="Clarus stone",
		head="Umuthi Hat",
		body="Shango Robe",
		hands="Carapacho Cuffs",
		legs="Geomancy pants +1",
		feet="Regal pumps +1",
		waist="Austerity Belt +1",
		left_ear="Infused Earring",
		right_ear="Earthcry Earring",
		left_ring={name="Stikini Ring +1",bag="Wardrobe 3"},
		right_ring={name="Stikini Ring +1",bag="Wardrobe 5"},
		back="Perimede Cape"	
	}

	sets.Enhancing = {}


	-- Entrust 
	sets.Entrust = {
		main="Idris"
	}

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


	-- Protecting the party
    sets.Protect = {
		ring1="Sheltered Ring"
	}

	-- MDF the party
    sets.Shell = {
		ring1="Sheltered Ring"
	}

  	-- Elemental Magic sets...  When shit needs to die, this is the set to make it happen
	sets.ElementalMagic = {
		main="Daybreak",
		sub="Genmei Shield",	
		ammo="Ghastly Tathlum",
		head="Agwu's Cap",
		body="Agwu's Robe",
		hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		legs="Agwu's Slops",
		feet="Agwu's Pigaches",
		neck="Baetyl Pendant",
		waist="Tengu-no-Obi",
		left_ear="Friomisi Earring",
		right_ear="Malignance Earring",
		left_ring="Locus Ring",
		right_ring="Mujin Band",
		back="Seshaw Cape"
	}
	
    sets.Enfeebling = {
		main="Daybreak",
		sub="Genmei Shield",	
		range="Dunna",
		head="Volte beret",
		body="Ischemia Chasu.",
		hands="Merlinic Dastanas",
		legs="Merlinic Shalwar",
		feet="Bagua Sandals +1",
		neck="Sanctity Necklace",
		waist="Refoccilation stone",
		left_ear="Barkaro. Earring",
		right_ear="Gwati Earring",
		left_ring={name="Stikini Ring +1",bag="Wardrobe 3"},
		right_ring={name="Stikini Ring +1",bag="Wardrobe 5"},
		back="Null shawl"
	}


	-- Impact whenever the fuck I get the damn cloak
    sets.Impact = {    
      body="Twilight Cloak",
	}


	-- PDT Set
    sets.PDT = {
		main="Idris",
		sub="Genmei Shield",	
		range="Dunna",
		head="Azimuth Hood +2",
		body="Shamash Robe",
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet="Azimuth Gaiters +2",
		neck={ name="Loricate Torque +1", augments={'Path: A',}},
		waist="Isa Belt",
		left_ear="Eabani Earring",
		right_ear={ name="Azimuth Earring +1", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+12','Damage taken-4%',}},
		left_ring="Shneddick Ring",
		right_ring={name="Stikini Ring +1",bag="Wardrobe 5"},
		back={ name="Lifestream Cape", augments={'Geomancy Skill +6','Indi. eff. dur. +14','Pet: Damage taken -3%','Damage taken-1%',}}
	}

    -- .Pet sets are for when Luopan is present.
    sets.PetDT = {
		main="Idris",
		sub="Genmei Shield",	
		range="Dunna",
		head={ name="Telchine Cap", augments={'Pet: Mag. Evasion+16','Pet: "Regen"+3','Pet: Damage taken -4%',}},
		body={ name="Telchine Chas.", augments={'Pet: Mag. Evasion+18','Pet: "Regen"+3','Pet: Damage taken -4%',}},
		hands={ name="Telchine Gloves", augments={'Pet: Mag. Evasion+18','Pet: "Regen"+3','Pet: Damage taken -4%',}},
		legs={ name="Telchine Braconi", augments={'Pet: DEF+15','Pet: "Regen"+3','Pet: Damage taken -4%',}},
		feet={ name="Telchine Pigaches", augments={'Pet: Mag. Evasion+19','Pet: "Regen"+3','Pet: Damage taken -4%',}},
		neck={ name="Loricate Torque +1", augments={'Path: A',}},
		waist="Isa Belt",
		left_ear="Genmei Earring",
		right_ear="Infused Earring",
		left_ring={name="Stikini Ring +1",bag="Wardrobe 3"},
		right_ring="Defending Ring",
		back={ name="Nantosuelta's Cape", augments={'MP+60','Pet: "Regen"+10','Pet: "Regen"+5',}}
	}

	-- Magic Defense and Magic Defense Set
    sets.MDT = {
		main="Idris",
		sub="Genmei Shield",	
		range="Dunna",
		head="Azimuth Hood +2",
		body="Shamash Robe",
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet="Azimuth Gaiters +2",
		neck={ name="Loricate Torque +1", augments={'Path: A',}},
		waist="Isa Belt",
		left_ear="Eabani Earring",
		right_ear={ name="Azimuth Earring +1", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+12','Damage taken-4%',}},
		left_ring={name="Stikini Ring +1",bag="Wardrobe 3"},
		right_ring={name="Stikini Ring +1",bag="Wardrobe 5"},
		back={ name="Lifestream Cape", augments={'Geomancy Skill +6','Indi. eff. dur. +14','Pet: Damage taken -3%','Damage taken-1%',}}
	}

		
	-- When I gotta kite shite, I put on my Sandals and shit...
    sets.Kiting = {left_ring="Shneddick Ring"}

    
	sets.Refresh = set_combine(sets.PDT,  {
		main="Daybreak",
		sub="Genmei shield",
		head="Volte beret",
		body="Jhakri robe +2",
		hands="Volte gloves",
		legs="Volte brais",
		feet="Volte gaiters",
		left_ring={name="Stikini Ring +1",bag="Wardrobe 3"},
		right_ring={name="Stikini Ring +1",bag="Wardrobe 5"},
	})
	
	
    ------------------------------------------------------------------------------------------------------------------
    -- Weaponskill sets
    ------------------------------------------------------------------------------------------------------------------

	-- All Weaponskills for Geomancer unless explicitly defined below sets.precast.WS 
     sets.WS = {
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
		left_ring="Chirich Ring +1",
		right_ring="Epaminondas's Ring",
		back="Null shawl"
	 }
	 
	 
	 sets.Idris = {
		main="Idris",
		sub="Genmei Shield"
	 }

	  -- Engaged Sets Toggle--
	sets.engaged = {}
	sets.engaged.index = {'Movement','PETDT', 'TakingLessPhysicalDamage', 'TakingLessMagicDamage', 'Accuracy', 'Refresh'}
	engaged_ind = 1  	 
	 
	sets.engaged.Movement = set_combine(sets.PDT, {left_ring="Shneddick Ring"})
	sets.engaged.PETDT = set_combine(sets.PetDT, {})
	sets.engaged.TakingLessPhysicalDamage = set_combine(sets.PDT, {})
	sets.engaged.TakingLessMagicDamage = set_combine(sets.MDT, {})
	sets.engaged.Accuracy = {
		head="Azimuth Hood +2",
		body="Jhakri Robe +2",
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet="Azimuth Gaiters +2",
		neck="Sanctity Necklace",
		waist="Isa Belt",
		left_ear="Digni. Earring",
		right_ear="Crep. Earring",
		left_ring="Chirich Ring +1",
		right_ring="Chirich Ring +1",
		back="Null shawl"	
	}
	sets.engaged.Refresh = set_combine(sets.Refresh, {})
	 
end

function precast(spell,abil)
	--Enhancing Magic Check
	if spell.action_type == 'Magic' then
		equip(sets.FastCast)
	end
		--Can add stuff here for other magic. Doesn't have to go to idle at all
	

	--WS Lookups
	if spell.name == "Hexa Strike" then
		equip(sets.WSD)
	end
	-- Add logic for Waltz
	-- Add logic for Utsusemi
  
  
end

--We need to do some thinking and testing for this set...
function aftercast(spell)
	equip_current()
end


function midcast(spell)
	if spell.skill == 'Enhancing Magic' then
		equip(sets.Enhancing)
	end
	if string.find(spell.english,'Cur') then 
		equip(sets.Cure)
	end
	if spell.name == 'Stoneskin' then
		equip(sets.Stoneskin)
	end
	if spell.name == 'Entrust' then
		equip(sets.Idris)
	end
	if spell.type == 'Geomancy' then
	    equip(sets.Geomancy)
	end
	if spell.name == 'Cursna' then
		equip(sets.Cursna)
	end
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
		send_command('@input /tell <me> Wakies Wakies my baby Bear. We hit 0 HP on accident. We shall live forever!!!')
	end
end)

