--Gettnir done by Voliathon
--RDM powah for BabyBear's Red Mage
function get_sets()
	-- Set macro book/set --
    send_command('input /macro book 11;wait .1;input /macro set 1')
	
	-- Toggle Engaged sets button, change if you want; currently ALT+F9 toggles forward, CTRL+F9 toggles backwards
    send_command('bind !f9 gs c toggle Engaged set')
	send_command('bind ^f9 gs c reverse Engaged set')
	
    -- Job Abilities for Red Mage --
    sets.Chainspell = {body="Vitiation tabard +1"}
    sets.Stymie = {}
    sets.Spontaneity = {}
    sets.Composure = {
		head="Lethargy chappel +1",
		body="Lethargy sayon +1",
		hands="Lethargy gantherots +1",
		legs="Lethargy fuseau +1",
		feet="Lethargy Houseaux +1"
	}
	sets.Saboteur = {hands="Lethargy gantherots +1"}
	sets.Dispel = {}


    -- Fast Cast for Red Mage --
    sets.FastCast = {
		ammo="Staunch Tathlum",
		head={ name="Amalric Coif +1", augments={'INT+12','Mag. Acc.+25','Enmity-6',}},
		body="Zendik Robe",
		hands={ name="Gende. Gages +1", augments={'Phys. dmg. taken -4%','Song spellcasting time -4%',}},
		legs="Aya. Cosciales +2",
		feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}},
		neck="Voltsurge Torque",
		waist="Embla Sash",
		left_ear="Malignance Earring",
		right_ear="Lethargy Earring",
		left_ring="Stikini Ring +1",
		right_ring="Lebeche Ring",
		back="Perimede Cape"
	}


	-- Enhancing Spells \\Generalized//
    sets.SelfEnhancing = {
		main="Bunzi's rod",
		sub="Ammurapi shield",
		ammo="Pemphredo Tathlum",
		head={ name="Telchine Cap", augments={'"Fast Cast"+3','Enh. Mag. eff. dur. +9',}},
		body={ name="Telchine Chas.", augments={'"Cure" potency +5%','Enh. Mag. eff. dur. +9',}},
		hands={ name="Telchine Gloves", augments={'Accuracy+15','Song spellcasting time -5%','Enh. Mag. eff. dur. +10',}},
		legs={ name="Telchine Braconi", augments={'Accuracy+15 Attack+15','"Fast Cast"+4','Enh. Mag. eff. dur. +10',}},
		feet={ name="Telchine Pigaches", augments={'Accuracy+5 Attack+5','Song spellcasting time -7%','Enh. Mag. eff. dur. +10',}},
		neck="Incanter's Torque",
		waist="Embla Sash",
		left_ear="Magnetic Earring",
		right_ear="Lethargy Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+13 Attack+13','"Dbl.Atk."+10',}}
	}
	
	sets.Enhancing = {
		main="Bunzi's rod",
		sub="Ammurapi shield",
		ammo="Pemphredo Tathlum",
		head={ name="Telchine Cap", augments={'"Fast Cast"+3','Enh. Mag. eff. dur. +9',}},
		body={ name="Telchine Chas.", augments={'"Cure" potency +5%','Enh. Mag. eff. dur. +9',}},
		hands={ name="Telchine Gloves", augments={'Accuracy+15','Song spellcasting time -5%','Enh. Mag. eff. dur. +10',}},
		legs={ name="Telchine Braconi", augments={'Accuracy+15 Attack+15','"Fast Cast"+4','Enh. Mag. eff. dur. +10',}},
		feet={ name="Telchine Pigaches", augments={'Accuracy+5 Attack+5','Song spellcasting time -7%','Enh. Mag. eff. dur. +10',}},
		neck="Incanter's Torque",
		waist="Embla Sash",
		left_ear="Magnetic Earring",
		right_ear="Lethargy Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+13 Attack+13','"Dbl.Atk."+10',}}
	}

	-- Stoneskin
	sets.Stoneskin = set_combine(sets.FastCast,  {
		head="Umuthi Hat",
		hands="Carapacho Cuffs",
		right_ear="Earthcry Earring",
		left_ring="Stikini ring +1",
		right_ring="Stikini ring +1",
		waist="Siegel Sash"	
	})
	
    sets.Cure = {
		head={ name="Vanya Hood", augments={'MND+10','Spell interruption rate down +15%','"Conserve MP"+6'}},
		body={ name="Vanya Robe", augments={'MP+50','"Cure" potency +7%','Enmity-6',}},
		hands={ name="Vanya Cuffs", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3'}},
		legs="Atrophy Tights +3",
		feet={ name="Vanya Clogs", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6'}},
		neck="Phalaina locket",
		waist="Embla Sash",
		left_ear="Meili Earring",
		right_ear="Mendi. Earring",
		left_ring="Kishar Ring",
		right_ring="Lebeche Ring",
		back={ name="Sucellos's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10'}}
	}


	-- Protecting the party
    sets.Protect = set_combine(sets.FastCast,  {
		ring1="Sheltered Ring"
	})

	-- MDF the party
    sets.Shell = set_combine(sets.FastCast,  {
		ring1="Sheltered Ring"
	})

  	-- Elemental Magic sets...  When shit needs to die, this is the set to make it happen
	sets.ElementalMagic = {
		ammo="Dosis Tathlum",
		head="Lethargy chappel +1",
		body="Lethargy sayon +1",
		hands="Lethargy gantherots +1",
		legs="Lethargy fuseau +1",
		feet="Lethargy Houseaux +1",
		neck="Saevus pendant +1",
		waist="Refoccilation stone",
		left_ear="Barkaro. Earring",
		right_ear="Halasz Earring",
		left_ring="Stikini ring +1",
		right_ring="Stikini ring +1",
		back="Seshaw cape"
	}
	
	sets.MagicBurst = {
		ammo="Pemphredo Tathlum",
		head="Ea Hat",
		body="Ea Houppelande",
		hands="Leth. Ganth. +3",
		legs="Leth. Fuseau +3",
		feet="Leth. Houseaux +3",
		neck="Mizu. Kubikazari",
		waist="Eschan Stone",
		left_ear="Regal Earring",
		right_ear="Malignance Earring",
		left_ring="Freke Ring",
		right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		back={ name="Sucellos's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10',}}	
	}
	
    sets.DarkMagic = {

	}

    sets.Enfeebling = set_combine(sets.FastCast,  {
		ammo="Pemphredo tathlum",
		head="Vitiation chapeau +1",
		body="Lethargy sayon +1",
		hands="Lethargy gantherots +1",
		legs="Chironic Hose",
		feet="Vitiation Boots +1",
		legs={ name="Chironic Hose", augments={'Accuracy+2','STR+2','Weapon skill damage +10%','Mag. Acc.+5 "Mag.Atk.Bns."+5',}},
		neck="Sanctity Necklace",
		waist="Luminary Sash",
		left_ear="Digni. Earring",
		right_ear="Malignance Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back={ name="Sucellos's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10'}}
		
	})


	-- Impact whenever the fuck I get the damn cloak
    sets.Impact = {    
      body="Twilight Cloak"
	}


    -- /heal the damn MP/HP up.
    sets.heal = {

	}

	sets.TP = {
		ammo="Ginsen",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Bunzi's Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Anu Torque",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Sherida Earring",
		right_ear="Telos Earring",
		left_ring="Chirich Ring +1",
		right_ring="Hetairoi Ring",
		back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+13 Attack+13','"Dbl.Atk."+10','Damage taken-5%',}}
	}
	
    sets.Refresh = set_combine(sets.PDT,  {
		head="Volte Beret",
		body="Jhakri robe +2",
		hands={ name="Chironic Gloves", augments={'Crit.hit rate+4','Weapon Skill Acc.+4','"Refresh"+1','Accuracy+2 Attack+2','Mag. Acc.+17 "Mag.Atk.Bns."+17',}},
		feet={ name="Chironic Slippers", augments={'Phys. dmg. taken -1%','Pet: Attack+9 Pet: Rng.Atk.+9','"Refresh"+2','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
		waist="Fucho-no-Obi",
		right_ring="Stikini ring +1",
		left_ring="Stikini ring +1"
	})
		
	sets.Accuracy = {
		ammo="Ginsen",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Sanctity Necklace",
		waist="Eschan Stone",
		left_ear="Crep. Earring",
		right_ear="Telos Earring",
		left_ring="Chirich Ring +1",
		right_ring="Chirich Ring +1",
		back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+13 Attack+13','"Dbl.Atk."+10','Damage taken-5%',}}
	}

	-- PDT Set
    sets.PDT = {
		ammo="Staunch Tathlum",
		head="Nyame Helm",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck={ name="Loricate Torque +1", augments={'Path: A',}},
		waist="Flume Belt",
		left_ear="Infused Earring",
		right_ear="Hearty Earring",
		left_ring="Fortified Ring",
		right_ring="Defending Ring",
		back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+13 Attack+13','"Dbl.Atk."+10','Damage taken-5%',}}
	}

	-- Magic Defense and Magic Defense Set
    sets.MDT = {
		ammo="Staunch Tathlum",
		head="Nyame Helm",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck={ name="Loricate Torque +1", augments={'Path: A',}},
		waist="Flume Belt",
		left_ear="Infused Earring",
		right_ear="Hearty Earring",
		left_ring="Fortified Ring",
		right_ring="Defending Ring",
		back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+13 Attack+13','"Dbl.Atk."+10','Damage taken-5%',}}
	}

		
	-- When I gotta kite shite, I put on my Sandals and shit...
    sets.Kiting = {
		legs="Carmine cuisses +1"
	}

	
  ------------------------------------------------------------------------------------------------------------------
  -- Weaponskill sets
  ------------------------------------------------------------------------------------------------------------------

  --Savage Blade
  sets.SavageBlade = {
    ammo="Yetshila +1",
    head={ name="Chironic Hat", augments={'DEX+3','"Drain" and "Aspir" potency +5','Weapon skill damage +8%',}},
    body={ name="Chironic Doublet", augments={'Enmity+4','"Mag.Atk.Bns."+14','Weapon skill damage +9%','Accuracy+9 Attack+9',}},
    hands="Jhakri cuffs +2",
    legs={ name="Chironic Hose", augments={'Accuracy+2','STR+2','Weapon skill damage +10%','Mag. Acc.+5 "Mag.Atk.Bns."+5',}},
    feet={ name="Chironic Slippers", augments={'Phys. dmg. taken -2%','"Store TP"+6','Weapon skill damage +10%','Accuracy+17 Attack+17',}},
    neck="Fotia Gorget",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Ishvara Earring",
    right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    left_ring="Sroda Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+13 Attack+13','"Dbl.Atk."+10','Damage taken-5%',}}
  }
  
  --All in One who gives a fuck Weapon Skill set of Doom
  sets.WSD = {
    ammo="Yetshila +1",
    head={ name="Chironic Hat", augments={'DEX+3','"Drain" and "Aspir" potency +5','Weapon skill damage +8%',}},
    body={ name="Chironic Doublet", augments={'Enmity+4','"Mag.Atk.Bns."+14','Weapon skill damage +9%','Accuracy+9 Attack+9',}},
    hands="Jhakri cuffs +2",
    legs={ name="Chironic Hose", augments={'Accuracy+2','STR+2','Weapon skill damage +10%','Mag. Acc.+5 "Mag.Atk.Bns."+5',}},
    feet={ name="Chironic Slippers", augments={'Phys. dmg. taken -2%','"Store TP"+6','Weapon skill damage +10%','Accuracy+17 Attack+17',}},
    neck="Fotia Gorget",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Ishvara Earring",
    right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    left_ring="Sroda Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+13 Attack+13','"Dbl.Atk."+10','Damage taken-5%',}}
  }
	 
	  -- Engaged Sets Toggle--
	sets.engaged = {}
	sets.engaged.index = {'TP', 'Movement', 'TakingLessPhysicalDamage', 'TakingLessMagicDamage', 'Accuracy', 'Refresh'}
	engaged_ind = 1  	 
	 
	sets.engaged.TP = set_combine(sets.TP, {}) 
	sets.engaged.Refresh = set_combine(sets.Refresh, {})
	sets.engaged.Accuracy = set_combine(sets.Accuracy, {})
	sets.engaged.TakingLessMagicDamage = set_combine(sets.MDT, {})
	sets.engaged.TakingLessPhysicalDamage = set_combine(sets.PDT, {})
	sets.engaged.Movement = set_combine(sets.Kiting, {})	 



  -- Weapon Toggle--
  sets.weapon = {}
  sets.weapon.index = {'SequenceShield', 'SequenceThibron', 'SequenceCrepuscularKnife', 'BunziShield', 'DaybreakShield',  'MaxentiusBunzi', 'NaeglingShield', 'NaeglingThibron', 'NaeglingCrepuscularKnife','TauretShield', 'TauretThibron', 'TauretCrepuscularKnife'}
  weapon_ind = 1     
  
 sets.weapon.SequenceShield = {
	main="Sequence",
	sub="Genmei shield"
 } 
 sets.weapon.SequenceThibron = {
	main="Sequence",
	sub="Thibron"
 }
 sets.weapon.SequenceCrepuscularKnife = {
	main="Sequence",
	sub="Crepuscular Knife"
 }
  sets.weapon.BunziShield = {
	main="Bunzi's Rod",
	sub="Ammurapi shield"
 }  
 sets.weapon.DaybreakShield = {
	main="Daybreak",
	sub="Ammurapi shield"
 }
 sets.weapon.MaxentiusBunzi = {
	main="Maxentius",
	sub="Bunzi's Rod"
 }  
 sets.weapon.NaeglingShield = {
	main="Naegling",
	sub="Genmei shield"
 }
 sets.weapon.NaeglingThibron = {
	main="Naegling",
	sub="Thibron"
 }  
 sets.weapon.NaeglingCrepuscularKnife = {
	main="Naegling",
	sub="Crepuscular Knife"
 } 
 sets.weapon.TauretShield = {
	main="Tauret",
	sub="Genmei shield"
 } 
  sets.weapon.TauretThibron = {
	main="Tauret",
	sub="Thibron"
 } 
 sets.weapon.TauretCrepuscularKnife = {
	main="Tauret",
	sub="Crepuscular Knife"
 } 
end


function precast(spell,abil)
--TODO DISPEL
--EN Spells
--Boost Spells
--Phalanx

	--Composure Lookups
	if spell.name == "Composure" then
		equip(sets.Composure)
	--Enhancing Magic Check
	elseif spell.skill == 'Enhancing Magic' then
		equip(sets.Enhancing)
	elseif spell.skill == 'Enfeebling Magic' then
		equip(sets.Enfeebling)
	elseif spell.action_type == 'Magic' then
		equip(sets.FastCast)
	end
		--Can add stuff here for other magic. Doesn't have to go to idle at all
	
	--WS Lookups
	if spell.name == "Savage Blade" then
		equip(sets.SavageBlade)
	end
	if spell.name == "Rudra's Storm" or spell.name == "Evisceration" or spell.name == "Mordant Rime" then
		equip(sets.WSD)
	end
	-- Add logic for Waltz
	-- Add logic for Utsusemi
  
  
end

function midcast(spell)
	if string.find(spell.english,'Cur') then 
		equip(sets.Cure)
	end
	if spell.name == 'Stoneskin' then
		equip(sets.Stoneskin)
	end
	if spell.name == 'Cursna' then
		equip(sets.Cursna)
	end
	if string.find(spell.english,'helix') then
		equip(sets.MagicBurst)
	end
	if spell.skill == 'Elemental Magic' then
		equip(sets.ElementalMagic)
	end
	if spell.skill == 'Enfeebling Magic' then
		equip(sets.Enfeebling)
	end	
	if spell.name == "Dispel" then
		equip(sets.Dispel)
	end
end

--We need to do some thinking and testing for this set...
function aftercast(spell)
	if string.find(spell.english,'Warp') then
		--do fuck all nothing
	else
		equip_current()
	end
end


--This function should only get kicked off when you're engaging.  
--If I want a manual 'Refresh' set or 'MDT' or 'DT' set I can do that in game with equipsets.  
--But I don't want to fuck myself by ignoring the engaged check.
--I'm also deciding not to use a Binding Key to put my in a MDT, PDT, DT, Refresh Set.
--I dunno, I'm just against hitting Ctrl+f# all the time for that shit
function equip_current()
	equip(sets.engaged[sets.engaged.index[engaged_ind]]) 
	equip_weapon()
end

function equip_weapon()
	equip(sets.weapon[sets.weapon.index[weapon_ind]])
end

--Function use for Changing the Engaged Set.  Ctrl+F9 is your meal ticket
--123 is a red color for the text output
--158 is a green color for the text output
function self_command(command)
	if command == 'C8' then -- Toggling Weapons--	
		weapon_ind = weapon_ind +1
		if weapon_ind > #sets.weapon.index then weapon_ind = 1 end
		send_command('@input /echo <----- Gear Set changed to '..sets.weapon.index[weapon_ind]..' ----->')
		equip_weapon()
	elseif command == 'Reverse Toggle Weapon' then --Reverse Toggling of Weapons
		weapon_ind = weapon_ind -1
		if weapon_ind == 0 then weapon_ind = #sets.weapon.index end
		send_command('@input /echo <----- Gear Set changed to '..sets.weapon.index[weapon_ind]..' ----->')
		equip_weapon()
	elseif command == 'C9' then
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
		send_command('@input /tell <me> Wakies Wakies Voreus We hit 0 HP on accident. We shall live forever!!!')
	end
end)

