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
    sets.Chainspell = {body="Vitiation tabard +1"}
    sets.Stymie = {}
    sets.Spontaneity = {}
    sets.Composure = {head="Lethargy chappel +2",body="Lethargy sayon +3",hands="Lethargy gantherots +2",legs="Lethargy fuseau +2",feet="Lethargy Houseaux +3"}
	sets.Saboteur = {hands="Lethargy gantherots +2"}
	sets.Dispel = {neck="Duelist's torque +2"}


    -- Fast Cast for Red Mage --
    sets.FastCast = {
		ammo="Regal Gem",
		head="Atrophy Chapeau +3",
		body="Vitiation tabard +1",
		hands="Leyline Gloves",
		legs="Aya. Cosciales +2",
		feet="Malignance Boots",
		neck="Incanter's Torque",
		waist="Embla Sash",
		left_ear="Snotra Earring",
		right_ear="Lethargy Earring +1",
		left_ring="Kishar Ring",
		right_ring="Freke Ring",
		back={ name="Sucellos's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10'}}
	}


	-- Enhancing Spells \\Generalized//
    sets.SelfEnhancing = {
		ammo="Pemphredo Tathlum",
		head={ name="Telchine Cap", augments={'Enh. Mag. eff. dur. +9'}},
		body={ name="Telchine Chas.", augments={'Enh. Mag. eff. dur. +10'}},
		hands="Atrophy Gloves +3",
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
	
	sets.Enhancing = {
		main="Crocea Mors",
		ammo="Pemphredo Tathlum",
		head="Lethargy chappel +2",
		sub="Ammurapi Shield",
		body="Lethargy sayon +3",
		hands="Lethargy gantherots +2",
		legs="Lethargy fuseau +2",
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
		head="Vitiation chapeau +1",
		body="Lethargy sayon +3",
		hands="Lethargy gantherots +2",
		legs={ name="Chironic Hose", augments={'Attack+14','Mag. Acc.+13','"Treasure Hunter"+1','Mag. Acc.+18 "Mag.Atk.Bns."+18'}},
		feet="Vitiation Boots +1",
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


    -- /heal the damn MP/HP up.
    sets.heal = {

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

    
	sets.Refresh = set_combine(sets.PDT,  {
		body="Lethargy sayon +3",
		waist="Fucho-no-obi"
	})
	
	
    ------------------------------------------------------------------------------------------------------------------
    -- Weaponskill sets
    ------------------------------------------------------------------------------------------------------------------
	 
	 sets.SavageBlade = {
		range="Ullr",
		head="Nyame helm",
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
--EN Spells
--Boost Spells
--Phalanx

	if spell.name == "Dispel" then
		equip(sets.Dispel)
	elseif spell.name == "Composure" then
		--Composure Lookups
		equip(sets.Composure)
	elseif spell.skill == 'Enhancing Magic' then
		--Enhancing Magic Check	
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
	elseif spell.name == "Sanguine Blade" then
		equip(sets.SanguineBlade)
	elseif spell.name == "Seraph Blade" or spell.name == "Shining Blade" then
		equip(sets.SeraphBlade)
	end


	-- Add logic for Waltz
	-- Add logic for Utsusemi
  
  
end

--We need to do some thinking and testing for this set...
function aftercast(spell)
	if string.find(spell.english,'Warp') then
		--do fuck all nothing
	else
		equip_current()
	end
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

