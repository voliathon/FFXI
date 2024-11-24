function RedMageCapes()
	RedMageCapes = {}
	RedMageCapes.TP = {name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}}
	RedMageCapes.FastCast = {name="Sucellos's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10'}}
	RedMageCapes.DualWield = {name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dual Wield"+10'}}
	RedMageCapes.STRWS = {name="Sucellos's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%'}}
end

function get_sets()
	--Instantiate RedMageCapes
	RedMageCapes()

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
    sets.Composure = {head="Lethargy Chappel +3",body="Lethargy sayon +3",hands="Lethargy gantherots +3",legs="Lethargy Fuseau +3",feet="Lethargy Houseaux +3"}
	sets.Saboteur = {hands="Lethargy gantherots +3"}
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
		back=RedMageCapes.FastCast
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
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back=RedMageCapes.FastCast
	}
	
	-- Stoneskin
	sets.Stoneskin = set_combine(sets.FastCast,  {
		legs="Querkening Brais"
	})
	
	sets.TP = {
		head="Malignance Chapeau",
		body="Malignance tabard",
		hands="Lethargy gantherots +3",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Anu Torque",
		waist="Sailfi belt +1",
		left_ear="Sherida Earring",
		right_ear={ name="Leth. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+14','Mag. Acc.+14','"Dbl.Atk."+5'}},
		left_ring="Ilabrat Ring",
		right_ring="Hetairoi Ring",
		back=RedMageCapes.TP,
		ammo="Ginsen"
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
		back="Fi follet cape +1"
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
		head="Ea Hat +1",
		body="Ea Houppelande",
		hands="Leth. Ganth. +3",
		legs="Leth. Fuseau +3",
		feet="Leth. Houseaux +3",
		neck="Mizu. Kubikazari",
		waist="Eschan Stone",
		left_ear="Malignance Earring",
		right_ear="Regal Earring",
		left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		right_ring="Freke Ring",
		back=RedMageCapes.FastCast
	}
	
    sets.DarkMagic = {

	}

    sets.Enfeebling = set_combine(sets.FastCast,  {
		ammo="Regal Gem",
		head="Vitiation chapeau +3",
		body="Lethargy sayon +3",
		hands="Lethargy gantherots +3",
		legs={ name="Chironic Hose", augments={'Attack+14','Mag. Acc.+13','"Treasure Hunter"+1','Mag. Acc.+18 "Mag.Atk.Bns."+18'}},
		feet="Vitiation Boots +3",
		neck={ name="Dls. Torque +2", augments={'Path: A'}},
		waist="Eschan Stone",
		left_ear="Snotra Earring",
		right_ear="Vor Earring",
		left_ring="Kishar Ring",
		right_ring="Stikini Ring +1",
		back=RedMageCapes.FastCast
	})


	-- Impact whenever the fuck I get the damn cloak
    sets.Impact = {    
      body="Twilight Cloak"
	}

	sets.Accuracy = {
		head="Leth. Chappel +3",
		body="Lethargy Sayon +3",
		hands="Leth. Ganth. +3",
		legs="Leth. Fuseau +2",
		feet="Leth. Houseaux +3",
		neck="Sanctity Necklace",
		waist="Kentarch Belt +1",
		left_ear="Sherida Earring",
		right_ear={ name="Leth. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+14','Mag. Acc.+14','"Dbl.Atk."+5',}},
		left_ring="Ilabrat Ring",
		right_ring="Rajas Ring",
		back=RedMageCapes.TP
	}

	-- PDT Set
    sets.PDT = {
		head="Lethargy Chappel +3",
		body="Lethargy sayon +3",
		hands="Lethargy gantherots +3",
		legs="Nyame flanchard",
		feet="Nyame sollerets",
		neck="Loricate Torque +1",
		waist="Slipor Sash",
		left_ear="Genmei Earring",
		right_ear="Ethereal Earring",
		left_ring="Gelatinous Ring +1",
		right_ring="Defending Ring",
		back=RedMageCapes.TP		
	}

	-- Magic Defense and Magic Defense Set
    sets.MDT = {
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
		right_ring="Defending Ring",
		back=RedMageCapes.TP		
	}
	
    sets.Movement = {		
		ammo="Homiliary",
		head="Leth. Chappel +3",
		body="Lethargy Sayon +3",
		hands="Leth. Ganth. +3",
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Sanctity Necklace",
		waist="Sailfi belt +1",
		left_ear="Sherida Earring",
		right_ear={ name="Leth. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+14','Mag. Acc.+14','"Dbl.Atk."+5',}},
		left_ring="Shneddick Ring",
		right_ring="Stikini Ring +1",
		back=RedMageCapes.TP		
	}

	sets.RefreshSelf = set_combine(sets.PDT,  {
		body="Lethargy sayon +3",
		ammo="Homiliary",
		head="Vitiation Chapeau +3",
	    feet={ name="Merlinic Crackows", augments={'INT+1','Pet: "Mag.Atk.Bns."+28','"Refresh"+2','Accuracy+8 Attack+8',}},
		waist="Fucho-no-obi",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1"
	})

    
	sets.Refresh = set_combine(sets.Enhancing,  {
		body="Lethargy sayon +3",
		legs="Lethargy Fuseau +3",
		ammo="Homiliary",
		head="Vitiation Chapeau +3",
		waist="Fucho-no-obi",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1"
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
		back=RedMageCapes.DualWield	
	})
    ------------------------------------------------------------------------------------------------------------------
    -- Weaponskill sets
    ------------------------------------------------------------------------------------------------------------------
	 
	 sets.SavageBlade = {
		head="Nyame Helm",
		body="Nyame mail",
		hands="Nyame gauntlets",
		legs="Nyame flanchard",
		feet="Leth. Houseaux +3",
		neck="Rep. Plat. Medal",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		right_ear="Sherida Earring",
		left_ring="Cornelia's Ring",
		right_ring="Petrov Ring",
		back=RedMageCapes.STRWS,
		ammo="Oshasha's Treatise"
	 }
	 
	 sets.SeraphBlade = {
		head="Lethargy Chappel +3",
		body="Lethargy Sayon +3",
		hands="Jhakri Cuffs +2",
		legs="Lethargy Fuseau +3",
		feet="Lethargy Houseaux +3",
		neck="Sanctity Necklace",
		waist="Orpheus's Sash",
		left_ear="Regal Earring",
		right_ear="Malignance Earring",
		left_ring="Freke Ring",
		right_ring="Cornelia's Ring",
		back=RedMageCapes.STRWS,
		ammo="Oshasha's Treatise"
	 }
	 
	 sets.SanguineBlade = {
		head="Lethargy Chappel +3",
		body="Lethargy Sayon +3",
		hands="Jhakri Cuffs +2",
		legs="Lethargy Fuseau +3",
		feet="Lethargy Houseaux +3",
		neck="Sanctity Necklace",
		waist="Orpheus's Sash",
		left_ear="Regal Earring",
		right_ear="Malignance Earring",
		left_ring="Archon Ring",
		right_ring="Cornelia's Ring",
		back=RedMageCapes.STRWS,		
		ammo="Oshasha's Treatise"	 
	 }
	 

	-- Engaged Sets Toggle--
	sets.engaged = {}
	sets.engaged.index = {'TP', 'Movement', 'TakingLessPhysicalDamage', 'TakingLessMagicDamage', 'Accuracy', 'RefreshSelf','EnspellActive'}
	engaged_ind = 1  	 
	 
	sets.engaged.TP = set_combine(sets.TP, {}) 
	sets.engaged.Movement = set_combine(sets.Movement, {})
	sets.engaged.TakingLessPhysicalDamage = set_combine(sets.PDT, {})
	sets.engaged.TakingLessMagicDamage = set_combine(sets.MDT, {})
	sets.engaged.Accuracy = set_combine(sets.Accuracy, {})
	sets.engaged.RefreshSelf = set_combine(sets.RefreshSelf, {})
	sets.engaged.EnspellActive = set_combine(sets.EnspellActive, {})
	 
end

 -- Weapon Toggle--
 sets.weapon = {}
 sets.weapon.index = {'Nuke', 'HiEnspell', 'LowEnspell', 'Refresh', 'NaeglingShield', 'NaeglingTauret'}
 weapon_ind = 1     
  
 sets.weapon.Nuke = {
	main="Marin staff +1",
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
 sets.weapon.NaeglingTauret = {
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
		equip(sets.ElementalMagic)
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

function enspellCheck()
	if buffactive['Enthunder'] or buffactive['Enstone'] or buffactive['Enaero'] or buffactive['Enblizzard'] or buffactive['Enfire'] or buffactive['Enwater'] or buffactive['Enthunder II'] or buffactive['Enstone II'] or buffactive['Enaero II'] or buffactive['Enblizzard II'] or buffactive['Enfire II'] or buffactive['Enwater II'] then 
		equip({waist="Orpheus's sash"})
		--send_command('@input /echo O-Sash equipped')
	end
end
