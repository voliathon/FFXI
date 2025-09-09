     -- _                                  
    -- / \    _____   _ _ __ ___ _   _ ___ 
   -- / _ \  |_  / | | | '__/ _ \ | | / __|
  -- / ___ \  / /| |_| | | |  __/ |_| \__ \
 -- /_/   \_\/___|\__,_|_|  \___|\__,_|___/
  -- ____                                  
 -- |  _ \  __ _ _ __   ___ ___ _ __       
 -- | | | |/ _` | '_ \ / __/ _ \ '__|      
 -- | |_| | (_| | | | | (_|  __/ |         
 -- |____/ \__,_|_| |_|\___\___|_|         
                                        
-- Dancer Lua of Awesome
--Notes from ffxiah
--Outside of Escha: 
--   Climactic > Rudra > RF > Grand pas > Rudra > RF Rudra > Trance Rudra > RF Rudra > RF Rudra > engage, make tp > Climactic > Rudra > make TP > Rudra - 8 climactic Rudras

--In Escha: 
--   Climactic > Rudra > RF > Grand pas > Rudra > RF Rudra > Trance Rudra > RF Rudra > RF Rudra > Revit > Climactic > RF Rudra > wing Rudra > wing Rudra - 9 Climactic Rudras without TPing (could go for 10 with TPing before Revit)

function get_sets()
-- Set macro book/set --
    send_command('input /macro book 2;wait .1;input /macro set 1') -- set macro book/set here	
	
	-- Binds for modes
	-- Toggle Weapon sets | Ctrl F8 or Alt F8
	send_command('bind !f8 gs c C8') 
	send_command('bind ^f8 gs c reverse Weapon set')

	-- Toggle Engaged sets | Ctrl F9 or Alt F9
	send_command('bind ^f9 gs c C9')
	send_command('bind !f9 gs c reverse Engaged set')

	-- Toggle Idle sets | Ctrl F10 or Alt F10
	send_command('bind !f10 gs c C10') 
	send_command('bind ^f10 gs c reverse Idle set')

	
	-- Job Abilities Sets --
    sets.JA = {}
    sets.JA.Waltz = {
		head="Horos Tiara +3", --Waltz Potency +15%
		body="Maxixi Casaque +3", --Waltz Potency +19%, Waltz Received Potency +8%, Waltz Recast -2 
		legs="Dashing subligar", --Waltz Potency +10% 
		feet="Maxixi Toe Shoes +4", --Waltz Potency +14%
		neck="Etoile Gorget +2",
		ammo="Yamarang", --Waltz Potency +5% 
		back="Toetapper Mantle" --Waltz Potency +5%

	}
	
	sets.JA.Samba = {
		head="Maxixi Tiara +4", -- +45 second duration 
		body="Maculele casaque +3",
		hands="Macu. Bangles +3",
		legs="Maculele Tights +3",
		feet="Macu. Toe Sh. +3"		
	}
	
	sets.JA.StepAccuracy = {
		head="Maxixi Tiara +4",
		hands="Maxixi Bangles +4",
		feet="Horos Toe Shoes +4"
	}
	
	sets.JA.Jig = {
		legs="Horos Tights +4", --50%
		feet="Maxixi Toe Shoes +4" --50%
	}
	
	sets.JA.FeatherStep  = {
		head="Maxixi Tiara +4",
		hands="Maxixi Bangles +4",
		feet="Macu. Toe Sh. +3"
	}
	
	--The amount of TP restored is calculated using this formula
	--This effect depends on the # of Finishing Moves available when using it.  The Max # is 3 <(^.^<))
    sets.JA.ReverseFlourish = {
		hands="Macu. Bangles +3", --Increases the square mod in the equation of TP return for Reverse Flourish by 14. 
		back="Toetapper Mantle"
	}
	sets.JA.ClimacticFlourish = {head="Maculele Tiara +3"}
	sets.JA.StrikingFlourish = {body="Maculele casaque +3"}
	sets.JA.ViolentFlourish = {
		head="Mummu Bonnet +2",
		body="Horos Casaque +4",
		legs="Horos Tights +4",
		feet="Mummu Gamash. +2",
		left_ring="Stikini ring +1",
		right_ring="Stikini ring +1",
		ammo="Yamarang"
	}
	
	sets.JA.Trance = {head="Horos Tiara +3"}
	sets.JA.FanDance = {hands="Horos Bangles +3"}
	sets.JA.NoFootRise = {body="Horos Casaque +4"}
	sets.JA.SaberDance = {legs="Horos Tights +4"}
	sets.JA.ClosedPosition = {feet="Horos Toe Shoes +4"}
	
	sets.AnimatedFlourish = {} --Add enmity gear? idk Probably it is provoke after all
	
	sets.Fastcast = {
		ammo="Staunch Tathlum +1",
		head={ name="Herculean Helm", augments={'Magic dmg. taken -3%','CHR+2','Weapon skill damage +8%','Mag. Acc.+4 "Mag.Atk.Bns."+4',}},
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
	
	-- Engaged Sets Toggle-- Ctrl+F9  or Alt+F9
    sets.engaged = {}
    sets.engaged.index = {"TP","Tank","Movement","TreasureHunter","Accuracy"}
	engaged_ind = 1

	sets.engaged.TP = {
		ammo="Coiste Bodhar",
		head="Blistering sallet +1",
		body="Horos Casaque +4",
		hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		legs="Maculele Tights +3",
		feet="Horos Toe Shoes +4",
		neck="Etoile Gorget +2",
		waist="Windbuffet Belt +1",
		left_ear="Sherida Earring",
		right_ear="Maculele Earring +1",
		left_ring={name="Chirich Ring +1", bag="Wardrobe 3"},
		right_ring="Hetairoi Ring",
		back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Damage taken-5%'}}
	}
	
 	sets.engaged.Movement = {
		ammo="Staunch Tathlum +1",
		head="Malignance Chapeau",
		body="Maculele casaque +3",
		hands="Macu. Bangles +3",
		legs="Malignance tights",
		feet="Macu. Toe Sh. +3",
		neck="Null loop",
		waist="Null belt",
		left_ear="Infused Earring",
		right_ear="Eabani Earring",
		left_ring="Shneddick Ring",
		right_ring="Fortified Ring",
		back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Damage taken-5%'}}
	}	
	
	sets.engaged.Tank = {
		ammo="Yamarang",
		head="Null Masque",
		body="Macu. Casaque +3",
		hands="Macu. Bangles +3",
		legs="Maculele Tights +3",
		feet="Macu. Toe Sh. +3",
		neck={ name="Bathy Choker +1", augments={'Path: A',}},
		waist="Null Belt",
		left_ear="Infused Earring",
		right_ear="Eabani Earring",
		left_ring="Defending Ring",
		right_ring={name="Chirich Ring +1", bag="Wardrobe 4"},
		back="Null Shawl"
	}

	sets.engaged.Accuracy =  {
		ammo="Yamarang",
		head="Maculele Tiara +3",
		body="Maculele casaque +3",
		hands="Malignance gloves",
		legs="Maculele Tights +3",
		feet="Macu. Toe Sh. +3",
		neck="Null loop",
		waist="Null belt",
		left_ear="Telos Earring",
		right_ear="Maculele Earring +1",
		left_ring={name="Chirich Ring +1", bag="Wardrobe 3"},
		right_ring={name="Chirich Ring +1", bag="Wardrobe 4"},
		back="Null shawl"
	}

    sets.engaged.TreasureHunter = {
		ammo="Staunch Tathlum +1",
		head="Malignance Chapeau",
		body="Volte Jupon",
		hands="Macu. Bangles +3",
		legs="Volte Hose",
		feet="Volte Boots",
		neck="Null loop",
		waist="Chaac Belt",
		left_ear="Infused Earring",
		right_ear="Eabani Earring",
		left_ring="Defending Ring",
		right_ring="Fortified Ring",
		back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Damage taken-5%'}}
	}	
	
	
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
	-- 	80% DEX for Rudra 60% DEX for Mandalic Stab
    sets.Rudra = {	
		ammo="Crepuscular Pebble",
		head="Maculele Tiara +3",
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands="Maxixi Bangles +4",
		legs="Horos Tights +4",
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Etoile Gorget +2",
		waist="Kentarch belt +1",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Sherida Earring",
		left_ring="Epaminondas's Ring",
		right_ring="Hetairoi Ring",
		back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}}
	}
	
	-- 	50% DEX Need Critical hit gear as well
	sets.Evisceration = {
		ammo="Crepuscular Pebble",
		head={ name="Blistering Sallet +1", augments={'Path: A',}},
		body="Gleti's Cuirass",
		hands="Gleti's Gauntlets",
		legs="Gleti's Breeches",
		feet="Gleti's Boots",
		neck="Etoile Gorget +2",
		waist="Fotia Belt",
		left_ear="Odr Earring",
		right_ear="Macu. Earring +1",
		left_ring="Epaminondas's Ring",
		right_ring="Hetairoi Ring",
		back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Weapon skill damage +10%'}}
	}
	
    sets.Aeolian = {	
		ammo="Pemphredo Tathlum",
		head="Nyame Helm",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck="Baetyl Pendant",
		waist="Orpheus's Sash",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Friomisi Earring",
		left_ring="Epaminondas's Ring",
		right_ring="Metamorph ring +1",
		back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Weapon skill damage +10%'}}
	}
	
	-- 	40% STR / 40% DEX
	sets.PyrrhicKleos = set_combine(sets.Evisceration,  {
		ammo="Coiste Bodhar",
		head="Maculele Tiara +3",
		body="Horos Casaque +4",
		hands="Maxixi bangles +4",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Sherida Earring",
		right_ear="Macu. Earring +1",
		left_ring="Epaminondas's Ring",
		right_ring="Hetairoi Ring",
		back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Weapon skill damage +10%'}}	
	})
	

	-- Weapon Toggle--  Ctrl+F8 or Alt+F8
	sets.weapon = {}
	sets.weapon.index = {'TerpsichoreTwashtar','TerpsichoreCentovente','TerpsichoreGleti','AeneasCentovente', 'AeneasTauret', 'TwashtarCentovente', 'TwashtarCrepuscularKnife', 'TwashtarGleti', 'TauretCentovente', 'TauretCrepuscularKnife'}
	weapon_ind = 1     

	sets.weapon.TerpsichoreTwashtar = {
		main="Terpsichore",
		sub="Twashtar"
	}
	sets.weapon.TerpsichoreCentovente = {
		main="Terpsichore",
		sub="Centovente"
	}
	sets.weapon.TerpsichoreGleti = {
		main="Terpsichore",
		sub="Gleti's knife"
	}  
	sets.weapon.AeneasCentovente = {
		main="Aeneas",
		sub="Centovente"
	}
	sets.weapon.AeneasTauret = {
		main="Aeneas",
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
	sets.weapon.TwashtarGleti = {
		main="Twashtar",
		sub="Gleti's knife"
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
	if spell.type == 'JobAbility' then
		if string.find(spell.english, 'Waltz') then
			equip(sets.JA.Waltz)
		elseif string.find(spell.english, 'Samba') then
			equip(sets.JA.Samba)	
		elseif spell.name == "Quickstep" or spell.name == "Box Step" or spell.name == "Stutter Step" then
			equip(sets.JA.StepAccuracy)
		elseif spell.name == "Feather Step" then
			equip(sets.JA.FeatherStep) --This set also has StepAccuracy associated
		elseif spell.name == "Spectral Jig" or spell.name == "Chocobo Jig" or spell.name == "Chocobo Jig II" then
			equip(sets.JA.Jig)
		elseif spell.name == "Violent Flourish" then
			equip(sets.JA.ViolentFlourish)
		elseif spell.name == "Reverse Flourish" then
			equip(sets.JA.ReverseFlourish)
		elseif spell.name == "Climactic Flourish" then  
			equip(sets.JA.ClimacticFlourish)
		elseif spell.name == "Striking Flourish" then -- +65% Critical Hit Rate for the main hit and Double Attack of the stacked attack round or Weapon Skill
			equip(sets.JA.StrikingFlourish)
		elseif spell.name == "Trance" then
			equip(sets.JA.Trance)
		elseif spell.name == "Fan Dance" then
			equip(sets.JA.FanDance)
		elseif spell.name == "No Foot Rise" then
			equip(sets.JA.NoFootRise)
		elseif spell.name == "Saber Dance" then
			equip(sets.JA.SaberDance)
		elseif spell.name == "Closed Position" then
			equip(sets.JA.ClosedPosition)
		end
	end

	--Dancer Weapon Skills
    if spell.type == 'WeaponSkill' then	
		if spell.name == "Pyrrhic Kleos" then
			equip(sets.PyrrhicKleos)
		elseif spell.name == "Rudra's Storm" or spell.name == "Mandalic Stab" then
			equip(sets.Rudra)
		elseif spell.name == "Evisceration" then
			equip(sets.Evisceration)
		elseif spell.name == "Aeolian Edge" then
			equip(sets.Aeolian)
		else
			equip(sets.Rudra)
		end
	end
	
	-- Ninja Spells --
	if spell.skill == 'Ninjutsu' then
	    equip(sets.Fastcast)
	end	
end	


function aftercast(spell)
	equip_current()
	if (spell.english == 'Climactic Flourish') then
		equip({head="Maculele Tiara +3"})
    end
end


function equip_current()
	equip_weapon() 
	status_change()
	if (buffactive['Climactic Flourish']) then
		equip({head="Maculele Tiara +3"})
	end
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
