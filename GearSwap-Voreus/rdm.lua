function get_sets()
	-- Set macro book/set --
    send_command('input /macro book 1;wait .1;input /macro set 1')
	
	-- Binds for modes
	-- Toggle Weapon F8 Key
	send_command('bind !f8 gs c C8') 
	send_command('bind ^f8 gs c Reverse Toggle Weapon')
	
	-- Toggle Engaged sets button, change if you want; currently ALT+F9 toggles forward, CTRL+F9 toggles backwards
    send_command('bind !f9 gs c C9')
	send_command('bind ^f9 gs c reverse Engaged set')
	
    -- Job Abilities for Red Mage --
    sets.Chainspell = {body="Vitiation tabard +3"}
    sets.Stymie = {}
    sets.Spontaneity = {}
    sets.Composure = {head="Lethargy chappel +2",body="Lethargy sayon +3",hands="Lethargy gantherots +2",legs="Lethargy fuseau +2",feet="Lethargy Houseaux +3"}
	sets.Saboteur = {hands="Lethargy gantherots +2"}
	sets.Dispel = {neck="Duelist's torque +2"}


    -- Fast Cast for Red Mage --
    sets.FastCast = {
		ammo="Impatiens",
		head="Atrophy Chapeau +3",
		body="Vitiation tabard +3",
		hands="Leyline Gloves",
		legs="Aya. Cosciales +2",
		feet="Nyame sollerets",
		neck="Incanter's Torque",
		waist="Embla Sash",
		left_ear="Loquacious Earring",
		right_ear="Lethargy Earring +1",
		left_ring="Kishar Ring",
		right_ring="Freke Ring",
		back={ name="Sucellos's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10'}}
	}


	-- Enhancing Spells \\Generalized//
    sets.Enhancing = {
		main="Crocea Mors",
		sub="Ammurapi Shield",
		ammo="Pemphredo Tathlum",
		head={ name="Telchine Cap", augments={'Enh. Mag. eff. dur. +9'}},
		body="Vitiation tabard +3",
		hands="Vitiation Gloves +3",
		legs="Atrophy Tights +3",
		feet="Lethargy Houseaux +3",
		neck={ name="Dls. Torque +2", augments={'Path: A'}},
		waist="Embla Sash",
		left_ear="Mimir Earring",
		right_ear="Lethargy Earring +1",
		left_ring="Stikini Ring",
		right_ring="Stikini Ring",
		back="Fi follet cape +1"
	}
	
	-- Stoneskin
	sets.Stoneskin = set_combine(sets.FastCast,  {

	})
	
	sets.TP = {
		range="Ullr",
		head="Malignance Chapeau",
		body="Lethargy Sayon +3",
		hands="Aya. Manopolas +2",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Anu Torque",
		waist="Orpheus's Sash",
		left_ear="Sherida Earring",
		right_ear={ name="Leth. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+14','Mag. Acc.+14','"Dbl.Atk."+5'}},
		left_ring="Ilabrat Ring",
		right_ring="Hetairoi Ring",
		back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dual Wield"+10'}}
	}
	

    sets.Cure = set_combine(sets.FastCast,  {
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
	})


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
		main={ name="Grioavolr", augments={'Magic burst dmg.+9%','INT+2','Mag. Acc.+25','"Mag.Atk.Bns."+22'}},
		sub="Enki Strap",
		ammo="Pemphredo Tathlum",
		head="Lethargy Chappel +2",
		body="Lethargy Sayon +3",
		hands="Lethargy Ganth. +2",
		legs="Lethargy Fuseau +2",
		feet="Lethargy Houseaux +3",
		neck={ name="Dls. Torque +2", augments={'Path: A'}},
		waist="Eschan Stone",
		left_ear="Friomisi Earring",
		right_ear="Malignance Earring",
		left_ring="Stikini Ring",
		right_ring="Freke Ring",
		back={ name="Sucellos's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10'}}
	}
	
    sets.DarkMagic = {

	}

    sets.Enfeebling = set_combine(sets.FastCast,  {
		ammo="Regal Gem",
		head="Vitiation chapeau +3",
		body="Lethargy sayon +3",
		hands="Lethargy gantherots +2",
		legs={ name="Chironic Hose", augments={'Attack+14','Mag. Acc.+13','"Treasure Hunter"+1','Mag. Acc.+18 "Mag.Atk.Bns."+18'}},
		feet="Vitiation Boots +3",
		neck={ name="Dls. Torque +2", augments={'Path: A'}},
		waist="Eschan Stone",
		left_ear="Snotra Earring",
		right_ear="Vor Earring",
		left_ring="Kishar Ring",
		right_ring="Stikini Ring",
		back={ name="Sucellos's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10'}}
	})


	-- Impact whenever the fuck I get the damn cloak
    sets.Impact = {    
      body="Twilight Cloak"
	}


	-- PDT Set
    sets.PDT = {
		ammo="Homiliary",
		head="Lethargy chappel +2",
		body="Lethargy sayon +3",
		hands="Lethargy gantherots +2",
		legs="Nyame flanchard",
		feet="Nyame sollerets",
		neck="Loricate Torque +1",
		waist="Slipor Sash",
		left_ear="Genmei Earring",
		right_ear="Ethereal Earring",
		left_ring="Gelatinous Ring +1",
		right_ring="Defending Ring"
	}

	-- Magic Defense and Magic Defense Set
    sets.MDT = {
		ammo="Homiliary",
		head="Nyame Helm",
		body="Nyame mail",
		hands="Nyame gauntlets",
		legs="Nyame flanchard",
		feet="Nyame sollerets",
		neck="Loricate Torque +1",
		waist="Slipor Sash",
		left_ear="Genmei Earring",
		right_ear="Ethereal Earring",
		left_ring="Gelatinous Ring +1",
		right_ring="Defending Ring"
	}

		
	-- When I gotta kite shite, I put on my Sandals and shit...
    sets.Kiting = {
		legs="Carmine cuisses +1"
	}

    
	sets.Refresh = set_combine(sets.Enhancing,  {
		body="Atrophy Tabard +3",
		legs="Lethargy Fuseau +2"
	})

	sets.Enspell = set_combine(sets.Enhancing,  {
		legs="Vitiation Tights +3"
	})	
	
    ------------------------------------------------------------------------------------------------------------------
    -- Weaponskill sets
    ------------------------------------------------------------------------------------------------------------------
	 
	 sets.SavageBlade = {
		range="Ullr",
		head="Vitiation chapeau +3",
		body="Ayanmo Corazza +2",
		hands="Atrophy Gloves +3",
		legs="Jhakri slops +2",
		feet="Lethargy Houseaux +3",
		neck="Combatant's Torque",
		waist={ name="Sailfi Belt +1", augments={'Path: A'}},
		left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250'}},
		right_ear="Sherida Earring",
		left_ring="Ilabrat Ring",
		right_ring="Hetairoi Ring",
		back={ name="Sucellos's Cape", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%'}}	 
	 }
	 
	 sets.SeraphBlade = {
		head="Lethargy Chappel +2",
		body="Lethargy Sayon +3",
		hands="Jhakri Cuffs +2",
		legs="Lethargy Fuseau +2",
		feet="Lethargy Houseaux +3",
		neck="Sanctity Necklace",
		waist="Orpheus's Sash",
		left_ear="Regal Earring",
		right_ear="Malignance Earring",
		left_ring="Freke Ring",
		right_ring="Stikini Ring",
		back={ name="Sucellos's Cape", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%'}}
	 }
	 
	 sets.SanguineBlade = {
		range="Ullr",
		head="Lethargy Chappel +2",
		body="Lethargy Sayon +3",
		hands="Jhakri Cuffs +2",
		legs="Lethargy Fuseau +2",
		feet="Lethargy Houseaux +3",
		neck="Sanctity Necklace",
		waist="Orpheus's Sash",
		left_ear="Regal Earring",
		right_ear="Malignance Earring",
		left_ring="Archon Ring",
		right_ring="Stikini Ring",
		back={ name="Sucellos's Cape", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%'}}	 
	 }
	 

	-- Engaged Sets Toggle--
	sets.engaged = {}
	sets.engaged.index = {'TP', 'Movement', 'TakingLessPhysicalDamage', 'TakingLessMagicDamage', 'Accuracy', 'Refresh'}
	engaged_ind = 1  	 
	 
	sets.engaged.TP = set_combine(sets.TP, {}) 
	sets.engaged.Movement = set_combine(sets.Kiting, {})
	sets.engaged.TakingLessPhysicalDamage = set_combine(sets.PDT, {})
	sets.engaged.TakingLessMagicDamage = set_combine(sets.MDT, {})
	sets.engaged.Accuracy = {}
	sets.engaged.Refresh = set_combine(sets.Refresh, {})
	 
end

 -- Weapon Toggle--
 sets.weapon = {}
 sets.weapon.index = {'Nuke', 'HiEnspell', 'LowEnspell', 'Refresh', 'NaeglingShield', 'NaeglingColada'}
 weapon_ind = 1     
  
 sets.weapon.Nuke = {
	main={ name="Grioavolr", augments={'Magic burst dmg.+9%','INT+2','Mag. Acc.+25','"Mag.Atk.Bns."+22'}},
	sub="Enki Strap"
 } 
 sets.weapon.HiEnspell = {
	main="Crocea Mors",
	sub="Daybreak"
 }  
 sets.weapon.LowEnspell = {
	main="Infiltrator",
	sub="Sacro Bulwark"
 }  
 sets.weapon.Refresh = {
	main="Bolelabunga",
	sub="Sacro Bulwark"
 }  
 sets.weapon.NaeglingShield = {
	main="Naegling",
	sub="Sacro Bulwark"
 }
 sets.weapon.NaeglingColada = {
	main="Naegling",
	sub="Tauret"
 }
 

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

	if spell.skill == 'Enhancing Magic' then
		if spell.name == 'Refresh' or spell.name == 'Refresh II' or spell.name == 'Refresh III' then
			equip(sets.Refresh)
		elseif spell.name == 'Stoneskin' then
			equip(sets.Stoneskin)
		elseif spell.name == 'Enfire' or spell.name == 'Enfire II' or spell.name == 'Enstone' or spell.name == 'Enstone II' or spell.name == 'Enblizzard' or spell.name == 'Enblizzard II' or spell.name == 'Enaero' or spell.name == 'Enaero II' or spell.name == 'Enthunder' or spell.name == 'Enthunder II' or spell.name == 'Enwater' or spell.name == 'Enwater II' then
			equip(sets.Enspell)
		else
			equip(sets.Enhancing)
		end
	end
	
	if spell.name == 'Cure' or spell.name == 'Cure II' or spell.name == 'Cure III' or 
	spell.name == 'Cure IV' or spell.name == 'Curaga' or spell.name == 'Curaga II' then 
		equip(sets.Cure)
	end


	if spell.name == 'Cursna' then
		equip(sets.Cursna)
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
	-- if spell.name == 'Gain-STR' or spell.name == 'Gain-DEX' or spell.name == 'Gain-VIT' or 
	-- spell.name == 'Gain-AGI' or spell.name == 'Gain-INT' or spell.name == 'Gain-MND' or spell.name == 'Gain-CHR' then
		-- equip(sets.Enhancing)
	-- end
	-- if spell.name == 'Temper' or spell.name == 'Temper II' then
		-- equip(sets.Enhancing)
	-- end
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

