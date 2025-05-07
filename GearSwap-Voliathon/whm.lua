-- White Mage GearSwap
-- Abbreviation WHM

function get_sets()
	-- Set macro book/set --
    send_command('input /macro book 1;wait .1;input /macro set 1')
	
	-- Toggle Engaged sets button, change if you want; currently ALT+F9 toggles forward, CTRL+F9 toggles backwards
    send_command('bind !f9 gs c toggle Engaged set')
	send_command('bind ^f9 gs c reverse Engaged set')
	
    -- Job Abilities for White Mage --
    sets.Benediction = {body="Piety Bliaut +1"}
    sets.AfflatusSolace = {body="Ebers bliaut +3", back="Alaunus's Cape"}
    sets.DivineCaress = {hands="Ebers Mitts +2", back="Mending cape"}
	sets.Devotion = {heads="Piety Cap +1"}
	
	-- Cursna
	-- Regen
	-- Devotion
	-- Benediction
	-- Barspells
	-- Divine
	-- Enhancing
	-- Enfeebling

    -- Fast Cast for White Mage --
    sets.FastCast = {
		ammo="Pemphredo Tathlum",
		head="Eber's cap +2",
		body="Inyanga Jubbah +2",
		hands="Gende. Gages +1",
		legs="Ayanmo cosciales +2",
		feet="Theophany duckbills +3",
		neck="Voltsurge Torque",
		waist="Witful Belt",
		left_ear="Loquac. Earring",
		right_ear="Malignance Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back="Perimede Cape"
	}
	
	sets.Cursna = {
		body="Ebers bliaut +3",
		hands="Theophany mitts +3", 
		legs="Theophany pantaloons +1",
		left_ring="Ephedra ring"
	}
	
	sets.BarSpells = {
		body="Ebers bliaut +3",
		legs="Piety pantaloons +3"
	}

	-- Enhancing Spells \\Generalized//
    sets.EnhancingMagic = {
		main="Daybreak",
		sub="Genmei Shield",
		ammo="Clarus stone",
		head="Befouled Crown",
		body="Telchine chasuble ",
		hands="Dynasty Mitts",
		legs="Piety Pantaloons +3",
		feet="Theophany duckbills +3",
		waist="Austerity Belt +1",
		left_ear="Infused Earring",
		right_ear="Loquacious Earring",
		left_ring="Stikini ring +1",
		right_ring="Stikini ring +1",
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
		legs="Ebers pantaloons +3",
		feet="Regal pumps +1",
		waist="Austerity Belt +1",
		left_ear="Infused Earring",
		right_ear="Earthcry Earring",
		left_ring="Veneficium Ring",
		right_ring="Stikini ring +1",
		back="Perimede Cape"	
	}

	sets.Enhancing = {}

	--Regen Max Duration
	sets.Regen = set_combine(sets.Duration,  {
		main="Musa",
		sub="Khonsu",
		head="Arbatel Bonnet +3",
		hands="Ebers mitts +2",
		body="Piety Bliaut +1",
		back={ name="Bookworm's Cape", augments={'INT+2','MND+2','Helix eff. dur. +15','"Regen" potency+10'}}	
	})
	
    sets.Cure = {
		main="Daybreak",
		sub="Genmei Shield",
		neck="Nodens gorget",
        head="Vanya Hood",
		body="Ebers bliaut +3",
		hands="Theophany mitts +3",
		right_ring="Stikini ring +1",
		left_ring="Veneficium Ring", 
		waist="Austerity belt+1", 
		back="Pahtli Cape",
		legs="Ebers Pantaloons +3",
		feet="Vanya Clogs",
		left_ear="Mendi. Earring",
		right_ear="Glorious earring"
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
		ammo="Dosis Tathlum",
		head="Merlinic Hood",
		body="Shamash robe",
		hands="Merlinic Dastanas",
		legs="Ea slops +1",
		feet="Merlinic Crackows",
		neck="Null loop",
		waist="Null belt",
		left_ear="Barkaro. Earring",
		right_ear="Halasz Earring",
		left_ring="Stikini ring +1",
		right_ring="Stikini ring +1",
		back="Seshaw cape"
	}
	
	sets.MagicAccuracy = {
		neck="Null loop",
		waist="Null belt",
		body="Ebers bliaut +3"
	}

	
    sets.DarkMagic = {
		main="Daybreak",
		sub="Genmei Shield",	
		range="Dunna",
		head="Bagua Galero +1",
		body="Geomancy tunic +3",
		hands="Merlinic Dastanas",
		legs="Merlinic Shalwar",
		feet="Merlinic Crackows",
		neck="Null loop",
		waist="Null belt",
		left_ear="Barkaro. Earring",
		right_ear="Gwati Earring",
		left_ring="Jhakri Ring",
		right_ring="Stikini ring +1",
		back="Seshaw cape"
	}

    sets.Enfeebling = {
		main="Daybreak",
		sub="Genmei Shield",	
		range="Dunna",
		head="Befouled Crown",
		body="Ischemia Chasu.",
		hands="Regal cuffs",
		legs="Merlinic Shalwar",
		feet="Theophany duckbills +3",
		neck="Null loop",
		waist="Null belt",
		left_ear="Barkaro. Earring",
		right_ear="Gwati Earring",
		left_ring="Jhakri ring",
		right_ring="Stikini Ring +1",
		back="Seshaw cape"
	}


	-- Impact whenever the fuck I get the damn cloak
    sets.Impact = {    
      body="Twilight Cloak",
	}

	-- PDT Set
    sets.PDT = {
		ammo="Staunch Tathlum +1",
		head="Nyame Helm",
		body="Shamash Robe",
		hands="Nyame gauntlets",
		legs="Ebers Pantaloons +3",
		feet="Ebers duckbills +2",
		neck="Null loop",
		waist="Null belt",
		left_ear="Genmei Earring",
		right_ear="Infused Earring",
		left_ring="Fortified Ring",
		right_ring="Defending Ring",
		back="Solemnity Cape"
	}

	-- Magic Defense and Magic Defense Set
    sets.MDT = {
		ammo="Staunch Tathlum +1",
		head="Nyame Helm",
		body="Shamash Robe",
		hands="Nyame gauntlets",
		legs="Nyame flanchard",
		feet="Nyame sollerets",
		neck="Null loop",
		waist="Null belt",
		left_ear="Genmei Earring",
		right_ear="Infused Earring",
		left_ring="Fortified Ring",
		right_ring="Defending Ring",
		back="Solemnity Cape"
	}

		
	-- When I gotta kite shite, I put on my Sandals and shit...
    sets.Kiting = {left_ring="Shneddick ring"}
	
	sets.Refresh = set_combine(sets.PDT,  {
		main="Daybreak",
		sub="Genmei shield",
		head="Befouled crown",
		body="Ebers bliaut +3",
		hands="Ebers mitts +2",
		waist="Null belt",
		right_ring="Stikini ring +1",
		left_ring="Stikini ring +1",
		ammo="Homiliary"
	})
	
	
    ------------------------------------------------------------------------------------------------------------------
    -- Weaponskill sets
    ------------------------------------------------------------------------------------------------------------------

	-- All Weaponskills for Geomancer unless explicitly defined below sets.precast.WS 
     sets.WSD = {
		ammo="Amar Cluster",
		head="Nyame Helm",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck="Fotia Gorget",
		waist="Grunfeld Rope",
		left_ear="Ishvara Earring",
		right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		left_ring="Epaminondas's Ring",
		right_ring="Chirich Ring +1",
		back="Moonlight Cape"
	 }
	 
	 sets.MysticBoon = {
		ammo="Amar Cluster",
		head="Nyame Helm",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck="Fotia Gorget",
		waist="Grunfeld Rope",
		left_ear="Ishvara Earring",
		right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		left_ring="Epaminondas's Ring",
		right_ring="Chirich Ring +1",
		back="Moonlight Cape"	 
	 }
	 
	 
	 sets.Yagrush = set_combine(sets.FastCast,  {
		main="Yagrush",
		hands="Eber Mitts +2",
		legs="Ebers Pantaloons +3",
		back="Mending cape"
	 })

	  -- Engaged Sets Toggle--
	sets.engaged = {}
	sets.engaged.index = {'TP','Movement', 'TakingLessPhysicalDamage', 'TakingLessMagicDamage', 'Accuracy', 'Refresh'}
	engaged_ind = 1  	 
	 
	sets.engaged.TP = {
		ammo="Amar Cluster",
		head="Aya. Zucchetto +2",
		body="Ayanmo Corazza +2",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Aya. Gambieras +2",
		neck="Null loop",
		waist="Grunfeld Rope",
		left_ear="Brutal Earring",
		right_ear="Cessance Earring",
		left_ring="Chirich Ring +1",
		right_ring="Chirich Ring +1",
		back="Moonlight Cape"	
	}
	sets.engaged.Movement = set_combine(sets.Kiting, {})
	sets.engaged.TakingLessPhysicalDamage = set_combine(sets.PDT, {})
	sets.engaged.TakingLessMagicDamage = set_combine(sets.MDT, {})
	sets.engaged.Accuracy = {}
	sets.engaged.Refresh = set_combine(sets.Refresh, {})
	 
