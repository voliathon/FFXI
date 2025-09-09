--Food to Eat
--    Recomended:
--    Miso Ramen
    -- Stats: HP+100, STR+5, VIT+5, DEF+10% (Max. 170), "Magic Def. Bonus"+5, Magic Evasion +10% (Max. 50),"Resist Slow" +10.
        -- The best defensive tanking food there is. It couples HP+, Defense, and Magic Evasion+ all into one food.
            -- Purchased from the Auction House. Crafted only.
    -- Om. Sandwich
    -- Stats: HP+11% (Max. 150), VIT+7, MND+7, Accuracy+11% (Max. 80), DEF+11% (Max. 120), Enmity+4.
        -- Introduced in The Voracious Resurgence missionline. Comparable to Miso Ramen in HP and Defense; exchanging Magic Evasion and Magic Defense Bonus for Accuracy and Enmity.
        -- Purchased from the Auction House. Crafted only.

-- Alternatives:

    -- Black Curry
    -- Stats: (DEX+2, VIT+4, INT+1, Accuracy+5, Ranged Accuracy+5, Evasion+5, DEF+15% (Max. 180), "Resist Sleep"+3, HP recovered while healing +2, MP recovered while healing +1)
        -- The next best thing. This food actually has 10 more defense than Miso Ramen, but lacks the other benefits. The silver lining is that they are a fourth to a fifth the price of Miso depending on the market.
            -- Purchased from the Curio Moogle for 4,000 gil, 48,000 a stack.
    -- Tavnazian Taco
    -- Stats: (HP+20, MP+20, DEX+4, VIT+6, AGI+4, CHR+4, DEF+25% (Max. 150), HP and MP recovered while healing +1)
        -- The once famous food. There is no reason to really use this anymore, but if you are a lower level it will grant more defense than one of these higher level items given its lower cap, but higher percentage increase.
            -- Purchased from the Curio Moogle for 4,000 gil, 48,000 a stack.
    -- Rabbit Pie
    -- Stats: (STR+5 VIT+5 INT-2 Attack+25% (Max. 100) Ranged Attack+25% (Max. 100) DEF+25% (Max. 100))
        -- An honorable mention. The attack and defense parameters aren't as high given it's hybrid status but definitely worth looking at.
            -- Purchased from Curio Moogle for 3,000 gil, 36,000 gil a stack.
    -- Fried Popoto
    -- Stats: (HP +30, VIT +2, Element: Fire +20, Defense +20% (Cap:145), Subtle Blow +8)
        -- This food is as cheap as it gets, excluding the crystal it costs less than 300 gil to make 6 of these a synth. Making these in bulk to store and use for Ambuscade spam and similar events will cost you next to nothing. Even if you have to shout and pay a level 90+ cook 50-100k to make them for you. It would still only cost you roughly 10-20k a stack of Fried Popotos.
            -- Purchased from the Auction House, crafted only.

