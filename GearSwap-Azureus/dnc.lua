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
	
	-- Binds for switching weapon modes
    send_command('bind !f8 gs c toggle weapon set')
	send_command('bind ^f8 gs c reverse weapon set')
	
	-- Binds for switching gear sets
    send_command('bind !f9 gs c toggle engage set')
	send_command('bind ^f9 gs c reverse engage set')

	
	-- Job Abilities Sets --
    sets.JA = {}
    sets.JA.Waltz = {
		head="Horos Tiara +3", --Waltz Potency +15%
		body="Maxixi Casaque +3", --Waltz Potency +19%, Waltz Received Potency +8%, Waltz Recast -2 
		legs="Dashing subligar", --Waltz Potency +10% 
		feet="Maxixi Toe Shoes +3", --Waltz Potency +14% 
		ammo="Yamarang", --Waltz Potency +5% 
		back="Toetapper Mantle" --Waltz Potency +5%

	}
	
	sets.JA.Samba = {
		head="Maxixi Tiara +3", -- +45 second duration 
		body="Maculele casaque +3",
		hands="Macu. Bangles +2",
		legs="Maculele Tights +2",
		feet="Macu. Toe Sh. +2"		
	}
	
	sets.JA.StepAccuracy = {
		head="Maxixi Tiara +3",
		hands="Maxixi Bangles +3",
		feet="Horos Shoes +3"
	}
	
	sets.JA.Jig = {
		legs="Horos Tights +3", --50%
		feet="Maxixi Toe Shoes +3" --50%
	}
	
	sets.JA.FeatherStep  = {
		head="Maxixi Tiara +3",
		hands="Maxixi Bangles +3",
		feet="Maculele Toe Shoes +2"
	}
	
	--The amount of TP restored is calculated using this formula
	--This effect depends on the # of Finishing Moves available when using it.  The Max # is 3 <(^.^<))
    sets.JA.ReverseFlourish = {
		hands="Macu. Bangles +2", --SquareMod +13 whatever that means.
		back="Toetapper Mantle"
	}
	sets.JA.ClimacticFlourish = {head="Maculele Tiara +3"}
	sets.JA.StrikingFlourish = {body="Maculele casaque +3"}
	sets.JA.ViolentFlourish = {
		head="Mummu Bonnet +2",
		body="Horos Casaque +3",
		legs="Horos Tights +3",
		feet="Mummu Gamash. +2",
		left_ring="Stikini ring +1",
		right_ring="Stikini ring +1",
		ammo="Yamarang"
	}
	
	sets.JA.Trance = {head="Horos Tiara +1"}
	sets.JA.FanDance = {hands="Horos Bangles +1"}
	sets.JA.NoFootRise = {body="Horos Casaque +3"}
	sets.JA.SaberDance = {legs="Horos Tights +3"}
	sets.JA.ClosedPosition = {feet="Horos Shoes +3"}
	
	sets.AnimatedFlourish = {} --Add enmity gear? idk Probably it is provoke after all
	
	-- equipment Sets Toggle--
    sets.equipment = {}
    sets.equipment.index = {"TreasureHunter","TP","Accuracy","Tank","Movement","Evasion"}
	equipment_ind = 1

	sets.equipment.TP = {
		ammo="Coiste Bodhar",
		head="Blistering sallet +1",
		body="Horos Casaque +3",
		hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		legs="Maculele tights +2",
		feet="Macu. Toe Sh. +2",
		neck="Null loop",
		waist="Windbuffet Belt +1",
		left_ear="Sherida Earring",
		right_ear="Maculele Earring +1",
		left_ring="Chirich Ring +1",
		right_ring="Hetairoi Ring",
		back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Damage taken-5%'}}
	}
	
	sets.equipment.Accuracy =  {
		ammo="Yamarang",
		head="Malignance Chapeau",
		body="Maculele casaque +3",
		hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Null loop",
		waist="Null belt",
		left_ear="Telos Earring",
		right_ear="Maculele Earring +1",
		left_ring={name="Chirich Ring +1", bag="Wardrobe 3"},
		right_ring={name="Chirich Ring +1", bag="Wardrobe 4"},
		back="Null shawl"
	}

	 sets.equipment.Tank = {
		ammo="Staunch Tathlum +1",
		head="Malignance Chapeau",
		body="Maculele casaque +3",
		hands="Macu. Bangles +2",
		legs="Malignance tights",
		feet="Macu. Toe Sh. +2",
		neck="Null loop",
		waist="Null belt",
		left_ear="Infused Earring",
		right_ear="Eabani Earring",
		left_ring="Defending Ring",
		right_ring="Fortified Ring",
		back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Damage taken-5%'}}
	 }	
	 
 	sets.equipment.Movement = set_combine(sets.Tank,{
		left_ring="Shneddick Ring"
	})
	
	sets.equipment.Evasion = {
		ammo="Yamarang",
		head="Malignance Chapeau",
		body="Maculele casaque +3",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Bathy choker +1",
		waist="Null belt",
		left_ear="Eabani Earring",
		right_ear="Infused Earring",
		left_ring="Defending Ring",
		right_ring="Fortified Ring",
		back="Null shawl"
	}	
	
    sets.equipment.TreasureHunter = set_combine(sets.Tank,{
		body="Volte Jupon",
		legs="Volte Hose",
		feet="Volte Boots",
		waist="Chaac Belt"
	})	
	
 -- Weapon Skill Sets
	-- 	80% DEX for Rudra 60% DEX for Mandalic Stab
    sets.Rudra = {	
		ammo="Crepuscular Pebble",
		head="Maculele Tiara +3",
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands="Maxixi Bangles +3",
		legs="Horos tights +3",
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Fotia Gorget",
		waist="Fotia Belt",
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
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Odr Earring",
		right_ear={ name="Macu. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+15','Mag. Acc.+15','"Store TP"+5',}},
		left_ring="Epaminondas's Ring",
		right_ring="Hetairoi Ring",
		back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}}
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
		body="Horos Casaque +3",
		hands="Gleti's Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Sherida Earring",
		right_ear={ name="Macu. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+15','Mag. Acc.+15','"Store TP"+5',}},
		left_ring="Epaminondas's Ring",
		right_ring="Hetairoi Ring",
		back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}}	
	})
	
