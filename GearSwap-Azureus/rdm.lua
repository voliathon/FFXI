                                           
     -- /\                                    
    -- /  \    _____   _ _ __ ___ _   _ ___   
   -- / /\ \  |_  / | | | '__/ _ \ | | / __|  
  -- / ____ \  / /| |_| | | |  __/ |_| \__ \  
 -- /_/    \_\/___|\__,_|_|  \___|\__,_|___/  
  -- _____          _ __  __                  
 -- |  __ \        | |  \/  |                 
 -- | |__) |___  __| | \  / | __ _  __ _  ___ 
 -- |  _  // _ \/ _` | |\/| |/ _` |/ _` |/ _ \
 -- | | \ \  __/ (_| | |  | | (_| | (_| |  __/
 -- |_|  \_\___|\__,_|_|  |_|\__,_|\__, |\___|
                                 -- __/ |     
                                -- |___/      

function get_sets()
	-- Set macro book/set --
    send_command('input /macro book 11;wait .1;input /macro set 1')
	
	-- Binds for modes
	-- Toggle Weapon F8 Key
	send_command('bind !f8 gs c C8') 
	send_command('bind ^f8 gs c Reverse Toggle Weapon')
	
	-- Toggle Engaged sets button, change if you want; currently ALT+F9 toggles forward, CTRL+F9 toggles backwards
    send_command('bind !f9 gs c C9')
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
		ammo="Staunch Tathlum +1",
		head={ name="Amalric Coif +1", augments={'INT+12','Mag. Acc.+25','Enmity-6',}},
		body="Zendik Robe",
		hands={ name="Gende. Gages +1", augments={'Phys. dmg. taken -4%','Song spellcasting time -4%',}},
		legs="Aya. Cosciales +2",
		feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}},
		neck="Voltsurge Torque",
		waist="Embla Sash",
		left_ear="Malignance Earring",
		right_ear="Lethargy earring +1",
		left_ring="Stikini Ring +1",
		right_ring="Lebeche Ring",
		back="Perimede Cape"
	}


	-- Enhancing Spells \\Generalized//
    sets.SelfEnhancing = {
		main="Bunzi's rod",
		sub="Ammurapi shield",
		ammo="Pemphredo Tathlum",
		head={ name="Telchine Cap", augments={'"Conserve MP"+5','Enh. Mag. eff. dur. +10',}},
		body={ name="Telchine Chas.", augments={'"Conserve MP"+5','Enh. Mag. eff. dur. +10',}},
		hands={ name="Telchine Gloves", augments={'Accuracy+15','"Conserve MP"+5','Enh. Mag. eff. dur. +10',}},
		legs={ name="Telchine Braconi", augments={'Accuracy+15 Attack+15','"Conserve MP"+5','Enh. Mag. eff. dur. +10',}},
		feet={ name="Telchine Pigaches", augments={'Accuracy+5 Attack+5','"Conserve MP"+5','Enh. Mag. eff. dur. +10',}},
		neck="Incanter's Torque",
		waist="Embla Sash",
		left_ear="Magnetic Earring",
		right_ear="Leth. Earring +1",
		left_ring={name="Stikini Ring +1", bag="Wardrobe 3"},
		right_ring={name="Stikini Ring +1", bag="Wardrobe 5"},
		back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+13 Attack+13','"Dbl.Atk."+10','Damage taken-5%',}}
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
		right_ear="Lethargy Earring +1",
		left_ring={name="Stikini Ring +1", bag="Wardrobe 3"},
		right_ring={name="Stikini Ring +1", bag="Wardrobe 5"},
		back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+13 Attack+13','"Dbl.Atk."+10',}}
	}

	-- Stoneskin
	sets.Stoneskin = set_combine(sets.FastCast,  {
		head="Umuthi Hat",
		hands="Carapacho Cuffs",
		right_ear="Earthcry Earring",
		left_ring={name="Stikini Ring +1", bag="Wardrobe 3"},
		right_ring={name="Stikini Ring +1", bag="Wardrobe 5"},
		waist="Siegel Sash"	
	})
	
    sets.Cure = set_combine(sets.FastCast,  {
		ammo="Pemphredo Tathlum",
		head={ name="Kaykaus Mitra", augments={'MP+60','MND+10','Mag. Acc.+15',}},
		body={ name="Vanya Robe", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
		legs="Doyen Pants",
		feet={ name="Vanya Clogs", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6',}},
		neck="Incanter's Torque",
		waist="Acerbic Sash +1",
		left_ear="Magnetic Earring",
		right_ear="Mendi. Earring",
		left_ring="Stikini Ring +1",
		right_ring="Lebeche Ring",
		back="Oretan. Cape +1"
	})

  	-- Elemental Magic sets...  When shit needs to die, this is the set to make it happen
	sets.ElementalMagic = {
		ammo="Ghastly Tathlum +1",
		head="Lethargy chappel +1",
		body="Lethargy sayon +1",
		hands="Lethargy gantherots +1",
		legs="Lethargy fuseau +1",
		feet="Lethargy Houseaux +1",
		neck="Saevus pendant +1",
		waist="Refoccilation stone",
		left_ear="Barkaro. Earring",
		right_ear="Halasz Earring",
		left_ring={name="Stikini Ring +1", bag="Wardrobe 3"},
		right_ring="Metamorph ring +1",
		back="Seshaw cape"
	}
	
	sets.MagicBurst = {
		ammo="Ghastly Tathlum +1",
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
		back="Null Shawl"	
	}
	
    sets.DarkMagic = {

	}

    sets.Enfeebling = set_combine(sets.FastCast,  {
		ammo="Pemphredo tathlum",
		head="Vitiation chapeau +1",
		body="Lethargy sayon +1",
		hands="Lethargy gantherots +1",
		feet="Vitiation Boots +1",
		legs={ name="Chironic Hose", augments={'Accuracy+2','STR+2','Weapon skill damage +10%','Mag. Acc.+5 "Mag.Atk.Bns."+5',}},
		neck="Null loop",
		waist="Null belt",
		left_ear="Malignance Earring",
		right_ear="Lethargy Earring +1",
		left_ring={name="Stikini Ring +1", bag="Wardrobe 3"},
		right_ring={name="Stikini Ring +1", bag="Wardrobe 5"},
		back="Null shawl"	
	})

	
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


	-- Impact whenever the fuck I get the damn cloak
    sets.Impact = {    
      body="Twilight Cloak"
	}

	sets.TP = {
		ammo="Coiste Bodhar",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Bunzi's Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Anu Torque",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Sherida Earring",
		right_ear="Lethargy Earring +1",
		left_ring="Chirich Ring +1",
		right_ring="Hetairoi Ring",
		back="Null shawl"
	}
	
	sets.Accuracy = {
		ammo="Coiste Bodhar",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Null loop",
		waist="Null belt",
		left_ear="Crep. Earring",
		right_ear="Lethargy Earring +1",
		left_ring={name="Chirich Ring +1", bag="Wardrobe 3"},
		right_ring={name="Chirich Ring +1", bag="Wardrobe 4"},
		back="Null shawl"
	}

	-- PDT Set
    sets.PDT = {
		ammo="Staunch Tathlum +1",
		head="Null masuqe",
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Null Loop",
		waist="Null belt",
		left_ear="Infused Earring",
		right_ear="Hearty Earring",
		left_ring="Shneddick Ring",
		right_ring="Chirich Ring +1",
		back="Null Shawl"
	}

	-- Magic Defense and Magic Defense Set
    sets.MDT = {
		ammo="Staunch Tathlum +1",
		head="Null masuqe",
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Null Loop",
		waist="Null belt",
		left_ear="Infused Earring",
		right_ear="Hearty Earring",
		left_ring="Shneddick Ring",
		right_ring="Chirich Ring +1",
		back="Null Shawl"
	}

		
	-- When I gotta kite shite, I put on my Sandals and shit...
    sets.Movement = set_combine(sets.PDT,  {
		left_ring="Shneddick ring"
	})

	sets.RefreshSelf = set_combine(sets.PDT,  {
		ammo="Staunch Tathlum +1",
		head={ name="Chironic Hat", augments={'AGI+9','CHR+8','"Refresh"+2','Accuracy+3 Attack+3','Mag. Acc.+19 "Mag.Atk.Bns."+19',}},
		body="Shamash Robe",
		hands={ name="Chironic Gloves", augments={'"Fast Cast"+1','Pet: "Mag.Atk.Bns."+10','"Refresh"+2','Accuracy+12 Attack+12',}},
		legs={ name="Merlinic Shalwar", augments={'Accuracy+19','Pet: INT+5','"Refresh"+2',}},
		feet={ name="Chironic Slippers", augments={'Phys. dmg. taken -1%','Pet: Attack+9 Pet: Rng.Atk.+9','"Refresh"+2','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
		neck="Null Loop",
		waist="Fucho-no-Obi",
		left_ear="Infused Earring",
		right_ear={ name="Leth. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','"Dbl.Atk."+3',}},
		left_ring={name="Stikini Ring +1", bag="Wardrobe 3"},
		right_ring={name="Stikini Ring +1", bag="Wardrobe 5"},
		back="Null Shawl"
	})

    -- Refresh spell set
	sets.Refresh = set_combine(sets.Enhancing,  {
		body="Lethargy sayon +3",
		legs="Lethargy Fuseau +3",
		ammo="Homiliary",
		head="Vitiation Chapeau +3",
		waist="Fucho-no-obi",
		left_ring={name="Stikini Ring +1", bag="Wardrobe 3"},
		right_ring={name="Stikini Ring +1", bag="Wardrobe 5"},
	})

	sets.Enspell = set_combine(sets.Enhancing,  {
		legs="Vitiation Tights +3"
	})	
	
	sets.EnspellActive = set_combine(sets.TP, {
		range="Ullr",
		head="Malignance Chapeau",
		body="Ayanmo Corazza +2",
		hands="Aya. Manopolas +2",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck={ name="Dls. Torque +2", augments={'Path: A',}},
		waist="Orpheus's Sash",
		left_ear="Sherida Earring",
		right_ear={ name="Leth. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+14','Mag. Acc.+14','"Dbl.Atk."+5',}},
		left_ring="Ilabrat Ring",
		right_ring="Hetairoi Ring",
		back="Null Shawl"	
	})	
  ------------------------------------------------------------------------------------------------------------------
  -- Weaponskill sets
  ------------------------------------------------------------------------------------------------------------------

  --Savage Blade
  sets.SavageBlade = {
    ammo="Yetshila +1",
	head="Nyame Helm",
	body="Nyame Mail",
	hands="Nyame Gauntlets",
	legs="Nyame Flanchard",
	feet="Nyame Sollerets",
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
	head="Nyame Helm",
	body="Nyame Mail",
	hands="Nyame Gauntlets",
	legs="Nyame Flanchard",
	feet="Nyame Sollerets",
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
	sets.engaged.Refresh = set_combine(sets.RefreshSelf, {})
	sets.engaged.Accuracy = set_combine(sets.Accuracy, {})
	sets.engaged.TakingLessMagicDamage = set_combine(sets.MDT, {})
	sets.engaged.TakingLessPhysicalDamage = set_combine(sets.PDT, {})
	sets.engaged.Movement = set_combine(sets.Movement, {})	 



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
	--Should probably Fast Cast everything here for Red Mage but holy smokes FastCast is already...Fast for RDM.
	if spell.name == "Composure" then
		equip(sets.Composure)
	end
	if spell.name == 'Refresh' or spell.name == 'Refresh II' or spell.name == 'Refresh III' then
		equip(sets.Refresh)
	end
	if spell.action_type == 'Enhancing Magic' then
		equip(sets.FastCast)
	end
	if spell.skill == 'Elemental Magic' then
		equip(sets.ElementalMagic)
		get_obi(spell)
	end
	--WS Lookups
	if spell.name == "Savage Blade" then
		equip(sets.SavageBlade)
	elseif spell.name == "Sanguine Blade" then
		equip(sets.SanguineBlade)
	elseif spell.name == "Seraph Blade" or spell.name == "Shining Blade" then
		equip(sets.SeraphBlade)
	end

	-- Add logic for Waltz
	-- Add logic for Utsusemi
    
end

function midcast(spell)
	if spell.name == "Dispel" then
		equip(sets.Dispel)
	end

	if spell.skill == 'Enhancing Magic' then
		if spell.name == 'Refresh' or spell.name == 'Refresh II' or spell.name == 'Refresh III' then
			equip(sets.Refresh)
		elseif spell.name == 'Stoneskin' then
			equip(sets.Stoneskin)
		elseif spell.name == 'Enfire' or spell.name == 'Enfire II' or spell.name == 'Enstone' or spell.name == 'Enstone II' or spell.name == 'Enblizzard' or spell.name == 'Enblizzard II' or spell.name == 'Enaero' or spell.name == 'Enaero II' or spell.name == 'Enthunder' or spell.name == 'Enthunder II' or spell.name == 'Enwater' or spell.name == 'Enwater II' then
			equip(sets.Enspell)
		else
			--gain and temper hits here
			equip(sets.Enhancing)
		end
	end

	if spell.name == 'Cursna' then
		equip(sets.Cursna)
	end
	if string.find(spell.english,'Cur') then 
		equip(sets.Cure)
	end
	if spell.skill == 'Elemental Magic' then
		send_command('@input /echo Bonus in midcast is: '..bonus..'%')	
		if Burst == 'Disabled' then 
			equip(sets.ElementalMagic)
		else
			equip(sets.BurstMagic)
		end
		if bonus > 0 then
			equip({waist = "Hachirin-no-obi"})
		end		
	end
	if spell.skill == 'Enfeebling Magic' then
		equip(sets.Enfeebling)
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
	enspellCheck()
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
	elseif command == 'Reverse Engaged Set' then
		engaged_ind = engaged_ind -1
		if engaged_ind == 0 then engaged_ind = #sets.engaged.index end
		send_command('@input /echo <----- Gear Set changed to '..sets.engaged.index[engaged_ind]..' ----->')
		equip_current()
	elseif command == 'C10' then
		if Burst == 'Disabled' then 
			Burst = 'Enabled'
		else
			Burst = 'Disabled'
		end
		send_command('@input /echo <----- Burst Mode changed to '..Burst..' ----->')
	end	 
end



-- Send tell to self if I died --
windower.register_event('status change', function()
	if player.status == 'Dead' then
		send_command('@input /tell <me> Wakies Wakies Voreus We hit 0 HP on accident. We shall live forever!!!')
	end
end)

function enspellCheck()
	if buffactive['Enthunder'] or buffactive['Enstone'] or buffactive['Enaero'] or buffactive['Enblizzard'] or buffactive['Enfire'] or buffactive['Enwater'] or buffactive['Enthunder II'] or buffactive['Enstone II'] or buffactive['Enaero II'] or buffactive['Enblizzard II'] or buffactive['Enfire II'] or buffactive['Enwater II'] then 
		equip({waist="Orpheus's sash"})
		--send_command('@input /echo O-Sash equipped')
	end
end

-- 10% bonus for magic of the day
-- 10% bonus for magic matching single weather
-- 20% bonus for magic matching single weather and day
-- 25% bonus for magic matching double weather
-- 35% bonus for magic matching double weather and day
-- Will also gain an equivalent negative bonuses during opposing day/weather 

-- Call this function in precast to see if you have any storm effects.
-- Function to check if the user has a storm effect
function has_storm_effect()
    local storm_effects = {
        "Firestorm", "Hailstorm", "Windstorm", "Sandstorm",
        "Thunderstorm", "Rainstorm", "Aurorastorm", "Voidstorm"
    }

    for _, effect in ipairs(storm_effects) do
        if buffactive[effect] then
            return true
        end
    end

    return false
end

-- Function to check if the Hachirin-no-Obi should be used
-- This returns a true or false
function use_hachirin_no_obi(spell)
    bonus = 0
	-- Define the opposing elements
	local opposing_elements = {
		Fire = "Ice",
		Ice = "Fire",
		Wind = "Earth",
		Earth = "Wind",
		Lightning = "Water",
		Water = "Lightning",
		Light = "Dark",
		Dark = "Light"
	}
	
	-- Define the weather intensity values
	local weather_to_intensity = {
		["Clear"] = 0,
		["Sunshine"] = 0,
		["Cloudy"] = 0,
		["Fog"] = 0,
		["Fine patches"] = 0,
		["Hot spells"] = 10,
		["Heat waves"] = 25,
		["Snow"] = 10,
		["Blizzards"] = 25,
		["Winds"] = 10,
		["Gales"] = 25,
		["Dust storms"] = 10,
		["Sand storms"] = 25,
		["Thunder"] = 10,
		["Thunderstorms"] = 25,
		["Rain"] = 10,
		["Squalls"] = 25,
		["Auroras"] = 10,
		["Stellar glare"] = 25,
		["Gloom"] = 10,
		["Darkness"] = 25
	}

	-- Debug: Spell Element Check
	--send_command('@input /echo Spell Element: ' .. spell.element)
	-- Debug: Day Element Check
	--send_command('@input /echo Day Element: ' .. world.day_element)
    
	-- Check if the spell element matches the current day
    if spell.element == world.day_element then
        bonus = bonus + 10
    elseif spell.element == opposing_elements[world.day_element] then
        bonus = bonus - 10
    end

	-- Debug: This returns the weather name found in weather_to_intensity example: Rain
	--send_command('@input /echo Self Weather Type: ' .. world.weather) 
	-- Debug: This returns back the weather of the zone or the storm.  
	--        Storm weather will come back first. Zone weather returns if there is no storm.
	--send_command('@input /echo Weather Type: ' .. world.weather_element)
	
    -- Check if a storm spell is up.
	if has_storm_effect() then
	    -- check if the spell and storm weather is the same.
		--send_command('@input /echo spell.element: ' .. spell.element)
		--send_command('@input /echo world.weather: ' .. world.weather)
		--send_command('@input /echo world.weather_element: ' .. world.weather_element)
		if spell.element == world.weather_element then
			bonus = bonus + weather_to_intensity[world.weather]
		-- check if the spell and storm weather are NOT the same.
		elseif spell.element == opposing_elements[world.weather_element] then
			bonus = bonus - weather_to_intensity[world.weather]
		end
	-- check if the spell and zone weather is the same.
	elseif spell.element == world.weather_element then
		bonus = bonus + weather_to_intensity[world.weather]
	-- check if the spell and zone weather are NOT the same.
	elseif spell.element == opposing_elements[world.weather_element] then
		bonus = bonus - weather_to_intensity[world.weather]
	end
	
	--Debug
	--send_command('@input /echo Bonus Amount: ' .. bonus.. '%')       
	-- Determine if the Hachirin-no-Obi should be used
    if bonus > 0 then
        return true
    else
        return false
    end
end

-- Function to get the appropriate obi
function get_obi(spell)
    if use_hachirin_no_obi(spell) then
		--Debug
		--send_command('@input /echo Waist: Hachirin-no-Obi')
        return { equip({waist = "Hachirin-no-obi"}) }
    else
		--Debug
		--send_command('@input /echo Waist: Tengu-no-Obi')	
        return { equip({waist = "Eschan Stone"}) }
    end
end
