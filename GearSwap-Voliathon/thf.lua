-- https://www.bg-wiki.com/bg/Community_Thief_Guide#TP_Sets
-- Will eventually get more and more gear that is mentioned from the community Thief Site...

function ThiefCapes()
	ThiefCapes = {}
	ThiefCapes.TP = { name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Damage taken-5%',}}
	ThiefCapes.DEXWS = { name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%'}}
end


function get_sets()
	--Instantiate ThiefCapes fn()
	ThiefCapes()
	
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

	-- Job Abilities Sets --
    sets.JA = {}
    sets.JA.Waltz = {head="Mummu Bonnet +2", legs="Dashing subligar"}
    sets.JA.SneakAttack = {hands="Skulker's armlets +2"}
    sets.JA.TrickAttack = {hands="Pillager's Armlets +2"}
	sets.JA.AssassinsCharge = {feet="Plunderer's Poulaines +1"}
	sets.JA.Feint = {legs="Plunderer's Culottes +1"}
	sets.JA.Conspirator = {body="Skulker's Vest +3"}
	sets.JA.Steal = { hands="Pillager's Armlets +2", legs="Pillager's Culottes +2", feet="Pillager's Poulaines +2"}
	sets.JA.Mug = {head="Plunderer's Bonnet +1"}
	sets.JA.Despoil = {feet="Skulk. Poulaines +3"}
	sets.JA.Accomplice = {head="Skulker's Bonnet +3"}
	sets.JA.Flee = {feet="Pillager's Poulaines +2"}
	sets.JA.Hide = {body="Pillager's Vest +4"}
	sets.JA.PerfectDodge = {hands="Plunderer's Armlets +3"}

	sets.Fastcast = {
		ammo="Staunch Tathlum",
		head={ name="Herculean Helm", augments={'AGI+6','CHR+1','Weapon skill damage +7%',}},
		body={ name="Taeon Tabard", augments={'Evasion+20','Spell interruption rate down -9%','Phalanx +3',}},
		hands={ name="Taeon Gloves", augments={'Mag. Evasion+20','Spell interruption rate down -10%','Phalanx +3',}},
		legs={ name="Taeon Tights", augments={'DEF+16','Spell interruption rate down -10%','Phalanx +3',}},
		feet={ name="Taeon Boots", augments={'DEF+20','Spell interruption rate down -9%','Phalanx +3',}},
		neck="Voltsurge Torque",
		waist="Kasiri Belt",
		left_ear="Loquac. Earring",
		right_ear="Halasz Earring",
		left_ring="Lebeche Ring",
		right_ring="Defending Ring",
		back="Relucent Cape"	
	}		
	
	sets.Phalanx = {
		ammo="Staunch Tathlum +1",
		head="Malignance Chapeau",
		body={ name="Herculean Vest", augments={'"Dbl.Atk."+2','STR+4','Phalanx +5','Accuracy+15 Attack+15','Mag. Acc.+12 "Mag.Atk.Bns."+12',}},
		hands={ name="Herculean Gloves", augments={'"Drain" and "Aspir" potency +4','Phys. dmg. taken -2%','Phalanx +5','Accuracy+19 Attack+19','Mag. Acc.+14 "Mag.Atk.Bns."+14',}},
		legs={ name="Herculean Trousers", augments={'Pet: STR+3','AGI+2','Phalanx +5','Accuracy+10 Attack+10',}},
		feet={ name="Herculean Boots", augments={'Pet: "Mag.Atk.Bns."+4','Pet: Attack+3 Pet: Rng.Atk.+3','Phalanx +4','Mag. Acc.+7 "Mag.Atk.Bns."+7',}},
		neck="Voltsurge Torque",
		waist="Flume Belt +1",
		left_ear="Loquac. Earring",
		right_ear="Magnetic Earring",
		left_ring={name="Stikini Ring +1",bag="Wardrobe 4"},
		right_ring={name="Stikini Ring +1",bag="Wardrobe 5"},
		back="Solemnity Cape"	
	}

	-- Engaged Sets Toggle--
    sets.engaged = {}
    sets.engaged.index = {"TreasureHunter","TP","Accuracy","Tank","Movement"}
	engaged_ind = 1

    sets.engaged.TreasureHunter = {
		ammo="Yetshila +1",
		head={ name="Herculean Helm", augments={'Attack+19','STR+5','"Treasure Hunter"+2','Accuracy+20 Attack+20',}},
		body="Volte Jupon",
		hands="Plun. Armlets +4",
		legs="Malignance Tights",
		feet="Skulk. Poulaines +3",
		neck="Asn. Gorget +2",
		waist="Chaac Belt",
		left_ear="Suppanomimi",
		right_ear={ name="Skulker's Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+8','Mag. Acc.+8',}},
		left_ring={name="Chirich Ring +1", bag="Wardrobe 4"},
		right_ring={name="Chirich Ring +1", bag="Wardrobe 5"},
		back=ThiefCapes.TP
	}
	
	sets.engaged.TP = {
		ammo="Coiste Bodhar",
		head="Skulker's bonnet +3",
		body="Pillager's Vest +4",
		hands="Plun. Armlets +4",
		legs="Malignance Tights",
		feet="Skulk. Poulaines +3",
		neck="Asn. Gorget +2",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Suppanomimi",
		right_ear="Sherida Earring",
		left_ring={name="Chirich Ring +1", bag="Wardrobe 4"},
		right_ring={name="Chirich Ring +1", bag="Wardrobe 5"},
		back=ThiefCapes.TP
	}
	
	sets.engaged.Accuracy =  {
		ammo={ name="Coiste Bodhar", augments={'Path: A',}},
		head="Skulker's bonnet +3",
		body="Skulker's Vest +3",
		hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
		legs="Malignance Tights",
		feet="Skulk. Poulaines +3",
		neck="Null loop",
		waist="Null belt",
		left_ear="Digni. Earring",
		right_ear={ name="Skulker's Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+8','Mag. Acc.+8',}},
		left_ring={name="Chirich Ring +1", bag="Wardrobe 4"},
		right_ring={name="Chirich Ring +1", bag="Wardrobe 5"},
		back=ThiefCapes.TP
	}

	 sets.engaged.Tank = {
		ammo="Amar cluster",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Skulk. Poulaines +3",
		neck="Null loop",
		waist="Null belt",
		left_ear="Infused Earring",
		right_ear={ name="Skulker's Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+8','Mag. Acc.+8',}},
		left_ring="Fortified ring",
		right_ring="Defending Ring",
		back=ThiefCapes.TP
	 }	

	 sets.engaged.Movement = {
		ammo={ name="Coiste Bodhar", augments={'Path: A',}},
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Asn. Gorget +2",
		waist="Null belt",
		left_ear="Sherida Earring",
		right_ear={ name="Skulker's Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+8','Mag. Acc.+8',}},
		left_ring="Shneddick ring",
		right_ring="Defending Ring",
		back=ThiefCapes.TP
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
	 	 
	 
 -- Weapon Skill Sets
 -- Generic Sets
    sets.WSD = {	
		ammo="Yetshila +1",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body="Skulker's Vest +3",
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		right_ear="Ishvara Earring",
		left_ring="Epaminondas's Ring",
		right_ring="Mummu Ring",
		back=ThiefCapes.DEXWS
	}
	
	-- Stat Modifier: 	50% DEX  CritHit Modifier
	sets.Evisceration = {
		ammo="Yetshila +1",
		head={ name="Blistering Sallet +1", augments={'Path: A',}},
		body="Pill. Vest +4",
		hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
		legs="Malignance Tights",
		feet="Skulk. Poulaines +3",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Sherida Earring",
		right_ear={ name="Skulker's Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+8','Mag. Acc.+8',}},
		left_ring="Epaminondas's Ring",
		right_ring="Mummu Ring",
		back=ThiefCapes.DEXWS
	}
	
    sets.Aeolian = {	
		ammo="Pemphredo Tathlum",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Null loop",
		waist="Orpheus's sash",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		right_ear="Friomisi Earring",
		left_ring="Epaminondas's Ring",
		right_ring="Fenrir Ring +1",
		back=ThiefCapes.DEXWS
	}
	
	-- Weapon Toggle--
	sets.weapon = {}
	sets.weapon.index = {'NaeglingCrepuscularKnife', 'TauretSandung', 'TauretCrepuscularKnife', 'GandringSandung', 'GandringTauret'}
	weapon_ind = 1     
  
	sets.weapon.NaeglingCrepuscularKnife = {
		main="Naegling",
		sub="Crepuscular Knife"
	} 
	sets.weapon.TauretSandung = {
		main="Tauret",
		sub="Sandung"
	} 
	sets.weapon.TauretCrepuscularKnife = {
		main="Tauret",
		sub="Crepuscular Knife"
	} 

	sets.weapon.GandringSandung = {
		main="Gandring",
		sub="Sandung" 
	}

	sets.weapon.GandringTauret = {
		main="Gandring",
		sub="Tauret" 
	} 
end	
	

-- Precast Function --
function precast(spell,action)
	-- Thief Abilities --
	if spell.type == 'JobAbility' then
		if spell.name == 'Sneak Attack' then
			equip(sets.JA.SneakAttack)
		elseif spell.name == 'Trick Attack' then
			equip(sets.JA.TrickAttack)
		elseif spell.name == "Assassin's Charge" then
			equip(sets.JA.AssassinsCharge)
		elseif spell.name == 'Feint' then
			equip(sets.JA.Feint)
		elseif spell.name == 'Conspirator' then
			equip(sets.JA.Conspirator)
		elseif spell.name == 'Steal' then
			equip(sets.JA.Steal)
		elseif spell.name == 'Mug' then
			equip(sets.JA.Mug)
		elseif spell.name == 'Despoil' then
			equip(sets.JA.Despoil)
		elseif spell.name == 'Accomplice' then
			equip(sets.JA.Accomplice)
		elseif spell.name == 'Flee' then
			equip(sets.JA.Flee)
		elseif spell.name == 'Hide' then
			equip(sets.JA.Hide)
		elseif spell.name == 'Perfect Dodge' then
			equip(sets.JA.PerfectDodge)
		elseif string.find(spell.english, 'Waltz') then
			equip(sets.JA.Waltz)
		end
	end
			
	--Thief Weapon Skills
    if spell.type == 'WeaponSkill' then	
		if spell.name =="Evisceration" then
			equip(sets.Evisceration)
		elseif spell.name == "Rudra's Storm" or spell.name == "Mandalic Stab" then
			equip(sets.WSD)
		elseif spell.name == "Aeolian Edge" then
			equip(sets.Aeolian)
		else
			equip(sets.WSD)
		end
	end
	
end	


-- Midcast Functions --
function midcast(spell,action)
	if spell.name == "Phalanx" then	
		equip(sets.Phalanx)
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
