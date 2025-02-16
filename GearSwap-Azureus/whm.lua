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
    sets.AfflatusSolace = {body="Ebers Bliaut +2", back="Alaunus's Cape"}
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
		feet="Regal pumps +1",
		neck="Voltsurge Torque",
		waist="Witful Belt",
		left_ear="Loquac. Earring",
		right_ear="Malignance Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back="Perimede Cape"
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

	-- Enhancing Spells \\Generalized//
    sets.EnhancingMagic = {
		main="Daybreak",
		sub="Genmei Shield",
		ammo="Clarus stone",
		head="Befouled Crown",
		body="Telchine chasuble ",
		hands="Dynasty Mitts",
		legs="Piety Pantaloons +1",
		feet="Eber's duckbills +2",
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
		legs="Geomancy Pants +2",
		feet="Regal pumps +1",
		waist="Austerity Belt +1",
		left_ear="Infused Earring",
		right_ear="Earthcry Earring",
		left_ring="Veneficium Ring",
		right_ring="Stikini ring +1",
		back="Perimede Cape"	
	}

	sets.Enhancing = {}


    sets.Cure = {
		main="Daybreak",
		sub="Genmei Shield",
        head="Vanya Hood",
		body="Chironic doublet",
		hands="Telchine gloves",
		right_ring="Stikini ring +1",
		left_ring="Veneficium Ring", 
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
		body="Shamash robe",
		hands="Merlinic Dastanas",
		legs="Ea slops +1",
		feet="Merlinic Crackows",
		neck="Saevus pendant +1",
		waist="Null belt",
		left_ear="Barkaro. Earring",
		right_ear="Halasz Earring",
		left_ring="Stikini ring +1",
		right_ring="Stikini ring +1",
		back="Seshaw cape"
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
		neck="Saevus Pendant +1",
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
		feet="Bagua Sandals +1",
		neck="Null loop",
		waist="Null belt",
		left_ear="Barkaro. Earring",
		right_ear="Gwati Earring",
		left_ring="Jhakri ring",
		right_ring="Stikini Ring +1",
		back="Null shawl"
	}


	-- Impact whenever the fuck I get the damn cloak
    sets.Impact = {    
      body="Twilight Cloak",
	}


    -- Heal the damn MP/HP up.
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
		back="Null shawl"
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
		back="Null shawl"
	}

		
	-- When I gotta kite shite, I put on my Sandals and shit...
    sets.Kiting = {left_ring="Schneddick Ring"}
	
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
		back="Null shawl"
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
		back="Null shawl"	 
	 }
	 
	 
	 sets.Yagrush = set_combine(sets.FastCast,  {
		main="Yagrush",
		hands="Eber Mitts +2",
		legs="Ebers pantaloons +2",
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
		neck="Sanctity Necklace",
		waist="Grunfeld Rope",
		left_ear="Brutal Earring",
		right_ear="Cessance Earring",
		left_ring="Chirich Ring +1",
		right_ring="Chirich Ring +1",
		back="Null shawl"	
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
	if spell.name == 'Cursna' then
		equip(sets.Cursna)
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
--	if string.find(spell.english, 'na') then
--		equip(sets.Yagrush)
--	end
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