---- .:: Preshot Sets ::. ---->
	--sets.preshot = {}
	--sets.preshot.RA = {}	
	
 -- Precast Sets  --
	sets.precast = {}
	sets.precast.Fastcast = {
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
	
 -- Weapon Toggle--
  sets.weapon = {}
  sets.weapon.index = {'TerpsichoreTwashtar','TerpsichoreCentovente','AeneasCentovente', 'AeneasTauret', 'TwashtarCentovente', 'TwashtarCrepuscularKnife', 'TwashtarGleti', 'TauretCentovente', 'TauretCrepuscularKnife'}
  weapon_ind = 1     
  
 sets.weapon.TerpsichoreTwashtar = {
	main="Terpsichore",
	sub="Twashtar"
 }
 sets.weapon.TerpsichoreCentovente = {
	main="Terpsichore",
	sub="Centovente"
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
    if string.find(spell.english, 'Waltz') then
	    equip(sets.JA.Waltz)
	end
	if string.find(spell.english, 'Samba') then
	    equip(sets.JA.Samba)	
	end
	if spell.name == "Quickstep" or spell.name == "Box Step" or spell.name == "Stutter Step" then
		equip(sets.JA.StepAccuracy)
	end
	if spell.name == "Feather Step" then
		equip(sets.JA.FeatherStep) --This set also has StepAccuracy associated
	end
	if spell.name == "Spectral Jig" or spell.name == "Chocobo Jig" or spell.name == "Chocobo Jig II" then
		equip(sets.JA.Jig)
	end
	if spell.name == "Violent Flourish" then
		equip(sets.JA.ViolentFlourish)
	end	
	if spell.name == "Reverse Flourish" then
		equip(sets.JA.ReverseFlourish)
	end	
	if spell.name == "Climactic Flourish" then -- Climactic Flourish forces one more critical hit Forced hits receive damage +28%. 
		equip(sets.JA.ClimacticFlourish)
	end
	if spell.name == "Striking Flourish" then -- +65% Critical Hit Rate for the main hit and Double Attack of the stacked attack round or Weapon Skill
		equip(sets.JA.StrikingFlourish)
	end
	if spell.name == "Trance" then
		equip(sets.JA.Trance)
	end	
	if spell.name == "Fan Dance" then
		equip(sets.JA.FanDance)
	end	
	if spell.name == "No Foot Rise" then
		equip(sets.JA.NoFootRise)
	end	
	if spell.name == "Saber Dance" then
		equip(sets.JA.SaberDance)
	end	
	if spell.name == "Closed Position" then
		equip(sets.JA.ClosedPosition)
	end	
	-- Weapon Skill --
	-- STR 40% DEX 40% Pyrrhic Kleos
	if spell.name == "Pyrrhic Kleos" then
		equip(sets.PyrrhicKleos)
	end
	-- 80% DEX Modifier Rudra's Storm <--This is a quad hit to Crit Hit DMG+
	-- 60% DEX Modifier Mandalic Stab
    if spell.name == "Rudra's Storm" or spell.name == "Mandalic Stab" then
		equip(sets.Rudra)
	end
		-- 50% DEX Modifier Evisceration / Crits per hits
	if spell.name == "Evisceration" then
		equip(sets.Evisceration)
	end
	-- DEX 40% INT 40% Modifier Aeolian Edge | Also pack on all of that MAB+MACC shit
	if spell.name == "Aeolian Edge" then
		equip(sets.Aeolian)
	end
	-- Ninja Spells --
	if spell.skill == 'Ninjutsu' then
	    equip(sets.precast.Fastcast)
	end	
end	


function aftercast(spell)
	equip_current()
end

--This function should only get kicked off when you're engaging.  
--If I want a manual 'Refresh' set or 'MDT' or 'DT' set I can do that in game with equipsets.  
--But I don't want to fuck myself by ignoring the equipment check.
--I'm also deciding not to use a Binding Key to put my in a MDT, PDT, DT, Refresh Set.
--I dunno, I'm just against hitting Ctrl+f# all the time for that shit
function equip_current()
	equip(sets.weapon[sets.weapon.index[weapon_ind]]) 
	equip(sets.equipment[sets.equipment.index[equipment_ind]]) 

end

--Function use for Changing the TP Set.  Ctrl+F9 is your meal ticket
--123 is a red color for the text output
--158 is a green color for the text output
function self_command(command)
	if command =='toggle weapon set' then
		weapon_ind = weapon_ind -1
		if weapon_ind == 0 then weapon_ind = #sets.weapon.index end
		send_command('@input /echo <----- Gear Set changed to '..sets.weapon.index[weapon_ind]..' ----->')
		equip_current()	
	elseif command == 'reverse weapon set' then
		weapon_ind = weapon_ind +1
		if weapon_ind > #sets.weapon.index then weapon_ind = 1 end
		send_command('@input /echo <----- Gear Set changed to '..sets.weapon.index[weapon_ind]..' ----->')
		equip_current()
	elseif command == 'toggle engage set' then
		equipment_ind = equipment_ind -1
		if equipment_ind == 0 then equipment_ind = #sets.equipment.index end
		send_command('@input /echo <----- Gear Set changed to '..sets.equipment.index[equipment_ind]..' ----->')
		equip_current()	
	elseif command == 'reverse engage set' then
		equipment_ind = equipment_ind +1
		if equipment_ind > #sets.equipment.index then equipment_ind = 1 end
		send_command('@input /echo <----- Gear Set changed to '..sets.equipment.index[equipment_ind]..' ----->')
		equip_current()
	end
end


-- Send tell to self if I died --
windower.register_event('status change', function()
	if player.status == 'Dead' then
	send_command('@input /tell <me> Wakies Wakies Baby Girl.  Daddy will not let this stand!')
	end
end)
