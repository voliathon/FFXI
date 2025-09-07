-- https://www.bg-wiki.com/bg/Community_Thief_Guide#TP_Sets
-- Will eventually get more and more gear that is mentioned from the community Thief Site...

function ThiefCapes()
	ThiefCapes = {}
	ThiefCapes.TP = { name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10','Damage taken-5%'}}
	ThiefCapes.STRWS = { name="Toutatis's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%'}}
end


function get_sets()
	--Instantiate ThiefCapes fn()
	ThiefCapes()

	-- Set macro book/set --
    send_command('input /macro book 14;wait .1;input /macro set 1') -- set macro book/set here	
	
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
	
    sets.JA['Sneak Attack'] = {hands="Skulker's armlets +2"}
    sets.JA['Trick Attack'] = {hands="Pillager's Armlets +2"}
	sets.JA["Assassin's Charge"] = {feet="Plunderer's Poulaines +1"}
	sets.JA['Feint'] = {legs="Plunderer's Culottes"}
	sets.JA['Conspirator'] = {body="Skulker's vest +3"}
	sets.JA['Steal'] = { hands="Pillager's Armlets +2", legs="Pillager's Culottes +2", feet="Pillager's Poulaines +2"}
	sets.JA['Mug'] = {head="Plunderer's Bonnet"}
	sets.JA['Despoil'] = {feet="Skulker's Poulaines +2"}
	sets.JA['Accomplice'] = {head="Skulk. bonnet +3",}
	sets.JA['Flee'] = {feet="Pillager's Poulaines +2"}
	sets.JA['Hide'] = {body="Pillager's Vest +2"}
	sets.JA['Perfect Dodge'] = {hands="Plun. Armlets +4"}	
	
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
	
	-- Engaged Sets Toggle--
    sets.engaged = {}
    sets.engaged.index = {"TreasureHunter","TP","Accuracy","Tank","Movement"}
	engaged_ind = 1

    sets.engaged.TreasureHunter = {
		ammo="Yetshila +1",
		head="Gleti's Mask",
		body="Volte Jupon",
		hands="Plun. Armlets +4",
		legs="Gleti's Breeches",
		feet="Skulk. Poulaines +3",
		neck="Anu Torque",
		waist="Chaac Belt",
		left_ear="Sherida Earring",
		right_ear="Skulker's Earring +1",
		left_ring="Regal Ring",
		right_ring="Defending Ring",
		back=ThiefCapes.TP
	}
	
	sets.engaged.TP = {
		ammo={ name="Coiste Bodhar", augments={'Path: A',}},
		head="Skulker's Bonnet +3",
		body="Malignance Tabard",
		hands="Plun. Armlets +4",
		legs="Malignance Tights",
		feet="Malignance boots",
		neck="Anu torque",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Sherida Earring",
		right_ear="Skulker's Earring +1",
		left_ring="Regal Ring",
		right_ring="Ilabrat Ring",
		back=ThiefCapes.TP
	}
	
	sets.engaged.Accuracy =  {
		ammo={ name="Coiste Bodhar", augments={'Path: A',}},
		head="Skulker's Bonnet +3",
		body="Malignance Tabard",
		hands="Gleti's Gauntlets",
		legs="Malignance Tights",
		feet="Skulk. Poulaines +3",
		neck="Null loop",
		waist="Eschan Stone",
		left_ear="Digni. Earring",
		right_ear="Skulker's Earring +1",
		left_ring="Regal Ring",
		right_ring="Ilabrat Ring",
		back=ThiefCapes.TP
	}

	 sets.engaged.Tank = {
		ammo={ name="Coiste Bodhar", augments={'Path: A',}},
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Gleti's Gauntlets",
		legs="Malignance Tights",
		feet="Skulk. Poulaines +3",
		neck="Null loop",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Digni. Earring",
		right_ear="Skulker's Earring +1",
		left_ring="Regal Ring",
		right_ring="Defending Ring",
		back=ThiefCapes.TP
	 }	

	 sets.engaged.Movement = set_combine(sets.engaged.Tank, {
		ammo={ name="Coiste Bodhar", augments={'Path: A',}},
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Gleti's Gauntlets",
		legs="Malignance Tights",
		feet="Skulk. Poulaines +3",
		neck="Null loop",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Digni. Earring",
		right_ear="Skulker's Earring +1",
		left_ring="Shneddick Ring",
		right_ring="Defending Ring",
		back=ThiefCapes.TP
	 })	


	-- Idle Sets Toggle-- Alt+F10 or Ctrl+F10
	sets.idle = {}
	sets.idle.index = {'PDTMovement', 'Craft'}
	idle_ind = 1      
	
	sets.idle.PDTMovement = set_combine(sets.engaged.Movement,  {})

	sets.idle.Craft = set_combine(sets.engaged.Movement, {
		sub="Bv. escutcheon",
		hands="Tanner's gloves",
		neck="Tanner's torque",
		left_ring="Artificer's Ring"
	})
	
	
 -- Weapon Skill Sets
 -- Generic Sets
    sets.WSD = {	
		ammo="Oshasha's Treatise",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body="Skulker's vest +3",
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Rep. Plat. Medal",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		right_ear="Sherida Earring",
		left_ring="Regal Ring",
		right_ring="Cornelia's Ring",
		back=ThiefCapes.STRWS
	}
	
	-- Stat Modifier: 	50% DEX  CritHit Modifier
	sets.Evisceration = {
		ammo={ name="Coiste Bodhar", augments={'Path: A',}},
		head="Gleti's Mask",
		body="Abnoba Kaftan",
		hands="Gleti's Gauntlets",
		legs="Gleti's Breeches",
		feet="Gleti's Boots",
		neck="Anu Torque",
		waist="Chaac Belt",
		left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		right_ear="Sherida Earring",
		left_ring="Regal Ring",
		right_ring="Defending Ring",
		back=ThiefCapes.STRWS
	}
	
    sets.Aeolian = {	
		ammo="Pemphredo Tathlum",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Sibyl Scarf",
		waist="Orpheus's Sash",
		left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		right_ear="Friomisi Earring",
		left_ring="Cornelia's Ring",
		right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		back=ThiefCapes.STRWS
	}
	
	
 -- Weapon Toggle--
  sets.weapon = {}
  sets.weapon.index = {'GandringGleti', 'GandringTauret', 'NaeglingGleti', 'TauretGleti', 'AeneasGleti'}
  weapon_ind = 1     
 
 sets.weapon.GandringGleti = {
	main="Gandring",
	sub="Gleti's knife"
 } 
 sets.weapon.GandringTauret = {
	main="Gandring",
	sub="Tauret"
 }    
 sets.weapon.NaeglingGleti = {
	main="Naegling",
	sub="Gleti's knife"
 } 
  sets.weapon.TauretGleti = {
	main="Tauret",
	sub="Gleti's knife"
 } 
 sets.weapon.AeneasGleti = {
	main="Aeneas",
	sub="Gleti's Knife"
 } 
end	
	

-- Precast Function --
function precast(spell,action)
    -- Dancer Abilities --
    if string.find(spell.english, 'Waltz') then
	    equip(sets.JA.Waltz)
		
	-- Thief Abilities --
	elseif spell.type == 'JobAbility' then
	        equip(sets.JA[spell.english])
			
	-- Weapon Skill --
	-- 50% DEX Modifier Evisceration / Crits per hits
	elseif spell.name =="Evisceration" then
		equip(sets.Evisceration)
	
	-- 80% DEX Modifier Rudra's Storm <--This is a quad hit to Crit Hit DMG+
	-- 60% DEX Modifier Mandalic Stab
    elseif spell.name == "Rudra's Storm" or spell.name == "Mandalic Stab" then
		equip(sets.WSD)

	-- DEX 40% INT 40% Modifier Aeolian Edge | Also pack on all of that MAB+MACC shit
	elseif spell.name == "Aeolian Edge" then
		equip(sets.Aeolian)

	--elseif spell.action_type == 'Ranged Attack' then
	--    equip(sets.preshot.RA)

	-- Ninja Spells --
	elseif spell.skill == 'Ninjutsu' then
	    equip(sets.Fastcast)
	end	
end	


-- Midcast Functions --
function midcast(spell,action)
		
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
		send_command('@input /tell <me> Wakies Voreus! You died.')
	end
end)