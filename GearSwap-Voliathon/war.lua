function get_sets()
	-- Set macro book/set --
	send_command('input /macro book 17;wait .1;input /macro set 1')
	
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
		
	sets.Waltz = {legs="Dashing subligar"}
	
	--Job Ability Sets--
	sets.JA = {}
	sets.JA.MightyStrikes = {hands="Agoge mufflers +1"}
	sets.JA.Berserk = {
		body="Pumm. Lorica +4", 
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%'}},
		feet="Agoge Calligae +1"
	}
	sets.JA.Defender = {}
	sets.JA.Warcry = {head="Agoge mask +4"}
	sets.JA.Aggressor = {head="Pumm. Mask +2",body="Agoge Lorica +1"}
	sets.JA.Retaliation = {hands="Pumm. mufflers +4"}
	sets.JA.WarriorsCharge = {legs="Agoge Cuisses +1"}
	sets.JA.Tomahawk = {feet="Agoge Calligae +1"}
	sets.JA.Restraint = {hands="Boii Mufflers +3"}
	sets.JA.BloodRage = {body="Boii Lorica +1"}
	sets.JA.Restraint = {hands="Boii Mufflers +3"}


	--Enmity set for high hate generating spells and JAs
	sets.Enmity = {
		head="Pumm. Mask +2",
		body="Souv. Cuirass +1",
		hands="Pumm. Mufflers +4",
		legs="Souv. Diechlings +1",
		feet="Souveran Schuhs +1",
		neck="Moonlight necklance",
		left_ear="Cryptic earring",
		left_ring="Apeile ring",
		right_ring="Apeile ring +1"		
	}

	--Engaged Sets--
	sets.engaged = {}
	sets.engaged.index = {'Tank', 'SingleWield', 'DualWield', 'TwoHandedTP',  'Movement', 'Accuracy', 'TreasureHunter'}
	engaged_ind = 1
 
	sets.engaged.SingleWield = {
		ammo={ name="Coiste Bodhar", augments={'Path: A',}},
		head="Flam. Zucchetto +2",
		body="Hjarrandi breastplate",
		hands={ name="Sakpata's Gauntlets", augments={'Path: A',}},
		legs="Pumm. Cuisses +4",
		feet="Pumm. Calligae +4",
		neck="Null loop",
		waist="Ioskeha Belt +1",
		left_ear={ name="Schere Earring", augments={'Path: A',}},
		right_ear="Boii Earring +1",
		left_ring={name="Chirich Ring +1", bag="Wardrobe 4"},
		right_ring={name="Chirich Ring +1", bag="Wardrobe 5"},
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}}
	}
  
	--offensive melee set
	sets.engaged.DualWield = {
		ammo="Coiste Bodhar",
		head="Flam. Zucchetto +2",
		body="Sakpata's breastplate",
		hands="Sakpata's gauntlets",
		legs="Pumm. Cuisses +4",
		feet="Pumm. Calligae +4",
		neck="Null loop",
		waist="Ioskeha Belt +1",
		left_ear="Brutal Earring",
		right_ear="Boii Earring +1",
		left_ring={name="Chirich Ring +1", bag="Wardrobe 4"},
		right_ring={name="Chirich Ring +1", bag="Wardrobe 5"},
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}}
	}

	sets.engaged.TwoHandedTP = {
		ammo={ name="Coiste Bodhar", augments={'Path: A',}},
		head="Flam. Zucchetto +2",
		body="Hjarrandi Breast.",
		hands={ name="Sakpata's Gauntlets", augments={'Path: A',}},
		legs="Pumm. Cuisses +4",
		feet="Pumm. Calligae +4",
		neck="Null loop",
		waist="Ioskeha Belt +1",
		left_ear={ name="Schere Earring", augments={'Path: A',}},
		right_ear="Boii Earring +1",
		left_ring={name="Chirich Ring +1", bag="Wardrobe 4"},
		right_ring={name="Chirich Ring +1", bag="Wardrobe 5"},
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}}
	}

	--Tank Gear
	sets.engaged.Tank = {
		ammo="Staunch Tathlum +1",
		head="Sakpata's Helm",
		body="Sakpata's Plate",
		hands="Sakpata's Gauntlets",
		legs="Sakpata's Cuisses",
		feet="Sakpata's Leggings",
		neck="Null loop",
		waist="Null belt",
		left_ear="Tuisto Earring",
		right_ear="Boii Earring +1",
		left_ring="Moonlight Ring",
		right_ring="Fortified Ring",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}}
	}

	sets.engaged.Movement = {
		ammo="Staunch Tathlum +1",
		head="Sakpata's Helm",
		body="Sakpata's Plate",
		hands="Sakpata's Gauntlets",
		legs="Sakpata's Cuisses",
		feet="Sakpata's Leggings",
		neck="Null loop",
		waist="Null belt",		
		left_ear="Tuisto Earring",
		right_ear="Boii Earring +1",
		left_ring="Shneddick ring",
		right_ring="Moonlight Ring",
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}}
	}

	sets.engaged.Accuracy = {
		ammo="Amar Cluster",
		head="Flam. Zucchetto +2",
		body="Sakpata's Plate",
		hands="Sakpata's Gauntlets",
		legs="Pumm. Cuisses +4",
		feet="Pumm. Calligae +4",
		neck="Null loop",
		waist="Null belt",
		left_ear="Dignitary's Earring",
		right_ear="Boii Earring +1",
		left_ring={name="Chirich Ring +1", bag="Wardrobe 4"},
		right_ring={name="Chirich Ring +1", bag="Wardrobe 5"},
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}}
	}

	sets.engaged.TreasureHunter = {
		ammo="Amar Cluster",
		head="Flam. Zucchetto +2",
		body="Volte Jupon",
		hands="Sakpata's Gauntlets",
		legs="Pumm. Cuisses +4",
		feet="Pumm. Calligae +4",
		neck="Null loop",
		waist="Chaac Belt",
		left_ear="Tuisto Earring",
		right_ear="Boii Earring +1",
		left_ring={name="Chirich Ring +1", bag="Wardrobe 4"},
		right_ring={name="Chirich Ring +1", bag="Wardrobe 5"},
		back={ name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}}
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
	--multi, carries FTP -- Need STR for the modifier
	sets.Resolution = {
		ammo="Knobkierrie",
		head="Flam. Zucchetto +2",
		body="Pumm. Lorica +4",
		hands="Boii Mufflers +3",
		legs="Sakpata's Cuisses",
		feet="Pumm. Calligae +4",
		neck="Fotia Gorget",
		waist="Ioskeha Belt +1",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		right_ear="Boii Earring +1",
		left_ring="Epaminondas's Ring",
		right_ring="Sroda Ring",
		back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}}
	}

	sets.SavageBlade = {
		ammo="Knobkierrie",
		head="Agoge mask +4",
		body="Pumm. Lorica +4",
		hands="Boii Mufflers +3",
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Fotia Gorget",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		right_ear="Thrud Earring",
		left_ring="Epaminondas's Ring",
		right_ring="Sroda Ring",
		back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}}
	}

	--Stat Modifier: 	30% STR / 30% MND   Sleep Weaponskill
	sets.Shockwave = {
		ammo="Pemphredo Tathlum",
		head="Sakpata's Helm",
		body="Nyame Mail",
		hands="Sakpata's Gauntlets",
		legs="Sakpata's Cuisses",
		feet="Sakpata's Leggings",
		neck="Null loop",
		waist="Null belt",
		left_ear="Digni. Earring",
		right_ear="Gwati Earring",
		left_ring={name="Stikini Ring +1",bag="Wardrobe 4"},
		right_ring={name="Stikini Ring +1",bag="Wardrobe 5"},
		back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}}
	}

	--magic WS
	sets.HerculeanSlash = {
		ammo="Pemphredo Tathlum",
		head="Sakpata's Helm",
		body="Crepuscular Mail",
		hands="Sakpata's Gauntlets",
		legs="Sakpata's Cuisses",
		feet="Sakpata's Leggings",
		neck="Fotia Gorget",
		waist="Orpheus's sash",
		left_ear="Digni. Earring",
		right_ear="Gwati Earring",
		left_ring={name="Stikini Ring +1",bag="Wardrobe 4"},
		right_ring={name="Stikini Ring +1",bag="Wardrobe 5"},
		back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}}
	}

	sets.UkkosFury = {
		ammo="Yetshila +1",
		head="Boii Mask +2",
		body="Pumm. Lorica +4",
		hands="Flam. Manopolas +2",
		legs="Boii cuisses +2",
		feet="Boii Calligae +2",
		neck="Fotia Gorget",
		waist="Sailfi belt +1",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		right_ear={ name="Boii Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+12','Mag. Acc.+12','Crit.hit rate+4',}},
		left_ring="Epaminondas's Ring",
		right_ring="Rajas Ring",
		back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}}
	}

	--Weapon Sets--
	sets.weapon = {}
	sets.weapon.index = {'NagShield','CrepShield'}
	weapon_ind = 1

	sets.weapon.NagShield = {
		main="Naegling",
		sub="Blurred shield +1"
	}
	
	sets.weapon.CrepShield = {
		main="Crepuscular knife",
		sub="Blurred shield +1"
	}  

