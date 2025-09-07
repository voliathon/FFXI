  -- .--.  .---. .-. .-..----. .----..-. .-. .----.
 -- / {} \{_   / | { } || {}  }| {_  | { } |{ {__  
-- /  /\  \/    }| {_} || .-. \| {__ | {_} |.-._} }
-- `-'  `-'`---' `-----'`-' `-'`----'`-----'`----' 
          -- .---. .-. .-..-..----..----.          
         -- {_   _}| {_} || || {_  | {_            
           -- | |  | { } || || {__ | |             
           -- `-'  `-' `-'`-'`----'`-'             

function get_sets()
-- Set macro book/set --
    send_command('input /macro book 1;wait .1;input /macro set 1') -- set macro book/set here	
	
	-- Binds for modes
	-- Toggle Weapon sets | Ctrl F8 or Alt F8
	send_command('bind !f8 gs c C8') 
	send_command('bind ^f8 gs c reverse Weapon set')

	-- Toggle Engaged sets | Ctrl F9 or Alt F9
	send_command('bind !f9 gs c C9')
	send_command('bind ^f9 gs c reverse Engaged set')

	-- Toggle Idle sets | Ctrl F10 or Alt F10
	send_command('bind !f10 gs c C10') 
	send_command('bind ^f10 gs c reverse Idle set')

	-- Job Abilities Sets --
    sets.JA = {}
    sets.JA.Waltz = {head="Mummu Bonnet +2", legs="Dashing subligar"}
	
    sets.JA['Sneak Attack'] = {hands="Skulker's armlets +2"}
    sets.JA['Trick Attack'] = {hands="Pillager's Armlets +2"}
	sets.JA["Assassin's Charge"] = {feet="Plun. poulaines +4"}
	sets.JA['Feint'] = {legs="Plun. Culottes +4"}
	sets.JA['Conspirator'] = {body="Skulker's Vest +3"}
	sets.JA['Steal'] = { hands="Pillager's Armlets +2", legs="Pillager's Culottes +2", feet="Pillager's Poulaines +2"}
	sets.JA['Mug'] = {head="Plunderer's Bonnet +3"}
	sets.JA['Despoil'] = {feet="Skulk. Poulaines +3"}
	sets.JA['Accomplice'] = {head="Skulker's bonnet +3",}
	sets.JA['Flee'] = {feet="Pillager's Poulaines +2"}
	sets.JA['Hide'] = {body="Pillager's vest +4"}
	sets.JA['Perfect Dodge'] = {hands="Plun. Armlets +4"}

	sets.Fastcast = {
		ammo="Staunch Tathlum +1",
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
		back="Null shawl"	
	}

	-- Engaged Sets Toggle--
    sets.engaged = {}
    sets.engaged.index = {"TreasureHunter","TP","Accuracy","Tank","Evasion","Movement"}
	engaged_ind = 1

    sets.engaged.TreasureHunter = {
		ammo="Yetshila +1",
		head="Skulker's bonnet +3",
		body="Malignance Tabard",
		hands="Plun. Armlets +4",
		legs="Skulk. Culottes +3",
		feet="Skulk. Poulaines +3",
		neck="Anu Torque",
		waist="Null Belt",
		left_ear="Sherida Earring",
		right_ear="Odr Earring",
		left_ring="Epona's Ring",
		right_ring="Hetairoi Ring",
		back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10','Phys. dmg. taken-10%',}}
	}
	
	sets.engaged.TP = {
		ammo="Coiste Bodhar",
		head="Skulker's Bonnet +3",
		body="Pillager's vest +4",
		hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		legs="Malignance Tights",
		feet={ name="Plun. Poulaines +4", augments={'Enhances "Assassin\'s Charge" effect',}},
		neck={ name="Asn. Gorget +2", augments={'Path: A',}},
		waist="Windbuffet Belt +1",
		left_ear="Sherida Earring",
		right_ear="Telos Earring",
		left_ring="Chirich Ring +1",
		right_ring="Hetairoi Ring",
		back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10','Phys. dmg. taken-10%',}}
	}
	
	sets.engaged.Accuracy =  {
		ammo="Yamarang",
		head="Skulker's bonnet +3",
		body="Skulker's Vest +3",
		hands="Plun. Armlets +4",
		legs="Malignance Tights",
		feet="Skulk. Poulaines +3",
		neck="Assassin's gorget +2",
		waist="Null belt",
		left_ear="Odr Earring",
		right_ear="Telos Earring",
		left_ring={name="Chirich Ring +1", bag="Wardrobe 3"},
		right_ring={name="Chirich Ring +1", bag="Wardrobe 4"},
		back="Null shawl"
	}

	 sets.engaged.Tank = {
		ammo="Staunch Tathlum +1",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Skulk. Armlets +2",
		legs="Skulk. Culottes +3",
		feet="Skulk. Poulaines +3",
		neck="Null loop",
		waist="Null belt",
		left_ear="Infused Earring",
		right_ear="Eabani Earring",
		left_ring={name="Chirich Ring +1", bag="Wardrobe 3"},
		right_ring={name="Chirich Ring +1", bag="Wardrobe 4"},
		back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10','Phys. dmg. taken-10%',}}
	 }	
	
	sets.engaged.Evasion = {
		ammo="Yamarang",
		head="Skulker's bonnet +3",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Skulk. Poulaines +3",
		neck="Assassin's gorget +2",
		waist="Null belt",
		left_ear="Eabani Earring",
		right_ear="Infused Earring",
		left_ring="Defending Ring",
		right_ring="Fortified Ring",
		back="Null shawl"
	}	

	sets.engaged.Movement = set_combine(sets.engaged.Tank, {
		ammo="Staunch Tathlum +1",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Skulk. Armlets +2",
		legs="Skulk. Culottes +3",
		feet="Skulk. Poulaines +3",
		neck="Null loop",
		waist="Null belt",
		left_ear="Infused Earring",
		right_ear="Eabani Earring",
		left_ring="Shneddick ring",
		right_ring={name="Chirich Ring +1", bag="Wardrobe 4"},
		back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10','Phys. dmg. taken-10%',}}	
	})
  	

  -- Idle Sets Toggle-- Alt+F10 or Ctrl+F10
  sets.idle = {}
  sets.idle.index = {'PDTMovement', 'Craft', 'Fishing'}
  idle_ind = 1      
  sets.idle.PDTMovement = set_combine(sets.engaged.Movement,  {})
  
  sets.idle.Craft = set_combine(sets.engaged.Movement, {
	hands="Goldsmith's Cuffs",
	left_ring="Craftmaster's Ring",
	right_ring="Craftkeeper's ring",
	back="Shaper's Shawl"
  })

  sets.idle.Fishing = {
	hands="Fisherman's cuffs",
	left_ring="Shneddick Ring",
	right_ring="Duck ring",
	waist="Fisherman's ring",
	range="Ebisu Fishing rod"
  } 
  
	
    -- Weapon Skill Sets
    sets.WSD = {	
		ammo="Crepuscular pebble",
		head="Pillager's bonnet +4",
		body="Skulker's Vest +3",
		hands="Nyame Gauntlets",
		legs="Plun. Culottes +4",
		feet="Nyame sollerets",
		neck="Assassin's gorget +2",
		waist="Kentarch belt +1",
		left_ear="Sherida earring",
		right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250'}},
		left_ring="Ilabrat Ring",
		right_ring="Epaminondas's Ring",
		back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%',}}
	}
	
	sets.Evisceration = {
		ammo="Yetshila +1",
		head="Pillager's bonnet +4",
		body="Plun. Vest +4",
		hands="Gleti's gauntlets",
		legs="Gleti's breeches",
		feet={ name="Plun. Poulaines +4", augments={'Enhances "Assassin\'s Charge" effect',}},
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Odr earring",
		right_ear="Sherida Earring",
		left_ring="Ilabrat Ring",
		right_ring="Cacoethic ring +1",
		back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%',}}	
	}
	
    sets.Aeolian = {	
		ammo="Ghastly tathlum +1",
		head="Nyame Helm",
		body="Nyame mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame sollerets",
		neck="Baetyl Pendant",
		waist="Orpheus's Sash",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Friomisi Earring",
		left_ring="Epaminondas's Ring",
		right_ring="Dingir Ring",
		back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%',}}
	}
	
 -- Weapon Toggle--
  sets.weapon = {}
  sets.weapon.index = {'GandringCentovente', 'GandringGleti', 'GandringCrepuscularKnife', 'GandringTauret', 'TwashtarCentovente', 'TwashtarCrepuscularKnife','NaeglingCentovente', 'NaeglingCrepuscularKnife', 'TauretCentovente', 'TauretCrepuscularKnife'}
  weapon_ind = 1     
  
 sets.weapon.GandringCentovente = {
	main="Gandring",
	sub="Centovente"
 }
 sets.weapon.GandringGleti = {
	main="Gandring",
	sub="Gleti's knife"
 } 
 sets.weapon.GandringCrepuscularKnife = {
	main="Gandring",
	sub="Crepuscular Knife"
 }
 sets.weapon.GandringTauret = {
	main="Gandring",
	sub="Tauret"
 }   
 sets.weapon.TwashtarCentovente = {
	main="Twashtar",
	sub="Centovente"
 }  
 sets.weapon.TwashtarCrepuscularKnife = {
	main="Twashtar",
	sub="Crepuscular Knife"
 }  
 sets.weapon.NaeglingCentovente = {
	main="Naegling",
	sub="Centovente"
 }  
 sets.weapon.NaeglingCrepuscularKnife = {
	main="Naegling",
	sub="Crepuscular Knife"
 } 
  sets.weapon.TauretCentovente = {
	main="Tauret",
	sub="Centovente"
 } 
 sets.weapon.TauretCrepuscularKnife = {
	main="Tauret",
	sub="Crepuscular Knife"
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
    elseif spell.name == "Rudra's Storm" or spell.name == "Mandalic Stab" or spell.name == "SharkBite" or spell.name == "Savage Blade" then
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
		send_command('@input /tell <me> Wakies Wakies my Campbellkitty. We hit 0 HP on accident. We shall live forever!!!')
	end
end)

