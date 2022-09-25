function get_sets()
	-- Set macro book/set --
    send_command('input /macro book 1;wait .1;input /macro set 2')
	
	-- Toggle Engaged sets button, change if you want; currently ALT+F9 toggles forward, CTRL+F9 toggles backwards
    send_command('bind !f9 gs c toggle Engaged set')
	send_command('bind ^f9 gs c reverse Engaged set')
	
    -- Job Abilities for Geomancer --
    sets.Bolster = {body="Bagua Tunic +1"}
    sets.LifeCycle = {body="Geomancy Tunic +1", back="Nantosuelta's Cape"}
    sets.FullCircle = {head="Azimuth Hood +1"}
    sets.CurativeRecantation = {hands="Bagua Mitaines +1"}
    sets.MendingHalation = {legs="Bagua Pants"}
    sets.RadialArcana = {feet="Bagua Sandals +1"}

    -- Fast Cast for Geomancer --
    sets.FastCast = {
		main="Idris",
		sub="Genmei Shield",	
		range="Dunna",
		head="Merlinic Hood",
		body="Shango Robe",
		hands="Amalric gages",
		legs="Geo. Pants +1",
		feet="Merlinic Crackows",
		waist="Witful Belt",
		left_ear="Loquac. Earring",
		right_ear="Infused earring",
		left_ring="Venficium ring",
		back={ name="Nantosuelta's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Pet: "Regen"+10','Pet: "Regen"+5'}}
	}


	-- Geomancer Spells
    sets.Geomancy = {
		main="Idris",
		sub="Genmei Shield",
		range="Dunna",
        head="Azimuth Hood +1",
		left_ear="Infused Earring",
		right_ear="Gifted Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini ring +1",
        body="Bagua Tunic +1",
		hands="Geomancy Mitaines +1",
        back={ name="Nantosuelta's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Pet: "Regen"+10','Pet: "Regen"+5'}},
		waist="Austerity Belt +1",
		legs="Geomancy Pants +2",
		feet="Azimuth Gaiters +1"
	}

	-- Enhancing Spells \\Generalized//
    sets.EnhancingMagic = {
		main="Daybreak",
		sub="Genmei Shield",
		ammo="Clarus stone",
		head="Befouled Crown",
		body="Shango Robe",
		hands="Bagua Mitaines +1",
		legs="Geomancy Pants +2",
		feet="Regal pumps +1",
		waist="Austerity Belt +1",
		left_ear="Infused Earring",
		right_ear="Loquacious Earring",
		left_ring="Stikini Ring +1",
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
		legs="Geomancy Pants +2",
		feet="Regal pumps +1",
		waist="Austerity Belt +1",
		left_ear="Infused Earring",
		right_ear="Earthcry Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini ring +1",
		back="Perimede Cape"	
	}

	sets.Enhancing = {}


	-- Entrust 
	sets.Entrust = {
		main="Solstice"
	}

    sets.Cure = {
		main="Daybreak",
		sub="Genmei Shield",
        head="Vanya Hood",
		body="Chironic doublet",
		hands="Telchine gloves",
		right_ring="Stikini ring +1",
		left_ring="Stikini Ring +1", 
		waist="Austerity belt+1", 
		back="Pahtli Cape",
		legs="Geomancy Pants +2",
		feet="Vanya Clogs"
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
		body="Merlinic Jubbah",
		hands="Merlinic Dastanas",
		legs="Ea slops +1",
		feet="Merlinic Crackows",
		neck="Saevus pendant +1",
		waist="Refoccilation stone",
		left_ear="Barkaro. Earring",
		right_ear="Halasz Earring",
		left_ring="Stikini ring +1",
		right_ring="Stikini ring +1",
		back="Seshaw cape"
	}
	
	sets.MagicAccuracy = {}

	
    sets.DarkMagic = {
		main="Daybreak",
		sub="Genmei Shield",	
		range="Dunna",
		head="Bagua Galero +1",
		body="Geo. Tunic +2",
		hands="Merlinic Dastanas",
		legs="Merlinic Shalwar",
		feet="Merlinic Crackows",
		neck="Saevus Pendant +1",
		waist="Refoccilation stone",
		left_ear="Barkaro. Earring",
		right_ear="Gwati Earring",
		left_ring="Stikini Ring +1",
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
		feet="Bagua Sandals +1",
		neck="Sanctity Necklace",
		waist="Refoccilation stone",
		left_ear="Barkaro. Earring",
		right_ear="Gwati Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back="Seshaw cape"
	}


	-- Impact whenever the fuck I get the damn cloak
    sets.Impact = {    
      body="Twilight Cloak",
	}


    -- /heal the damn MP/HP up.
    sets.heal = {
		range="Dunna",
		head="Befouled Crown",
		body="Shamash Robe",
		hands="Merlinic Dastanas",
		legs="Assid. Pants +1",
		feet="Bagua Sandals +1",
		neck="Sanctity Necklace",
		waist="Austerity Belt +1",
		left_ear="Barkaro. Earring",
		right_ear="Gwati Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back="Felicitas cape +1"
	}


	-- PDT Set
    sets.PDT = {
		main="Idris",
		sub="Genmei Shield",
		range="Dunna",
		head="Nyame Helm",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck={ name="Loricate Torque +1", augments={'Path: A',}},
		waist="Slipor Sash",
		left_ear="Genmei Earring",
		right_ear="Infused Earring",
		left_ring="Fortified Ring",
		right_ring="Defending Ring",
		back="Moonlight Cape"
	}

    -- .Pet sets are for when Luopan is present.
    sets.PetDT = {
		main="Idris",
		sub="Genmei Shield",	
		range="Dunna",
		head="Azimuth Hood +1",
		body="Shamash robe-",
		hands="Geo. Mitaines +3",
		legs="Assid. Pants +1",
		feet="Bagua Sandals +1",
		neck="Loricate torque +1",
		waist="Isa Belt",
		left_ear="Genmei Earring",
		right_ear="Infused Earring",
		left_ring="Yacuruna Ring",
		right_ring="Defending Ring",
		back={ name="Nantosuelta's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Pet: "Regen"+10','Pet: "Regen"+5'}}
	}

	-- Magic Defense and Magic Defense Set
    sets.MDT = {
		main="Idris",
		sub="Genmei Shield",
		range="Dunna",
		head="Nyame Helm",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck={ name="Loricate Torque +1", augments={'Path: A',}},
		waist="Slipor Sash",
		left_ear="Genmei Earring",
		right_ear="Infused Earring",
		left_ring="Fortified Ring",
		right_ring="Defending Ring",
		back="Moonlight Cape"

	}

		
	-- When I gotta kite shite, I put on my Sandals and shit...
    sets.Kiting = {feet="Geomancy Sandals +2"}

    
	sets.Refresh = set_combine(sets.PDT,  {
		main="Daybreak",
		sub="Genmei shield",
		head="Befouled crown",
		body="Shamash robe",
		hands="Bagua mitaines +1",
		right_ring="Stikini ring +1"
	})
	
	
    ------------------------------------------------------------------------------------------------------------------
    -- Weaponskill sets
    ------------------------------------------------------------------------------------------------------------------

	-- All Weaponskills for Geomancer unless explicitly defined below sets.precast.WS 
     sets.WS = {
		main="Daybreak",
		sub="Genmei Shield",
		ammo="Amar Cluster",
		head="Jhakri Coronal +2",
		body="Jhakri Robe +2",
		hands="Jhakri Cuffs +2",
		legs="Jhakri Slops +2",
		feet="Jhakri Pigaches +2",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Steelflash Earring",
		right_ear="Bladeborn Earring",
		left_ring="K'ayres Ring",
		right_ring="Karieyh Ring"
	 }
	 
	 
	 sets.Idris = {
		main="Idris",
		sub="Genmei Shield"
	 }

	  -- Engaged Sets Toggle--
	sets.engaged = {}
	sets.engaged.index = {'Movement','PETDT', 'TakingLessPhysicalDamage', 'TakingLessMagicDamage', 'Accuracy', 'Refresh'}
	engaged_ind = 1  	 
	 
	sets.engaged.Movement = set_combine(sets.Kiting, {})
	sets.engaged.PETDT = set_combine(sets.PetDT, {})
	sets.engaged.TakingLessPhysicalDamage = set_combine(sets.PDT, {})
	sets.engaged.TakingLessMagicDamage = set_combine(sets.MDT, {})
	sets.engaged.Accuracy = {}
	sets.engaged.Refresh = set_combine(sets.Refresh, {})
	 
end

function precast(spell,abil)
	--Enhancing Magic Check
	if spell.skill == 'Enhancing Magic' then
		equip(sets.Enhancing)
	elseif spell.skill == 'Enfeebling Magic' then
		equip(sets.Enfeebling)
	elseif spell.action_type == 'Magic' then
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
	if spell.skill == 'Elemental Magic' then
		equip(sets.ElementalMagic)
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
		send_command('@input /tell <me> Wakies Wakies Voluzera We hit 0 HP on accident. We shall live forever!!!')
	end
end)