end


function precast(spell,abil)

	if string.find(spell.english, 'Waltz') then
		equip(sets.Waltz)
	elseif spell.type == 'JobAbility' then
	        equip(sets.JA[spell.english])
	elseif spell.name == "Ukko'sFury" then
		equip(sets.UkkosFury)
	elseif spell.name == 'Resolution' then
		equip(sets.Resolution)
	elseif spell.name == 'Savage Blade' or spell.name == 'Steel Cyclone' then
		equip(sets.SavageBlade)
	elseif spell.name == 'Shockwave' then
		equip(sets.Shockwave)
	elseif spell.name == 'Herculean Slash' or spell.name == 'Freezebite' or spell.name == 'Frostbite' then
		equip(sets.HerculeanSlash)
	elseif string.find(spell.name,'Utsusemi') then
		equip({neck="Magoraga Beads"})
	end
  
	--Warrior Job Abilities
	if spell.name == 'Defender' then
        equip(sets.JA.Defender)
    end
	if spell.name == 'Warcry' then
        equip(sets.JA.Warcry)
    end
	if spell.name == 'Aggressor' then
        equip(sets.JA.Aggressor)
    end
	if spell.name == 'Retaliation' then
        equip(sets.JA.Retaliation)
    end
	if spell.name == "Warrior's Charge" then
        equip(sets.JA.WarriorsCharge)
    end
	if spell.name == 'Tomahawk' then
        equip(sets.JA.Tomahawk)
    end 
	if spell.name == 'Restraint' then
        equip(sets.JA.Restraint)
    end 
	if spell.name == 'Blood Rage' then
        equip(sets.JA.BloodRage)
    end 
	if spell.name == 'Might Strikes' then
        equip(sets.JA.MightyStrikes)
    end 
	if spell.name == 'Berserk' then
        equip(sets.JA.Berserk)
    end 
	
end


function midcast(spell,act,arg)
  
end


function aftercast(spell)
	equip_current()
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
