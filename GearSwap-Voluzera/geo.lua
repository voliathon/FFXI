function get_sets()
	-- Set macro book/set --
    send_command('input /macro book 5;wait .1;input /macro set 1')
	
	-- Toggle Engaged sets button, change if you want; currently ALT+F9 toggles forward, CTRL+F9 toggles backwards
    send_command('bind !f9 gs c toggle Engaged set')
	send_command('bind ^f9 gs c reverse Engaged set')
	
	-- Toggle Burst sets button, change if you want; currently ALT+F10 toggles forward, CTRL+F10 toggles backwards
    send_command('bind !f10 gs c toggle Burst set')
	send_command('bind ^f10 gs c reverse Burst set')
	
    -- Job Abilities for Geomancer --
    sets.Bolster = {body="Bagua Tunic +1"}
    sets.LifeCycle = {body="Geomancy Tunic +3", back="Nantosuelta's Cape"}
    sets.FullCircle = {head="Azimuth Hood +3"}
    sets.CurativeRecantation = {hands="Bagua Mitaines +1"}
    sets.MendingHalation = {legs="Bagua Pants +1"}
    sets.RadialArcana = {feet="Bagua Sandals +1"}

    -- Fast Cast for Geomancer --
    sets.FastCast = {
		main="Idris",
		sub="Genmei Shield",	
		range="Dunna",
		head={ name="Merlinic Hood", augments={'Mag. Acc.+28','Magic burst dmg.+11%','INT+3','"Mag.Atk.Bns."+15'}},
		body={ name="Merlinic Jubbah", augments={'Mag. Acc.+7','Magic burst dmg.+11%','INT+9','"Mag.Atk.Bns."+11'}},
		hands="Geo. Mitaines +3",
		legs="Geomancy Pants +3",
		feet={ name="Merlinic Crackows", augments={'Mag. Acc.+18 "Mag.Atk.Bns."+18','Magic burst dmg.+7%','Mag. Acc.+7','"Mag.Atk.Bns."+11'}},
		neck="Voltsurge Torque",
		waist="Witful Belt",
		left_ear="Malignance Earring",
		right_ear="Enchntr. Earring +1",
		left_ring="Stikini Ring +1",
		right_ring="Evanescence Ring",
		back="Perimede Cape"
	}


	-- Geomancer Spells
    sets.Geomancy = {
		main="Idris",
		sub="Genmei Shield",
		range="Dunna",
        head="Azimuth Hood +3",
		neck="Sanctity necklace",
		left_ear="Malignance Earring",
		right_ear="Gifted Earring",
		left_ring="Stikini ring +1",
		right_ring="Stikini ring",
        body="Bagua Tunic +1",
		hands="Geo. Mitaines +3",
        back={ name="Nantosuelta's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Pet: "Regen"+10','Pet: "Regen"+5'}},
		waist="Austerity Belt +1",
		legs="Azimuth Tights +1",
		feet="Azimuth Gaiters +2"
	}

	-- Enhancing Spells \\Generalized//
    sets.EnhancingMagic = {
		main="Daybreak",
		sub="Genmei Shield",
		ammo="Impatiens",
		head={ name="Telchine Cap", augments={'Enh. Mag. eff. dur. +9'}},
		body={ name="Telchine Chas.", augments={'Enh. Mag. eff. dur. +9'}},
		hands={ name="Telchine Gloves", augments={'Enh. Mag. eff. dur. +8'}},
		legs={ name="Telchine Braconi", augments={'Enh. Mag. eff. dur. +10'}},
		feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +8'}},
		neck="Enhancing Torque",
		waist="Witful Belt",
		left_ear="Malignance Earring",
		right_ear="Enchntr. Earring +1",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring",
		back="Perimede Cape"
	}

	-- Stoneskin
	sets.Stoneskin = set_combine(sets.EnhancingMagic,  {
		head="Umuthi Hat",
		hands="Carapacho Cuffs",
		right_ear="Earthcry Earring",
		left_ring="Stikini ring +1",
		right_ring="Stikini ring",
		waist="Siegel Sash",
		legs="Geomancy Pants +3",
		back="Perimede Cape"	
	})

	-- Entrust 
	sets.Entrust = {
		main="Solstice"
	}

    sets.Cure = set_combine(sets.EnhancingMagic,  {
		main="Daybreak",
		sub="Genmei Shield",
		ammo="Impatiens",
		head="Befouled Crown",
		body="Annoint. Kalasiris",
		hands={ name="Telchine Gloves", augments={'Enh. Mag. eff. dur. +8'}},
		legs="Gyve Trousers",
		feet={ name="Vanya Clogs", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6'}},
		neck="Voltsurge Torque",
		waist="Acerbic Sash +1",
		left_ear="Malignance Earring",
		right_ear="Halasz Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring",
		back="Perimede Cape"
	})


	-- Protecting the party
    sets.Protect = set_combine(sets.EnhancingMagic,  {
		ring1="Sheltered Ring"
	})

	-- MDF the party
    sets.Shell = set_combine(sets.EnhancingMagic,  {
		ring1="Sheltered Ring"
	})

  	-- Elemental Magic sets...  When shit needs to die, this is the set to make it happen
	sets.ElementalMagic = {
		main="Daybreak",
		sub="Genmei Shield",	
		ammo="Sroda tathlum",
		head={ name="Merlinic Hood", augments={'Mag. Acc.+28','Magic burst dmg.+11%','INT+3','"Mag.Atk.Bns."+15'}},
		body="Azimuth coat +2",
		hands="Azimuth gloves +2",
		legs="Azimuth tights +2",
		feet={ name="Merlinic Crackows", augments={'Mag. Acc.+18 "Mag.Atk.Bns."+18','Magic burst dmg.+7%','Mag. Acc.+7','"Mag.Atk.Bns."+11'}},
		neck="Mizu. Kubikazari",
		waist="Refoccilation Stone",
		left_ear="Malignance- Earring",
		right_ear="Halasz Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring",
		back="Seshaw Cape"
	}
	
    sets.DarkMagic = {
		main="Daybreak",
		sub="Genmei Shield",	
		ammo="Sroda tathlum",
		head="Bagua Galero +1",
		body="Geomancy tunic +3",
		hands="Merlinic Dastanas",
		legs="Azimuth tights +2",
		feet="Merlinic Crackows",
		waist="Refoccilation stone",
		left_ring="Stikini ring +1",
		right_ring="Stikini ring",
		back="Perimede cape"
	}

    sets.Enfeebling = {
		main="Daybreak",
		sub="Genmei Shield",
		range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3'}},
		head="Befouled Crown",
		body="Geomancy Tunic +3",
		hands="Regal Cuffs",
		legs="Azimuth tights +2",
		feet={ name="Bagua Sandals +1", augments={'Enhances "Radial Arcana" effect'}},
		neck="Sanctity Necklace",
		waist="Refoccilation Stone",
		left_ear="Malignance Earring",
		right_ear="Digni. Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring",
		back="Seshaw Cape"
	}


	-- Impact whenever the fuck I get the damn cloak
    sets.Impact = {    
      body="Twilight Cloak",
	}


    -- /heal the damn MP/HP up.
    sets.heal = {
		range="Dunna",
		head="Befouled Crown",
		body="Jhakri robe +2",
		hands="Bagua Mitaines +1",
		legs="Assid. Pants +1",
		feet="Bagua Sandals +1",
		neck="Sanctity Necklace",
		waist="Austerity Belt +1",
		left_ear="Barkaro. Earring",
		right_ear="Gwati Earring",
		left_ring="Sheltered Ring",
		right_ring="Paguroidea Ring",
		back="Felicitas cape +1"
	}


	-- PDT Set
    sets.PDT = {
		main="Idris",
		sub="Genmei Shield",	
		range="Dunna",
		head="Azimuth Hood +3",
		body="Nyame mail",
		hands="Azimuth gloves +2",
		legs="Nyame flanchard",
		feet="Azimuth gaiters +2",
		neck="Loricate torque +1",
		waist="Isa Belt",
		left_ear="Genmei Earring",
		right_ear="Infused Earring",
		left_ring="Fortified Ring",
		right_ring="Defending Ring",
		back="Solemnity cape"
	}

    -- .Pet sets are for when Luopan is present.
    sets.PetDT = {
		main="Idris",
		sub="Genmei Shield",	
		range="Dunna",
		head="Azimuth Hood +3",
		body="Shamash robe",
		hands="Geo. Mitaines +3",
		legs="Assid. Pants +1",
		feet="Bagua Sandals +1",
		neck="Loricate torque +1",
		waist="Isa Belt",
		left_ear="Genmei Earring",
		right_ear="Hypaspist Earring",
		left_ring="Yacuruna Ring",
		right_ring="Defending Ring",
		back={ name="Nantosuelta's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Pet: "Regen"+10','Pet: "Regen"+5'}}
	}

	-- Magic Defense and Magic Defense Set
    sets.MDT = {
		main="Idris",
		sub="Genmei Shield",
		range="Dunna",
		head="Azimuth Hood +3",		
		body="Nyame mail",
		hands="Nyame gauntlets",
		legs="Nyame flanchard",
		feet="Azimuth gaiters +2",
		neck="Loricate torque +1",
		waist="Slipor Sash",
		left_ear="Genmei Earring",
		right_ear="Infused Earring",
		left_ring="Yacuruna Ring",
		right_ring="Defending Ring",
		back="Solemnity cape"
	}

		
	-- When I gotta kite shite, I put on my Sandals and shit...
    sets.Kiting = {feet="Geomancy Sandals +3"}

    
	sets.Refresh = set_combine(sets.PDT,  {
		head="Befouled crown",
		body="Jhakri robe +2",
		hands="Bagua mitaines +1",
		right_ring="Stikini ring +1"
	})
	
	
    ------------------------------------------------------------------------------------------------------------------
    -- Weaponskill sets
    ------------------------------------------------------------------------------------------------------------------

	-- All Weaponskills for Geomancer unless explicitly defined below sets.precast.WS 
     sets.WSD = {
		head="Azimuth Hood +3",
		body="Jhakri Robe +2",
		hands="Azimuth gloves +2",
		legs="Azimuth tights +2",
		feet="Azimuth gaiters +2",
		neck="Fotia Gorget",
		waist="Cetl Belt",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Ishvara Earring",
		left_ring="Epaminondas's Ring",
		right_ring="Chirich Ring +1",
		back="Solemnity Cape"
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
	sets.engaged.Accuracy = set_combine(sets.PDT, {})
	sets.engaged.Refresh = set_combine(sets.Refresh, {})
	 
end

function precast(spell,abil)
	--Enhancing Magic Check
	if spell.skill == 'Enhancing Magic' then
		equip(sets.EnhancingMagic)
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

