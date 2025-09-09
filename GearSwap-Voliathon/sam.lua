function get_sets()
-- Set macro book/set --
    send_command('input /macro book 7;wait .1;input /macro set 1')
	
	-- Set macro book/set --
    send_command('input /macro book 15;wait .1;input /macro set 1')
	
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

	--Job Ability Sets--
	sets.JA = {}
	sets.JA.Waltz = {legs="Dashing subligar"}
	sets.JA.Sengikori = {feet="Kasuga sune-ate +3"}	
	sets.JA.Meditate = {head="Wakido kabuto +3", hands="Sao. Kote +3"}
	sets.JA.Hasso = {hands="Wakido kote +4", legs="Kasuga haidate +3", feet="Wakido sune-ate +3"}
	sets.JA.WardingCircle = {head="Wakido kabuto +3"}
	sets.JA.ThirdEye = {legs="Sakonji Haidate +4"}
	sets.JA.Sekkanoki = {hands="Kasuga kote +3"}
	
	--Engaged Sets--
	sets.engaged = {}
	sets.engaged.index = {'BadAss', 'Tank','Movement', 'Accuracy', 'Reraise', 'SubtleBlow'}
	engaged_ind = 1

	--offensive melee set
	sets.engaged.BadAss = {
		sub="Utu grip",
		ammo="Coiste bodhar",
		head="Flamma zucchetto +2",
		body="Kasuga domaru +3",
		hands="Wakido kote +4",
		legs="Kasuga haidate +3",
		feet="Wakido sune-ate +4",
		neck="Samurai's nodowa +2",
		waist="Ioskeha Belt +1",
		left_ear="Schere earring",
		right_ear="Brutal Earring",
		left_ring={name="Chirich Ring +1",bag="Wardrobe 4"},
		right_ring="Flamma ring",
		back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%'}}
	}

	--Tank equip
	sets.engaged.Tank = {
		sub="Utu grip",
		ammo="Staunch Tathlum +1",
		head="Kasuga Kabuto +3",
		body="Kasuga domaru +3",
		hands="Nyame Gauntlets",
		legs="Kasuga haidate +3",
		feet="Nyame Sollerets",
		neck="Samurai's nodowa +2",
		waist="Null belt",
		left_ear="Infused Earring",
		right_ear="Hearty Earring",
		left_ring={name="Chirich Ring +1",bag="Wardrobe 4"},
		right_ring={name="Chirich Ring +1",bag="Wardrobe 5"},
		back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%'}}
	}

	--Movement equip
	sets.engaged.Movement = {
		sub="Utu grip",
		ammo="Staunch Tathlum +1",
		head="Kasuga Kabuto +3",
		body="Kasuga domaru +3",
		hands="Nyame Gauntlets",
		legs="Kasuga haidate +3",
		feet="Nyame Sollerets",
		neck="Samurai's nodowa +2",
		waist="Null belt",
		left_ear="Infused Earring",
		right_ear="Hearty Earring",
		left_ring="Shneddick Ring",
		right_ring={name="Chirich Ring +1",bag="Wardrobe 5"},
		back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%'}}
	}

	--Reraise equip
	sets.engaged.Reraise = {
		sub="Utu grip",
		ammo="Staunch Tathlum +1",
		head="Crepuscular Helm",
		body="Crepuscular mail",
		hands="Nyame Gauntlets",
		legs="Kasuga haidate +3",
		feet="Nyame Sollerets",
		neck="Null loop",
		waist="Ioskeha Belt +1",
		left_ear="Infused Earring",
		right_ear="Genmei Earring",
		left_ring="Fortified Ring",
		right_ring="Defending Ring",
		back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%'}}
	}  

	sets.engaged.Accuracy = {
		ammo="Amar cluster",
		head="Kasuga Kabuto +3",
		body="Kasuga domaru +3",
		hands="Kasuga kote +3",
		legs="Kasuga haidate +3",
		feet="Kasuga sune-ate +3",
		neck="Samurai's nodowa +2",
		waist="Null belt",
		left_ear="Cessance earring",
		right_ear="Brutal Earring",
		left_ring={name="Chirich Ring +1",bag="Wardrobe 4"},
		right_ring={name="Chirich Ring +1",bag="Wardrobe 5"},
		back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%'}}
	}

	sets.engaged.SubtleBlow = {
		ammo="Coiste bodhar",
		head="Ken. Jinpachi +1",
		body="Ken. Samue +1",
		hands="Ken. Tekko +1",
		legs="Ken. Hakama +1",
		feet="Ken. Sune-Ate +1",
		neck="Sam. Nodowa +2",
		waist={ name="Sailfi Belt +1", augments={'Path: A'}},
		left_ear="Cessance Earring",
		right_ear="Digni. Earring",
		left_ring={name="Chirich Ring +1",bag="Wardrobe 4"},
		right_ring={name="Chirich Ring +1",bag="Wardrobe 5"},
		back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%'}}
	}  


	-- Idle Sets Toggle-- Alt+F10 or Ctrl+F10
	sets.idle = {}
	sets.idle.index = {'PDTMovement', 'Craft'}
	idle_ind = 1      
	
	sets.idle.PDTMovement = set_combine(sets.engaged.Movement,  {})

	sets.idle.Craft = set_combine(sets.engaged.Movement, {
		main="Caduceus",
		sub="Br. escutcheon",
		body="Alchemist's smock",
		neck="Alchemist's torque",
		left_ring="Artificer's Ring",
		right_ring="Craftmaster's ring",
		waist="Alchemist's belt"
	})
	
	
  --Weaponskill Sets--
  --Mumei, Fudo, Kasha, Gekko, Yuk 
	sets.Fudo = {
		ammo="Knobkierrie",
		head="Nyame Helm",
		body="Sakonji domaru +4",
		hands="Kasuga kote +3",
		legs="Wakido Haidate +4",
		feet="Nyame sollerets",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Thrud Earring",
		right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250'}},
		left_ring="Epaminondas's Ring",
		right_ring={name="Chirich Ring +1",bag="Wardrobe 5"},
		back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%'}}
	}
  
	sets.Shoha = {
		ammo="Knobkierrie",
		head="Nyame Helm",
		body="Sakonji domaru +4",
		hands="Kasuga kote +3",
		legs="Wakido Haidate +4",
		feet="Nyame sollerets",
		neck="Fotia Gorget",
		waist="Sailfi Belt +1",
		left_ear="Thrud Earring",
		right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250'}},
		left_ring="Epaminondas's Ring",
		right_ring={name="Chirich Ring +1",bag="Wardrobe 5"},
		back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%'}}
	}
	
	sets.Jinpu = {
		ammo="Knobkierrie",
		head="Nyame Helm",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck={ name="Sam. Nodowa +2", augments={'Path: A'}},
		waist="Orpheus's Sash",
		left_ear="Friomisi Earring",
		right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250'}},
		left_ring="Fenrir Ring +1",
		right_ring="Stikini Ring +1",
		back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%'}}	
	}
	
	sets.Ageha = {
		ammo="Pemphredo Tathlum",
		head="Kasuga Kabuto +3",
		body="Kasuga domaru +3",
		hands="Kasuga kote +3",
		legs="Kasuga haidate +3",
		feet="Kas. Sune-Ate +2",
		neck="Sanctity Necklace",
		waist="Fotia Belt",
		left_ear="Digni. Earring",
		right_ear={ name="Kasuga Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+6','Mag. Acc.+6'}},
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%'}}	
	}
	
	
	sets.Stardiver = {
		ammo="Coiste Bodhar",
		head="Mpaca's Cap",
		body="Sakonji domaru +4",
		hands="Ken. Tekko +1",
		legs="Wakido Haidate +4",
		feet="Kas. Sune-Ate +2",
		neck={ name="Sam. Nodowa +2", augments={'Path: A'}},
		waist="Fotia Belt",
		left_ear="Schere Earring",
		right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250'}},
		left_ring="Sroda Ring",
		right_ring={name="Chirich Ring +1",bag="Wardrobe 5"},
		back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%'}}		
	}

	--Weapon Sets--
	sets.weapon = {}
	sets.weapon.index = {'Dojikiri','Masamune','ShiningOne'}
	weapon_ind = 1 
	
	sets.weapon.Dojikiri = {
		main="Dojikiri Yasutsuna",
		sub="Utu Grip"
	}
	
	sets.weapon.Masamune = {
		main="Masamune",
		sub="Utu Grip"
	}
	
	sets.weapon.ShiningOne = {
		main="Shining One",
		sub="Utu Grip"
	}
 
end


function precast(spell,abil)

	if string.find(spell.name,'Utsusemi') then
		equip({neck="Magoraga Beads"})
	end

    if spell.type == 'JobAbility' then
		if spell.name == 'Hasso' then
			equip(sets.JA.Hasso)
		elseif spell.name == 'Meditate' then
			equip(sets.JA.Meditate)
		elseif spell.name == 'Warding Circle' then
			equip(sets.JA.WardingCircle)
		elseif spell.name == "Third Eye" then
			equip(sets.JA.ThirdEye)
		elseif spell.name == 'Sengikori' then
			equip(sets.JA.Sengikori)
		elseif spell.name == 'Sekkanoki' then
			equip(sets.JA.Sekkanoki)
		elseif string.find(spell.english, 'Waltz') then
			equip(sets.JA.Waltz)
		end	
	end
	
	--Weaponskill Lookups
    if spell.type == 'WeaponSkill' then
		if spell.name == 'Tachi: Fudo' or spell.name == 'Tachi: Kasha' or spell.name == 'Tachi:Mumei' or spell.name == 'Tachi:Gekko' or spell.name == 'Tachi:Yukikaze' then
			equip(sets.Fudo)
		elseif spell.name == 'Tachi: Shoha' then
			equip(sets.Shoha)
		elseif spell.name == 'Tachi: Jinpu' then
			equip(sets.Jinpu)
		elseif spell.name == 'Tachi: Ageha' then
			equip(sets.Ageha)
		elseif spell.name == 'Impulse Drive' or spell.name == 'Sonic Thrust' then 
			equip(sets.Fudo)
		elseif spell.name == 'Stardiver' then
			equip(sets.Stardiver)
		end
	end
  
end


function aftercast(spell)
  equip_current()
end


function equip_current()
	equip_weapon()
	status_change()
	if (buffactive['Third Eye']) then
		equip({legs="Sakonji Haidate +4"})
	end	
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

