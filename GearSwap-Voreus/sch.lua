--Scholar for Voreus
function get_sets()
	-- Set macro book/set --
    send_command('input /macro book 4;wait .1;input /macro set 1')
	
	bonus = 0
	-- Default Disabled Burst unless set with F11
	Burst = 'Disabled'	
	
	-- Binds for modes
	-- Toggle Weapon sets | Ctrl F8 or Alt F8
	send_command('bind ^f8 gs c C8') 
	send_command('bind !f8 gs c reverse Weapon set')

	-- Toggle Engaged sets | Ctrl F9 or Alt F9
	send_command('bind ^f9 gs c C9')
	send_command('bind !f9 gs c reverse Engaged set')

	-- Toggle Idle sets | Ctrl F10 or Alt F10
	send_command('bind ^f10 gs c C10') 
	send_command('bind !f10 gs c reverse Idle set')
	
	-- Toggle Burst Mode
	send_command('bind ^f11 gs c C11')
	
    -- Job Abilities for Scholar --
    sets.Immanence = {hands="Arbatel bracers +3"}
    sets.Celerity = {feet="Pedagogy Loafers +3"}
    sets.Alacrity = {feet="Pedagogy Loafers +3"}
    sets.Stormsurge = {feet={ name="Pedagogy Loafers +3", augments={'Enhances "Stormsurge" effect'}},}

    -- Fast Cast for Scholar --
    sets.FastCast = {
		ammo="Impatiens",
		head={ name="Merlinic Hood", augments={'Mag. Acc.+7','Magic burst dmg.+10%','MND+9','"Mag.Atk.Bns."+9',}},
		body={ name="Agwu's Robe", augments={'Path: A',}},
		hands={ name="Agwu's Gages", augments={'Path: A',}},
		legs={ name="Agwu's Slops", augments={'Path: A',}},
		feet="Academic's loafers +4",
		neck="Incanter's Torque",
		waist="Embla Sash",
		left_ear="Malignance Earring",
		right_ear="Loquac. Earring",
		left_ring="Lebeche Ring",
		right_ring="Kishar Ring",
		back={ name="Fi Follet Cape +1", augments={'Path: A',}}
	}
	
	sets.FastCastGrimoire = set_combine(sets.FastCast,  {
		head="Pedagogy Mortarboard +3",
		feet="Academic's loafers +4"
	})

	sets.Duration = {
		main="Musa",
		sub="Khonsu",
		ammo="Pemphredo Tathlum",
		head={ name="Telchine Cap", augments={'Enh. Mag. eff. dur. +9',}},
		body={ name="Telchine Chas.", augments={'Enh. Mag. eff. dur. +10',}},
		hands={ name="Telchine Gloves", augments={'Enh. Mag. eff. dur. +10',}},
		legs={ name="Telchine Braconi", augments={'Enh. Mag. eff. dur. +10',}},
		feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +10',}},
		neck="Incanter's Torque",
		waist="Embla Sash",
		left_ear="Mendi. Earring",
		right_ear="Mimir Earring",
		left_ring={name="Stikini Ring +1", bag="Wardrobe"},
		right_ring={name="Stikini Ring +1", bag="Wardrobe 5"},
		back={ name="Fi Follet Cape +1", augments={'Path: A',}}
	}
	
    sets.Klimaform = set_combine(sets.Duration,  {
		feet="Arbatel loafers +3"
	})
	
	-- Stoneskin
	sets.Stoneskin = set_combine(sets.Duration,  {
		hands="Carapacho Cuffs",
		legs="Doyen Pants",
		neck="Nodens Gorget",
		waist="Siegel Sash",
	})
	
	-- Hitting the Duration set due to longer enhancing duration gear
	sets.Aquaveil = set_combine(sets.Duration,  {
		head={ name="Amalric Coif +1", augments={'INT+12','Mag. Acc.+25','Enmity-6'}},
		hands="Regal Cuffs",
		waist="Emphatikos Rope",
	})
	
    sets.Cure = set_combine(sets.FastCast,  {
		main="Daybreak",
		sub="Sors Shield",
		ammo="Pemphredo Tathlum",
		head={ name="Vanya Hood", augments={'MND+10','Spell interruption rate down +15%','"Conserve MP"+6',}},
		body={ name="Vanya Robe", augments={'MP+50','"Cure" potency +7%','Enmity-6',}},
		hands={ name="Vanya Cuffs", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
		legs={ name="Vanya Slops", augments={'MND+10','Spell interruption rate down +15%','"Conserve MP"+6',}},
		feet={ name="Vanya Clogs", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6',}},
		neck="Incanter's Torque",
		waist="Witful Belt",
		left_ear="Mendi. Earring",
		right_ear="Meili Earring",
		left_ring="Mephitas's ring +1",
		right_ring={name="Stikini Ring +1", bag="Wardrobe 5"},
		back={ name="Fi Follet Cape +1", augments={'Path: A',}}
	})

	--Regen Max Duration
	sets.Regen = set_combine(sets.Duration,  {
		main="Musa",
		sub="Khonsu",
		head="Arbatel Bonnet +3"
	})

  	-- Elemental Magic sets...  When shit needs to die, this is the set to make it happen
	sets.ElementalMagic = {
		ammo={ name="Ghastly Tathlum +1", augments={'Path: A',}},
		head="Agwu's cap",
		body="Agwu's robe",
		hands="Agwu's gages",
		legs="Arbatel pants +3",
		feet="Arbatel loafers +3",
		neck="Argute Stole +2",
		waist={ name="Acuity Belt +1", augments={'Path: A',}},
		left_ear="Malignance Earring",
		right_ear="Barkaro. Earring",
		left_ring="Freke Ring",
		right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Damage taken-5%',}}
	}
	
	sets.BurstMagic = set_combine(sets.ElementalMagic,  {
		hands="Arbatel bracers +3",
		left_ring="Mujin Band",
		right_ring="Locus Ring"
	})
	
	sets.Kaustra = {
		ammo="Ghastly Tathlum +1",
	    head="Pixie Hairpin +1", -- Dark magic damage
		body="Agwu's Robe", -- Magic accuracy and damage
		hands="Arbatel bracers +3", -- Magic accuracy and damage
		legs="Arbatel pants +3", -- Magic accuracy and damage
		feet="Arbatel loafers +3", -- Magic accuracy and damage
		neck="Argute Stole +2", -- Magic skill and damage
		waist="Null belt",
		left_ear="Malignance Earring",
		right_ear="Halasz Earring",
		left_ring="Mujin Band",
		right_ring="Metamorph Ring +1",	
		back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Damage taken-5%',}}
	}
	
    sets.DrainAspir = {
		ammo="Pemphredo Tathlum",
		head={ name="Chironic Hat", augments={'DEX+3','"Drain" and "Aspir" potency +5','boomstick skill damage +8%',}},
		body="Arbatel Gown +3",
		hands={ name="Amalric Gages", augments={'INT+10','Elem. magic skill +15','Dark magic skill +15',}},
		legs={ name="Pedagogy Pants +3", augments={'Enhances "Tabula Rasa" effect',}},
		feet="Arbatel loafers +3",
		neck={ name="Argute Stole +2", augments={'Path: A',}},
		waist="Fucho-no-Obi",
		left_ear="Malignance Earring",
		right_ear={ name="Arbatel Earring +1", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+13','Enmity-3',}},
		left_ring="Excelsis Ring",
		right_ring="Evanescence Ring",
		back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Damage taken-5%',}}
	}
	
	sets.Cursna = {
		ammo="Pemphredo Tathlum",
		head="Arbatel Bonnet +3",
		body="Arbatel Gown +3",
		hands="Arbatel bracers +3",
		legs="Arbatel pants +3",
		feet={ name="Vanya Clogs", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
		neck="Malison Medallion",
		waist="Null belt",
		left_ear="Crep. Earring",
		right_ear="Malignance Earring",
		left_ring="Ephedra Ring",
		right_ring="Menelaus's Ring",
		back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}}
	}	
	
    sets.MagicAccuracy = {
		ammo="Pemphredo Tathlum",
		head="Arbatel Bonnet +3",
		body="Arbatel Gown +3",
		hands="Arbatel bracers +3",
		legs="Arbatel pants +3",
		feet="Arbatel loafers +3",
		neck="Null loop",
		waist="Null belt",
		left_ear="Crep. Earring",
		right_ear="Malignance Earring",
		left_ring={name="Stikini Ring +1", bag="Wardrobe"},
		right_ring={name="Stikini Ring +1", bag="Wardrobe 5"},	
		back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Damage taken-5%',}}
	}	
	
	sets.Helix = {
		ammo="Sroda Tathlum",
		head="Agwu's Cap", -- Magic accuracy and damage
		body="Agwu's Robe", -- Magic accuracy and damage
		hands="Arbatel bracers +3", -- Magic accuracy and damage
		legs="Agwu's Slops", -- Magic accuracy and damage
		feet="Arbatel loafers +3", -- Magic accuracy and damage
		neck="Argute Stole +2", -- Magic skill and damage
		waist="Eschan stone",
		left_ear="Malignance Earring", -- Magic accuracy and damage
		right_ear="Halasz Earring",
		left_ring="Mujin Band",
		right_ring="Locus Ring",
		back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Damage taken-5%',}}
	}

    sets.Enfeebling = set_combine(sets.FastCast,  {
		ammo="Pemphredo Tathlum",
		head="Arbatel Bonnet +3",
		body="Arbatel Gown +3",
		hands="Arbatel bracers +3",
		legs="Arbatel pants +3",
		feet="Arbatel loafers +3",
		neck={ name="Argute Stole +2", augments={'Path: A',}},
		waist="Null belt",
		left_ear="Crep. Earring",
		right_ear="Malignance Earring",
		left_ring={name="Stikini Ring +1", bag="Wardrobe"},
		right_ring={name="Stikini Ring +1", bag="Wardrobe 5"},	
		back="Aurist's cape +1"
	})


	-- Impact ugh mutha-fucka
    sets.Impact = set_combine(sets.Kaustra,  {  
      body="Twilight Cloak"
	})
	
	-- Engaged Sets Toggle--
	sets.engaged = {}
	sets.engaged.index = {'PDT', 'Refresh', 'Movement', 'TP'}
	engaged_ind = 1  	

	-- PDT Set
    sets.engaged.PDT = {
		ammo="Homiliary",
		head="Arbatel Bonnet +3",
		body="Arbatel Gown +3",
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs="Arbatel pants +3",
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Null Loop",
		waist="Plat. Mog. Belt",
		left_ear="Infused Earring",
		right_ear="Hearty Earring",
		left_ring="Defending ring",
		right_ring={name="Stikini Ring +1", bag="Wardrobe 5"},
		back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Damage taken-5%',}}
	}

	sets.engaged.Refresh = set_combine(sets.engaged.PDT,  {
		ammo="Homiliary",
		head={ name="Chironic Hat", augments={'Rng.Atk.+25','"Drain" and "Aspir" potency +7','"Refresh"+2','Accuracy+11 Attack+11',}},
		body="Arbatel Gown +3",
		hands={ name="Chironic Gloves", augments={'Accuracy+6','CHR+1','"Refresh"+2','Mag. Acc.+15 "Mag.Atk.Bns."+15',}},
		legs={ name="Merlinic Shalwar", augments={'DEX+2','Accuracy+14','"Refresh"+2','Mag. Acc.+11 "Mag.Atk.Bns."+11',}},
		feet={ name="Merlinic Crackows", augments={'INT+1','Pet: "Mag.Atk.Bns."+28','"Refresh"+2','Accuracy+8 Attack+8',}},
		neck="Sanctity necklace",
		waist="Fucho-no-Obi",
		left_ear="Infused Earring",
		right_ear="Genmei Earring",
		left_ring={name="Stikini Ring +1", bag="Wardrobe"},
		right_ring={name="Stikini Ring +1", bag="Wardrobe 5"},
		back={ name="Aurist's Cape +1", augments={'Path: A',}}
	})

	-- When I gotta kite shite, I put on my Sandals and shit...
    sets.engaged.Movement = {
		ammo="Homiliary",
		head="Arbatel Bonnet +3",
		body="Arbatel Gown +3",
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs="Arbatel pants +3",
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Null Loop",
		waist="Plat. Mog. Belt",
		left_ear="Infused Earring",
		right_ear="Hearty Earring",
		left_ring="Shneddick ring",
		right_ring={name="Stikini Ring +1", bag="Wardrobe 5"},
		back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Damage taken-5%',}}	

	}

	sets.engaged.TP = set_combine(sets.engaged.PDT,  {
		ammo="Crepuscular Pebble",
		head="Null masuqe",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck="Null loop",
		waist="Windbuffet Belt +1",
		left_ear="Crep. Earring",
		right_ear="Telos Earring",
		left_ring={name="Chirich Ring +1", bag="Wardrobe"},
		right_ring={name="Chirich Ring +1", bag="Wardrobe 4"},
		back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Damage taken-5%',}}	
	})


	-- Idle Sets Toggle-- Alt+F10 or Ctrl+F10
	sets.idle = {}
	sets.idle.index = {'PDTMovement', 'RefreshMovement', 'PureRefresh', 'Craft'}
	idle_ind = 1      
	
	sets.idle.PDTMovement = set_combine(sets.engaged.Movement,  {})

	sets.idle.RefreshMovement = set_combine(sets.engaged.Refresh,  {
		left_ring="Shneddick ring"
	})

	sets.idle.PureRefresh = set_combine(sets.engaged.Refresh,  { })

	sets.idle.Craft = set_combine(sets.engaged.Movement, {
		sub="Bv. escutcheon",
		hands="Tanner's gloves",
		neck="Tanner's torque",
		left_ring="Artificer's Ring"
	})


    ------------------------------------------------------------------------------------------------------------------
    -- Weaponskill sets
    ------------------------------------------------------------------------------------------------------------------
	sets.WSD = {
		ammo="Crepuscular Pebble",
		head="Nyame helm",
		body="Nyame Mail",
		hands="Nyame gauntlets",
		legs="Nyame flanchard",
		feet={ name="Chironic Slippers", augments={'Phys. dmg. taken -2%','"Store TP"+6','boomstick skill damage +10%','Accuracy+17 Attack+17',}},
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Ishvara Earring",
		left_ring="Epaminondas's Ring",
		right_ring="Chirich Ring +1",
		back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Damage taken-5%',}}
	}
	
	sets.Cataclysm = {
		ammo="Pemphredo Tathlum",
		head="Pixie Hairpin +1",
		body="Nyame Mail",
		hands="Nyame gauntlets",
		legs="Nyame flanchard",
		feet="Arbatel loafers +3",
		neck={ name="Argute Stole +2", augments={'Path: A',}},
		waist="Orpheus's Sash",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Friomisi Earring",
		left_ring="Epaminondas's Ring",
		right_ring="Hetairoi Ring",
		back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Damage taken-5%',}}
	}
	
	 --Max MP WS.. equip mp gear noob
	sets.Myrkr = {
		head="Pixie Hairpin +1",
		body="Arbatel Gown +3",
		hands="Regal Cuffs",
		legs={ name="Amalric Slops +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		feet="Skaoi Boots",
		neck="Sanctity necklace",
		waist="Mujin Obi",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Halasz Earring",
		left_ring="Sangoma Ring",
		right_ring="Mephitas's Ring +1",
		back="Pahtli cape"
	} 

 
	--Weapon Sets--
	sets.weapon = {}
	sets.weapon.index = {'Musa','DaybreakShield','Bunzi','MarinStaff','Wizard','WizardDuel'}
	weapon_ind = 1
	
	sets.weapon.Musa = {
		main="Musa",
		sub="Khonsu"
	}
	sets.weapon.DaybreakShield = {
		main="Daybreak",
		sub="Ammurapi Shield"
	}
	sets.weapon.Bunzi = {
		main="Bunzi's rod",
		sub="Ammurapi Shield"
	}	
	sets.weapon.MarinStaff = {
		main="Marin staff +1",
		sub="Enki strap"
	}	 
	sets.weapon.Wizard = {
		main="Wizard's rod",
		sub="Ammurapi Shield"
	}
	sets.weapon.WizardDuel = {
		main="Bunzi's rod",
		sub="Wizard's rod"
	}	
end

-- Scholar Job Abilities where equip needs to be used upon activation.
-- boomstickskills
-- Hitting Grimoire equipment as a clean up. Should always be in a form of Light Arts and Dark Arts on Scholar
function precast(spell,abil)
	if spell.skill == 'Elemental Magic' then
		equip(sets.ElementalMagic)
		get_obi(spell)
	elseif (spell.type == "WhiteMagic" and (buffactive["Light Arts"] or buffactive["Addendum: White"])) or
        (spell.type == "BlackMagic" and (buffactive["Dark Arts"] or buffactive["Addendum: Black"])) then
			equip(sets.FastCastGrimoire)
			--send_command('@input /echo yeah we hit this shit in precast.')	
	end 
	
	if spell.name == 'Immanence' then
		equip(sets.Immanence)
	elseif spell.name == 'Penury'  or spell.name == 'Parsimony' then
		equip({legs="Arbatel pants +3"})
	elseif spell.name == 'Celerity' or spell.name == 'Alacrity' or spell.name == 'Stormsurge' then
		equip({feet="Pedagogy loafers +3"})
	elseif spell.name == 'Stun' then
		equip(sets.MagicAccuracy)
	elseif spell.name == "Hexa Strike" or spell.name == "Savage Blade" then
		equip(sets.WSD)
	elseif spell.name == "Rock Crusher" then
		equip(sets.WSD)
	elseif spell.name == "Earth Crusher" then
		equip(sets.WSD)
	elseif spell.name == "Starburst" then
		equip(sets.WSD)
	elseif spell.name == "Sunburst" then
		equip(sets.WSD)
	elseif spell.name == "Shell Crusher" then
		equip(sets.WSD)
	elseif spell.name == "Full Swing" then
		equip(sets.WSD)
	elseif spell.name == "Spirit Taker" then
		equip(sets.WSD)
	elseif spell.name == "Retribution" then
		equip(sets.WSD)
	elseif spell.name == "Omniscience" then
		equip(sets.WSD)
	elseif spell.name == "Cataclysm" then
		equip(sets.Cataclysm)
	elseif spell.name == "Myrkr" then
		equip(sets.Myrkr)
	elseif spell.name == "Shattersoul" then
		equip(sets.WSD)
	end
	
end

function midcast(spell)

	if spell.name == 'Klimaform' then
		equip(sets.Klimaform)
	end
	
	if string.find(spell.english,'storm') then 
		equip(sets.Duration)
	end
	if spell.name == 'Adloquium' or spell.name == 'Embrava' or string.find(spell.english,'Animus') then 
		equip(sets.Duration)
	end

	if string.find(spell.english,'Aspir') or string.find(spell.english,'Drain') then 
		equip(sets.DrainAspir)
	end

	if string.find(spell.english,'Cur') then 
		equip(sets.Cure)
	end
	if spell.name == 'Stoneskin' then
		equip(sets.Stoneskin)
	end
	if string.find(spell.english,'Regen') then 
		equip(sets.Regen)
	end
	if spell.name == 'Aquaveil' then
		equip(sets.Aquaveil)
	end
	if spell.name == 'Cursna' then
		equip(sets.Cursna)
	end
	if spell.name == "Dispel" then
		equip(sets.Enfeebling)
	end
	
	
	if string.find(spell.english,'Kaustra') then
		send_command('@input /echo Bonus in midcast is: '..bonus..'%')	
		equip(sets.Kaustra)
		if bonus > 0 then
			equip({waist = "Hachirin-no-obi"})
		end
	elseif string.find(spell.english,'helix') then 
		send_command('@input /echo Bonus in midcast is: '..bonus..'%')
		equip(sets.Helix)
		if bonus > 0 then
			equip({waist = "Hachirin-no-obi"})
		end
	elseif spell.skill == 'Elemental Magic' then
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
	
	if buffactive["Rapture"] or buffactive["Ebullience"] then
	--send_command('@input /echo Fuck yeah Bonnet is equipped!')
		equip({head="Arbatel Bonnet +3"})
	end
	if buffactive["Perpetuance"] then
	--send_command('@input /echo Fuck yeah Bracers are equipped!')
		equip({hands="Arbatel bracers +3"})
	end
	
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
--F11 --> BURST Mode
--F12 --> Occult Acumen
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
	elseif command == 'C11' then
		if Burst == 'Disabled' then 
			Burst = 'Enabled'
		else
			Burst = 'Disabled'
		end
		send_command('@input /echo <----- Burst Mode changed to '..Burst..' ----->')
	end	 
--Consider Occult Acumen in the future here	
end


-- Send tell to self if I died --
windower.register_event('status change', function()
	if player.status == 'Dead' then
		send_command('@input /tell <me> Wake up Voreus!')
	end
end)

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
