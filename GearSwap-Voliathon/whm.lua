-- White Mage GearSwap
-- Abbreviation WHM

function get_sets()
	-- Set macro book/set --
    send_command('input /macro book 1;wait .1;input /macro set 1')
	
	
	-- Binds for modes
	-- Toggle Weapon sets | Ctrl F8 or Alt F8
	send_command('bind ^f8 gs c C8') 
	send_command('bind !f8 gs c reverse Weapon set')

	-- Toggle Engaged sets | Ctrl F9 or Alt F9
	send_command('bind ^f9 gs c C9')
	send_command('bind !f9 gs c reverse Engaged set')

	-- Toggle Idle sets | Ctrl F10 or Alt F10
	send_command('bind !f10 gs c C10') 
	send_command('bind ^f10 gs c reverse Idle set')
	
    -- Job Abilities for White Mage --
	sets.JA = {}
    sets.JA.Benediction = {body="Piety Bliaut +3"}
    sets.JA.AfflatusSolace = {body="Ebers bliaut +3", feet="Piety duckbills +3", back="Alaunus's Cape"}
    sets.JA.DivineCaress = {hands="Ebers mitts +3", back="Mending cape"}
	sets.JA.Devotion = {heads="Piety Cap +3"}
	
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
	
	sets.Regen = set_combine(sets.FastCast, {
		main="Bolelabunga",
		sub="Ammurapi Shield",
		head="Inyanga Tiara +2",
		body="Piety Bliaut +3",
		hands="Ebers mitts +3",
		waist="Embla sash",
		legs="Th. Pant. +3",
		feet="Bunzi's sabots"
	})
	
	sets.Cursna = {
		main="Yagrush",
		sub="Ammurapi Shield",
		ammo="Pemphredo Tathlum",
		head={ name="Vanya Hood", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
		body="Ebers bliaut +3",
		hands="Theophany mitts +3", 
		legs="Th. Pant. +3",
		feet={ name="Vanya Clogs", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6',}},
		neck="Nicander's Necklace",
		waist="Austerity Belt +1",
		left_ear="Magnetic Earring",
		right_ear={ name="Ebers Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Damage taken-3%',}},
		left_ring="Ephedra Ring",
		right_ring="Purity Ring",
		back="Tempered Cape +1"	
	}
	
	--TODO
	sets.BarSpells = {
		body="Ebers bliaut +3",
		legs="Piety pantaloons +3"
	}

    sets.EnhancingMagic = {
		main="Daybreak",
		sub="Ammurapi Shield",
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
		sub="Ammurapi Shield",
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

	sets.Regen = {
		main="Bolelabunga",
		sub="Ammurapi shield",
		head="Inyanga tiara +2",
		hands="Ebers mitts +3",
		body="Piety Bliaut +3",
		legs="Th. Pant. +3",
		feet="Theophany duckbills +3",
		waist="Embla sash"
	}
	
    sets.Cure = {
		main="Daybreak",
		sub="Ammurapi Shield",
        head="Vanya Hood",
		body="Ebers bliaut +3",
		hands="Theophany mitts +3",
		legs="Ebers Pantaloons +3",
		feet="Vanya Clogs",		
		neck="Nodens gorget",
		right_ring="Stikini ring +1",
		left_ring="Veneficium Ring", 
		waist="Austerity belt+1", 
		back="Pahtli Cape",
		left_ear="Mendi. Earring",
		right_ear="Glorious earring"
	}

  	-- Elemental Magic sets...  When shit needs to die, this is the set to make it happen
	sets.ElementalMagic = {
		main="Daybreak",
		sub="Ammurapi Shield",	
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
		sub="Ammurapi Shield",	
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
		sub="Ammurapi Shield",	
		range="Pemphredo Tathlum",
		head="Theophany cap +3",
		body="Theo. Bliaut +3",
		hands="Regal cuffs",
		legs="Chironic hose",
		feet="Theophany duckbills +3",
		neck="Null loop",
		waist="Null belt",
		left_ear="Malignance Earring",
		right_ear="Ebers Earring +1",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back="Seshaw cape"
	}


	-- Impact whenever the fuck I get the damn cloak
    sets.Impact = {    
      body="Twilight Cloak",
	}

	--Engaged Sets--
	sets.engaged = {}
	sets.engaged.index = {'Tank', 'Refresh', 'TP', 'Movement'}
	engaged_ind = 1

	-- Tank Set
    sets.engaged.Tank = {
		ammo="Staunch Tathlum +1",
		head="Nyame Helm",
		body="Shamash Robe",
		hands="Ebers mitts +3",
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
		
	sets.engaged.Refresh = set_combine(sets.Tank,  {
		main="Daybreak",
		sub="Genmei shield",
		head="Befouled crown",
		body="Ebers bliaut +3",
		hands="Ebers mitts +3",
		waist="Null belt",
		right_ring="Stikini ring +1",
		left_ring="Stikini ring +1",
		ammo="Homiliary"
	})
	
	-- TP Set
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
	
    sets.engaged.Movement = {
		ammo="Staunch Tathlum +1",
		head="Nyame Helm",
		body="Shamash Robe",
		hands="Ebers mitts +3",
		legs="Ebers Pantaloons +3",
		feet="Ebers duckbills +2",
		neck="Null loop",
		waist="Null belt",
		left_ear="Genmei Earring",
		right_ear="Infused Earring",
		left_ring="Shneddick ring",
		right_ring="Defending Ring",
		back="Solemnity Cape"	
	}
	
   sets.Yagrush = set_combine(sets.FastCast,  {
		main="Yagrush",
		hands="Ebers mitts +3",
		legs="Ebers Pantaloons +3",
		back="Mending cape"
	 })


	-- Idle Sets Toggle-- Alt+F10 or Ctrl+F10
	sets.idle = {}
	sets.idle.index = {'PDTMovement', 'RefreshMovement', 'PureRefresh', 'Craft'}
	idle_ind = 1      
	
	sets.idle.PDTMovement = set_combine(sets.engaged.Movement,  {})

	sets.idle.RefreshMovement = set_combine(sets.engaged.Refresh,  {
		left_ring="Shneddick ring"
	})

	sets.idle.PureRefresh = set_combine(sets.engaged.Refresh,  {})

	sets.idle.Craft = set_combine(sets.engaged.Movement, {
		main="Caduceus",
		sub="Br. escutcheon",
		body="Alchemist's smock",
		neck="Alchemist's torque",
		left_ring="Artificer's Ring",
		right_ring="Craftmaster's ring",
		waist="Alchemist's belt"
	}) 

	
    ------------------------------------------------------------------------------------------------------------------
    -- Weaponskill sets
    ------------------------------------------------------------------------------------------------------------------
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

	--Weapon Sets--
	sets.weapon = {}
	sets.weapon.index = {'Daybreak','Yagrush','Bunzi','Maxentius'}
	weapon_ind = 1 
	
	sets.weapon.Daybreak = {
		main="Daybreak",
		sub="Genmei shield"
	}

	sets.weapon.Yagrush = {
		main="Yagrush",
		sub="Ammurapi shield"
	}
	
	sets.weapon.Bunzi = {
		main="Bunzi's rod",
		sub="Ammurapi shield"
	}	

	sets.weapon.Maxentius = {
		main="Maxentius",
		sub="Genmei shield"
	}	
end

function precast(spell,abil)
	--White Mage Abilities
	if spell.type == 'JobAbility' then
		if spell.name == 'Benediction' then
			equip(sets.JA.Benediction)
		elseif spell.name == 'Afflatus Solace' then
			equip(sets.JA.AfflatusSolace)
		elseif spell.name == 'Divine Caress' then
			equip(sets.JA.DivineCaress)
		elseif spell.name == 'Devotion' then
			equip(sets.JA.Devotion)
		end
	end
	
	--White Mage Weapon Skills
    if spell.type == 'WeaponSkill' then	
		if spell.name == "Hexa Strike" then
			equip(sets.WSD)
		elseif spell.name == "Mystic Boon" then
			equip(sets.MysticBoon)
		else
			equip(sets.WSD)
		end
	end

	if spell.action_type == 'Magic' then
		equip(sets.FastCast)
	end
	
end

function midcast(spell)
	--Enhancing Magic Check
	if spell.skill == 'Enhancing Magic' then
		if string.find(spell.english, 'Bar') then
			equip(sets.BarSpells)
		elseif string.find(spell.english, 'Boost') then
			equip(sets.Enhancing)
		else
			equip(sets.Enhancing)
		end
	end
	
	if string.find(spell.english,'Regen') then 
		equip(sets.Regen)
	elseif string.find(spell.english,'Cur') then 
		equip(sets.Cure)
	elseif spell.name == 'Stoneskin' then
		equip(sets.Stoneskin)
	elseif spell.name == 'Cursna' then
		equip(sets.Cursna)
	elseif string.find(spell.english, 'na') then
		equip(sets.Yagrush)
	elseif spell.skill == 'Enfeebling Magic' then
		equip(sets.Enfeebling)		
	elseif spell.skill == 'Elemental Magic' then
		equip(sets.ElementalMagic)
	end
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
	end	 
end

-- Send tell to self if I died --
windower.register_event('status change', function()
	if player.status == 'Dead' then
		send_command('@input /tell <me> Wakies Voliathon! You died.')
	end
end)