function get_sets()
	-- Set macro book/set --
	send_command('input /macro book 11;wait .1;input /macro set 1')

	-- Binds for modes
	-- Toggle Shields | Ctrl F7 or Alt F7
	send_command('bind ^f7 gs c C7') 
	send_command('bind !f7 gs c reverse Shield set') 
	
	-- Toggle Weapon sets | Ctrl F8 or Alt F8
	send_command('bind ^f8 gs c C8') 
	send_command('bind !f8 gs c reverse Weapon set')

	-- Toggle Engaged sets | Ctrl F9 or Alt F9
	send_command('bind ^f9 gs c C9')
	send_command('bind !f9 gs c reverse Engaged set')

	-- Toggle Idle sets | Ctrl F10 or Alt F10
	send_command('bind !f10 gs c C10') 
	send_command('bind ^f10 gs c reverse Idle set')

	Aegis = 'OFF'

	sets.Waltz = {legs="Dashing subligar"}

	--Job Ability Sets--
	sets.JA = {}
	sets.JA.Invicible = {legs="Cab. breeches +3"}
	sets.JA.HolyCircle = {feet="Reverence leggings +3"} -- Grants resistance against undead to party members within area of effect. 
	sets.JA.Sentinel = {feet="Cab. leggings +3"} -- Begins damage reduction at -128% PDT instead of -90%
	sets.JA.Cover = {head="Reverence coronet +3"} -- 10 more seconds on cover
	sets.JA.Rampart = {head="Cab. coronet +3"} -- Duration up 30 seconds
	sets.JA.Fealty = {body="Cab. surcoat +1"}
	sets.JA.Chivalry = {hands="Cab. gauntlets +3"}
	sets.JA.DivineEmblem = {feet="Chev. sabatons +3"}

	sets.Enhancing = {
		ammo="Staunch Tathlum +1",
		head={ name="Souv. Schaller +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		body={ name="Yorium Cuirass", augments={'Spell interruption rate down -10%','Phalanx +3',}},
		hands="Regal Gauntlets",
		legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
		feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}},
		neck="Voltsurge Torque",
		waist="Siegel Sash",
		left_ear="Magnetic Earring",
		right_ear="Halasz Earring",
		left_ring={name="Stikini Ring +1",bag="Wardrobe 4"},
		right_ring={name="Stikini Ring +1",bag="Wardrobe 5"},
		back="Moonlight Cape"
	}

	--Fast Cast--
	sets.FastCast = {
		ammo="Staunch Tathlum +1",
		head="Chevalier's armet +3",
		hands="Regal Gauntlets",
		legs="Carmine cuisses +1",
		feet="Chev. sabatons +3",
		neck="Voltsurge Torque",
		waist="Audumbla sash",
		left_ear="Etiolation Earring",
		right_ear="Loquac. Earring",
		left_ring={name="Stikini Ring +1",bag="Wardrobe 4"},
		right_ring={name="Stikini Ring +1",bag="Wardrobe 5"},
	}

	--Phalanx--
	sets.Phalanx = {
		main="Sakpata's Sword",
		sub={ name="Priwen", augments={'HP+50','Mag. Evasion+50','Damage Taken -3%'}},
		ammo="Staunch Tathlum +1",
		head="Yorium Barbuta",
		body="Yorium Cuirass",
		hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%'}},
		legs="Sakpata's Cuisses",
		feet={ name="Souveran Schuhs +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%'}},
		neck="Voltsurge Torque",
		waist="Audumbla Sash",
		left_ear="Mimir Earring",
		right_ear="Loquac. Earring",
		left_ring={name="Stikini Ring +1",bag="Wardrobe 4"},
		right_ring={name="Stikini Ring +1",bag="Wardrobe 5"},
		back={ name="Weard Mantle", augments={'VIT+2','DEX+2','Phalanx +4'}}
	}

	-- Spell Interruption Rate
	sets.SIR = {
		ammo="Staunch Tathlum +1", --11
		body="Chevalier's cuirass +3", --20
		hands="Regal Gauntlets", --10
		legs="Sakpata's cuisses", 
		feet="Odyssean greaves", --20
		neck="Moonlight necklace", --15
		waist="Audumbla sash", --10
		left_ear="Knightly Earring", --5
		right_ear="Magnetic Earring", --8
		left_ring="Moonlight ring",
		right_ring="Defending ring"	
	}

	--Enmity set for high hate generating spells and JAs
	sets.Enmity = {
		ammo="Staunch tathlum +1",
		head={ name="Souv. Schaller +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		body={ name="Souv. Cuirass +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}}, --20
		hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		feet="Chev. sabatons +3",
		neck="Moonlight necklace",
		waist="Creed baudrier",
		left_ear="Cryptic Earring",
		right_ear="Friomisi earring",
		left_ring="Apeile ring",
		right_ring="Apeile ring +1",
		back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Chance of successful block +5',}} 
	}

	sets.ShieldBash = set_combine(sets.Enmity, {
		hands="Caballarius gauntlets +3",
		left_ear="Knightly earring",
		right_ear="Chevalier's earring +1"
	})  

	--Engaged Sets--
	sets.engaged = {}
	sets.engaged.index = {'BadAss', 'Turtle', 'Evasion', 'Accuracy', 'TreasureHunter', 'Reraise', 'Movement'}
	engaged_ind = 1

	--offensive melee set
	sets.engaged.BadAss = {
		ammo="Staunch Tathlum +1",
		head="Flam. Zucchetto +2",
		body="Sakpata's Plate",
		hands="Sakpata's Gauntlets",
		legs="Sakpata's Cuisses",
		feet="Flam. Gambieras +2",
		neck="Null loop",
		waist="Sailfi Belt +1",
		left_ear="Brutal Earring",
		right_ear="Chev. earring +1",
		left_ring={name="Chirich Ring +1",bag="Wardrobe 4"},
		right_ring={name="Chirich Ring +1",bag="Wardrobe 5"},
		back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Chance of successful block +5'}}
	}

	sets.engaged.Turtle = {
		ammo="Staunch Tathlum +1",
		head="Chevalier's armet +3",
		body="Chevalier's Cuirass +3",
		hands="Sakpata's Gauntlets",
		legs="Chevalier's cuisses +3",
		feet="Sakpata's Leggings",
		neck="Kgt. Beads +2",
		waist="Null belt",
		left_ear="Tuisto Earring",
		right_ear="Chev. earring +1",
		left_ring="Moonlight Ring",
		right_ring="Fortified Ring",
		back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Chance of successful block +5'}}
	}  

	--Evasion
	sets.engaged.Evasion = {
		ammo="Staunch Tathlum +1",
		head="Chevalier's armet +3",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		legs="Chevalier's cuisses +3",
		feet="Nyame Sollerets",
		neck="Null loop",
		waist="Null belt",
		left_ear="Tuisto Earring",
		right_ear="Cryptic earring",
		left_ring="Moonlight Ring",
		right_ring="Fortified Ring",
		back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Chance of successful block +5'}}
	}

	sets.engaged.Accuracy = {
		ammo="Amar Cluster",
		head="Chevalier's armet +3",
		body="Chevalier's Cuirass +3",
		legs="Chevalier's cuisses +3",
		feet="Chev. sabatons +3",
		neck="Null loop",
		left_ear="Dignitary's Earring",
		right_ear="Chev. earring +1",
		left_ring={name="Chirich Ring +1",bag="Wardrobe 4"},
		right_ring={name="Chirich Ring +1",bag="Wardrobe 5"},
		waist="Null belt"
	}

	sets.engaged.TreasureHunter = {
		waist="Chaac Belt",
		body="Volte jupon"
	}

	sets.engaged.Reraise = {
		ammo="Staunch Tathlum +1",
		head="Crepuscular Helm",
		body="Crepuscular Mail",
		hands="Sakpata's Gauntlets",
		legs="Chevalier's cuisses +3",
		feet="Sakpata's Leggings",
		neck="Null loop",
		waist="Null belt",
		left_ear="Hearty Earring",
		right_ear="Chev. earring +1",
		left_ring="Moonlight Ring",
		right_ring="Fortified Ring",
		back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Chance of successful block +5',}} 
	}

	sets.engaged.Movement = {
		ammo="Staunch Tathlum +1",
		head="Chevalier's armet +3",
		body="Chevalier's Cuirass +3",
		hands="Sakpata's Gauntlets",
		legs="Chevalier's cuisses +3",
		feet="Sakpata's Leggings",
		neck="Kgt. Beads +2",
		waist="Null belt",
		left_ear="Tuisto Earring",
		right_ear="Chev. earring +1",
		left_ring="Moonlight Ring",
		right_ring="Shneddick ring",
		back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Chance of successful block +5'}}
	}
  
  
	-- Idle Sets Toggle-- Alt+F10 or Ctrl+F10
	sets.idle = {}
	sets.idle.index = {'PDTMovement', 'Tank', 'Craft'}
	idle_ind = 1      
	
	sets.idle.PDTMovement = set_combine(sets.engaged.Movement,  {})

	sets.idle.Tank = set_combine(sets.engaged.Turtle,  {})

	sets.idle.Craft = set_combine(sets.engaged.Movement, {
		main="Caduceus",
		sub="Br. escutcheon",
		body="Alchemist's smock",
		neck="Alchemist's torque",
		left_ring="Artificer's Ring",
		right_ring="Craftmaster's ring",
		waist="Alchemist's belt"
	}) 
	
	
	--Weaponskill sets
	--Atonement, Enmity is the modifier
	sets.Atonement = {
		ammo="Amar Cluster",
		head={ name="Souv. Schaller +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		body={ name="Souv. Cuirass +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		legs={ name="Souv. Diechlings +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		feet="Chev. sabatons +3",
		neck="Moonlight necklace",
		waist="Null belt",
		left_ear="Cryptic Earring",
		right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		left_ring="Moonlight Ring",
		right_ring="Epaminondas's Ring",
		back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Chance of successful block +5',}}
	}

	--STR and WSD gears
	sets.STRWSD = {
		ammo="Amar Cluster",
		head={ name="Valorous Mask", augments={'MND+10','"Resist Silence"+4','Weapon skill damage +10%',}},
		body="Sakpata's Plate",
		hands={ name="Valorous Mitts", augments={'CHR+13','Crit.hit rate+3','Weapon skill damage +8%','Mag. Acc.+5 "Mag.Atk.Bns."+5',}},
		legs="Sakpata's Cuisses",
		feet={ name="Valorous Greaves", augments={'STR+3','Weapon Skill Acc.+4','Weapon skill damage +6%','Accuracy+12 Attack+12','Mag. Acc.+10 "Mag.Atk.Bns."+10',}},
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Ishvara Earring",
		right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		left_ring="Moonlight Ring",
		right_ring="Epaminondas's Ring",
		back="Vespid Mantle"
	}

	sets.AeolianEdge = {
		ammo="Pemphredo Tathlum",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Null loop",
		waist="Orpheus's Sash",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		right_ear="Friomisi Earring",
		left_ring={name="Stikini Ring +1",bag="Wardrobe 4"},
		right_ring="Epaminondas's Ring",
		back="Toro Cape"  
	}


	--Shield Sets--
	sets.shield = {}
	sets.shield.index = {'Aegis','Priwen','Blurred'}
	shield_ind = 1 

	sets.shield.Aegis = {
		sub="Aegis"
	}
	sets.shield.Priwen = {
		sub="Priwen"
	}
	sets.shield.Blurred = {
		sub="Blurred shield +1"
	}


	--Weapon Sets--
	sets.weapon = {}
	sets.weapon.index = {'Burtgang','Naegling','Malevolence'}
	weapon_ind = 1 

	sets.weapon.Burtgang = {
		main="Burtgang"
	}
	sets.weapon.Naegling = {
		main="Naegling"
	}
	sets.weapon.Malevolence = {
		main="Malevolence"
	}

end

-- Precast Logic --
function precast(spell,abil)

	if string.find(spell.english, 'Waltz') then
		equip(sets.Waltz)
	end
	if spell.name == 'Provoke' then
		equip(sets.Enmity)
	end
	if spell.name == 'Shield Bash' then
		equip(sets.ShieldBash)
	end		
	if spell.name == 'Invicible' then
		equip(sets.JA.Invicible)
	end
	if spell.name == 'Holy Circle' then
		equip(sets.JA.HolyCircle)
	end
	if spell.name == 'Sentinel' then
		equip(sets.JA.Sentinel)
	end
	if spell.name == 'Cover' then
		equip(sets.JA.Cover)
	end
	if spell.name == 'Rampart' then
		equip(sets.JA.Rampart)
	end
	if spell.name == 'Fealty' then
		equip(sets.JA.Fealty)
	end
	if spell.name == 'Chivalry' then
		equip(sets.JA.Chivalry)
	end
	if spell.name == 'Divine Emblem' then
		equip(sets.JA.DivineEmblem)
	end

	if spell.name == 'Flash' or spell.name == "Stun"  then
		equip(sets.Enmity)
	end

	if spell.name == 'Atonement' then
		equip(sets.Atonement)
	end
	if spell.name == 'Savage Blade' then
		equip(sets.STRWSD)
	end
	if spell.name == 'Aeolian Edge' then
		equip(sets.AeolianEdge)
	end

	--Utsusemi Check
	if string.find(spell.name,'Utsusemi') then
		equip({neck="Magoraga Beads"})
	end

	if spell.skill == 'Enhancing Magic' then
		if spell.name == 'Phalanx' or spell.name == 'Reprisal' or spell.name == 'Crusade' or spell.name == 'Cocoon' then
			equip(sets.SIR)
		end
	end
	if spell.action_type == 'Magic' then
		equip(sets.FastCast)
	end
  
end


-- Midcast
function midcast(spell,act,arg)
	if spell.skill == 'Enhancing Magic' then
		if spell.name == 'Phalanx' then
			equip(sets.Phalanx)
		end
		if string.find(spell.name,'Protect') then
			equip(sets.Enhancing)
		end
	end

	if spell.name == 'Flash' or spell.name == "Stun" then
		equip(sets.Enmity)
	end
  
end


function aftercast(spell)
	equip_current()
	if (buffactive['Cover']) then
		equip({body="Cab. surcoat +1"})
	end
end


function equip_current()
	equip_shield()
	equip_weapon()
	status_change()
	if (buffactive['Cover']) then
		equip({body="Cab. surcoat +1"})
	end
end


function equip_shield()
	equip(sets.shield[sets.shield.index[shield_ind]])
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
	
--Alt+F7 or Ctrl+F7  --> Toggle SHIELD
--Alt+F8 or Ctrl+F8  --> Toggle WEAPON
--Alt+F9 or Ctrl+F9  --> Toggle ENGAGED Equipment
--Alt+F10 or Ctrl+F10  --> Toggle IDLE Equipment
function self_command(command)
	if command == 'C7' then 
		shield_ind = shield_ind +1
		if shield_ind > #sets.shield.index then shield_ind = 1 end
		send_command('@input /echo <----- SHIELD changed to '..sets.shield.index[shield_ind]..' ----->')
		equip_shield()
	elseif command == 'reverse Shield set' then 
		shield_ind = shield_ind -1
		if shield_ind == 0 then shield_ind = #sets.shield.index end
		send_command('@input /echo <----- SHIELD changed to '..sets.shield.index[shield_ind]..' ----->')
		equip_shield()
	elseif command == 'C8' then 
		weapon_ind = weapon_ind +1
		if weapon_ind > #sets.weapon.index then weapon_ind = 1 end
		send_command('@input /echo <----- WEAPON changed to '..sets.weapon.index[weapon_ind]..' ----->')
		equip_weapon()
	elseif command == 'reverse Weapon set' then 
		weapon_ind = weapon_ind -1
		if weapon_ind == 0 then weapon_ind = #sets.weapon.index end
		send_command('@input /echo <----- WEAPON changed to '..sets.weapon.index[weapon_ind]..' ----->')
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
		send_command('@input /tell <me> Wake up Voreus!')
	end
end)