end

function precast(spell,abil)
	if spell.action_type == 'Magic' then
		equip(sets.FastCast)
	end
		--Can add stuff here for other magic. Doesn't have to go to idle at all
	

	--WS Lookups
	if spell.name == "Hexa Strike" then
		equip(sets.WSD)
	end
	if spell.name == "Mystic Boon" then
		equip(sets.MysticBoon)
	end	
	-- Add logic for Waltz
	-- Add logic for Utsusemi
  
  
end

function midcast(spell)
	--Enhancing Magic Check
	if spell.skill == 'Enhancing Magic' then
		if string.find(spell.english, 'Bar') then
			equip(sets.BarSpells)
		elseif string.find(spell.english, 'Boost') then
			equip(sets.BoostSpells)
		else
			equip(sets.Enhancing)
		end
	end
	if string.find(spell.english,'Regen') then 
		equip(sets.Regen)
	end	
	if spell.skill == 'Enfeebling Magic' then
		equip(sets.Enfeebling)
	end
	if string.find(spell.english,'Cur') then 
		equip(sets.Cure)
	end
	if spell.name == 'Stoneskin' then
		equip(sets.Stoneskin)
	end
	if spell.skill == 'Elemental Magic' then
		equip(sets.ElementalMagic)
	end
	if string.find(spell.english, 'na') then
		equip(sets.Yagrush)
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
		send_command('@input /tell <me> Wakies Wakies Voluzera We hit 0 HP on accident. We shall live forever!!!')
	end
end)

