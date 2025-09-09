-- Oh land of the PUP
-- D.A.D. Technique <--Concept taken from bg-wiki
-- Another important technique to be aware of is amicably known as D.A.D. (or performing Deactivate, Activate, Deploy, in that order). Because using Activate summons your Automaton with 100% HP & more importantly… 100% MP, this means you can exploit Deactivates short cooldown timer, to essentially give your Automaton an unlimited MP pool. Whenever your mage frame Automaton is running low on MP, (and as long as they aren't damaged) simply D.A.D. to fill their MP pool right back up to full! 

function get_sets()

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
	
	
    -- Maneuver: Boosts automaton performance.
    -- Activate: Restores the automaton's MP with the right gear.
    -- Overdrive: Boosts the Overdrive effect for the automaton.

    sets.precast = {}
    sets.precast.Maneuver = {
		body="Kara. Farsetto +3", 
		hands="Foire Dastanas +4", 
		back="Visucius's Mantle",
		neck="Buffoon's collar"
	}
    sets.precast.Overdrive = {main="Pitre Tobe +4"}
	sets.precast.Repair = {range="Animator P +1", ammo="Automat. Oil +3", feet="Foire Babouches +2"}
	sets.precast.Waltz = {legs="Dashing subligar"}
	sets.precast.Activate = {main="Ohtas", right_ear="Karagoz Earring", feet="Mpaca's boots"}
	sets.precast.Ventriloquy = {feet="Karagoz scarpe +3"}
	sets.precast.RoleReversal = {legs="Pitre Churidars +4"}
	sets.precast.TacticalSwitch = {feet="Pitre Babouches +4"}

	
  -- Engaged Sets
  -- These are your combat sets based on different playstyles and needs:

  -- BadAss: Optimized for damage.
  -- DT (Damage Taken): For tanking.
  -- Regen: For passive regeneration.
  -- RangerTP: For automaton ranged combat.
  -- MeleeTP: For automaton melee combat.
  -- MagicAutomaton: For automaton magic.
  -- TankAutomaton: For when your automaton is tanking.

  -- These sets dynamically change based on combat conditions, so if you're engaging as a melee or ranged automaton, your gear changes accordingly.
  sets.engaged = {}
  sets.engaged.index = {'BadAss', 'Movement', 'Regen', 'DT', 'Accuracy', 'TH', 'RangerTP', 'MeleeTP', 'MagicAutomaton', 'TankAutomaton'}
  engaged_ind = 1
	
  sets.engaged.BadAss = {
    head="Karagoz cappello +3",
    body="Tali'ah Manteel +2",
    hands={ name="Herculean Gloves", augments={'"Triple Atk."+3','DEX+9','Accuracy+15',}},
    legs="Kara. Pantaloni +3",
    feet={ name="Herculean Boots", augments={'Accuracy+23 Attack+23','"Triple Atk."+3','DEX+9','Attack+3',}},
    neck="Null loop",
    waist="Cetl Belt",
    left_ear="Telos Earring",
    right_ear="Cessance Earring",
    left_ring="Hetairoi Ring",
    right_ring="Regal Ring",
    back={ name="Visucius's Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Eva.+20 /Mag. Eva.+20','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: Haste+10','Pet: Damage taken -5%',}}
  }	
	
  sets.engaged.DT = {
    head="Malignance Chapeau",
    body="Kara. Farsetto +3",
    hands="Karagoz Guanti +3",
    legs="Kara. Pantaloni +3",
    feet="Malignance Boots",
    neck="Null loop",
    waist="Plat. Mog. Belt",
    left_ear="Enmerkar Earring",
    right_ear="Handler's Earring +1",
    left_ring="Shneddick Ring",
	right_ring={name="Varar Ring +1", bag="Wardrobe 5"},
    back={ name="Visucius's Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Eva.+20 /Mag. Eva.+20','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: Haste+10','Pet: Damage taken -5%',}}
  }
  
  sets.engaged.Movement = set_combine(sets.engaged.DT, {
      head="Malignance Chapeau",
    body="Kara. Farsetto +3",
    hands="Karagoz Guanti +3",
    legs="Kara. Pantaloni +3",
    feet="Malignance Boots",
    neck="Null loop",
    waist="Plat. Mog. Belt",
    left_ear="Enmerkar Earring",
    right_ear="Handler's Earring +1",
	left_ring="Shneddick ring",
	right_ring={name="Varar Ring +1", bag="Wardrobe 5"},
    back={ name="Visucius's Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Eva.+20 /Mag. Eva.+20','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: Haste+10','Pet: Damage taken -5%',}}
  })
  
  sets.engaged.Regen = {
    head={ name="Pitre Taj +4", augments={'Enhances "Optimization" effect'}},
    body="Hiza. Haramaki +2",
    hands="Karagoz Guanti +3",
    legs="Kara. Pantaloni +3",
    feet="Malignance Boots",
    neck="Empath Necklace",
    waist="Isa Belt",
    left_ear="Enmerkar Earring",
    right_ear="Hypaspist Earring",
    left_ring="Shneddick Ring",
	right_ring={name="Varar Ring +1", bag="Wardrobe 5"},
    back={ name="Visucius's Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Eva.+20 /Mag. Eva.+20','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: Haste+10','Pet: Damage taken -5%'}}  
  }
  
  sets.engaged.Accuracy = set_combine(sets.engaged.BadAss, {
    head="Kara. Cappello +3",
    body="Tali'ah Manteel +2",
    hands="Karagoz Guanti +3",
    legs="Kara. Pantaloni +3",
    feet="Karagoz scarpe +3",
    neck="Null loop",
    waist="Eschan Stone",
    left_ear="Telos Earring",
    right_ear={ name="Karagoz Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+7','Mag. Acc.+7',}},
    left_ring="Hetairoi Ring",
    right_ring="Regal Ring",
    back={ name="Visucius's Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Eva.+20 /Mag. Eva.+20','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: Haste+10','Pet: Damage taken -5%',}}  
  })
	
  sets.engaged.TH = set_combine(sets.engaged.DT, {
	waist="Chaac belt"
  })
  
  -- Xiucoatl is needed for Store TP Ranger Automaton
  sets.engaged.RangerTP = {
    head={ name="Herculean Helm", augments={'Pet: Accuracy+16 Pet: Rng. Acc.+16','Pet: "Store TP"+11',}},
    body={ name="Pitre Tobe +4", augments={'Enhances "Overdrive" effect',}},
    hands={ name="Herculean Gloves", augments={'Pet: Accuracy+29 Pet: Rng. Acc.+29','Pet: "Store TP"+11','Pet: "Mag.Atk.Bns."+11',}},
    legs={ name="Herculean Trousers", augments={'Pet: "Store TP"+11','Pet: AGI+2','Pet: Attack+11 Pet: Rng.Atk.+11',}},
    feet={ name="Herculean Boots", augments={'Pet: Attack+23 Pet: Rng.Atk.+23','Pet: "Store TP"+10','Pet: AGI+4',}},
    neck="Empath Necklace",
    waist="Klouskap Sash",
    left_ear="Enmerkar Earring",
    right_ear="Kyrene's Earring",
	left_ring={name="Varar Ring +1", bag="Wardrobe 2"},
	right_ring={name="Varar Ring +1", bag="Wardrobe 5"},
    back={ name="Visucius's Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Eva.+20 /Mag. Eva.+20','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: Haste+10','Pet: Damage taken -5%',}}
  }

  -- Ohtas is needed for Double Attack Melee
  sets.engaged.MeleeTP = {
	head={ name="Taeon Chapeau", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
    body={ name="Pitre Tobe +4", augments={'Enhances "Overdrive" effect',}},
	hands={ name="Taeon Gloves", augments={'Pet: Accuracy+24 Pet: Rng. Acc.+24','Pet: "Dbl. Atk."+5','Pet: Damage taken -3%',}},
	legs="Kara. Pantaloni +3",
	feet={ name="Taeon Boots", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Damage taken -3%',}},
	neck="Empath Necklace",
	waist="Incarnation Sash",
	left_ear="Enmerkar Earring",
	right_ear="Rimeice Earring",
	left_ring={name="Varar Ring +1", bag="Wardrobe 2"},
	right_ring="Cath Palug ring",
	back={ name="Visucius's Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Eva.+20 /Mag. Eva.+20','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: Haste+10','Pet: Damage taken -5%',}}    
  }
  
  sets.engaged.MagicAutomaton = {
	head="Karagoz Cappello +3",
	body="Karagoz Farsetto +3",
	hands="Karagoz Guanti +3",
	legs="Pitre Churidars +4",
	feet="Pitre Babouches +4",
	waist="Incarnation sash",
	neck="Adad Amulet"
  }
  
  --Midnights needed for the -3DT and 25ACC
  sets.engaged.TankAutomaton = {
    head={ name="Anwig Salade", augments={'Attack+3','Pet: Damage taken -10%','Attack+3','Pet: "Regen"+1',}},
    body={ name="Taeon Tabard", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
    hands={ name="Taeon Gloves", augments={'Pet: Accuracy+24 Pet: Rng. Acc.+24','Pet: "Dbl. Atk."+5','Pet: Damage taken -3%',}},
    legs={ name="Taeon Tights", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
    feet={ name="Taeon Boots", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Damage taken -3%',}},
    neck="Empath Necklace",
    waist="Isa belt",
    left_ear="Enmerkar Earring",
    right_ear="Rimeice Earring",
    left_ring="Cath Palug ring",
    right_ring="Overbearing Ring",
    back={ name="Visucius's Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Eva.+20 /Mag. Eva.+20','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: Haste+10','Pet: Damage taken -5%',}}
  }
  
  
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
  

--Weapon Skill Sets
    sets.WS = {}
	--Victory Smite --- STR 80%
	--Ascetic's Fury/Dragon Kick --- STR 50% VIT 50%
	--Howling Fist --- STR 20% DEX 50%
	--Combo/Raging Fists --- STR 30% DEX 30%
	--Spinning Attack --- STR 100%
	--Tornado Kick --- STR 40% VIT 40%
	--Dragon Kick/Backhand Blow --- STR 50% DEX 50%
	--Shijin Spiral --- DEX 73% if maxed
	--Asuran Fists --- STR 15% VIT 15%
	--Stringing Pummel --- STR 32% VIT 32%
	--Shoulder Tackle/One Inch Punch --- VIT 100%

	sets.WS.AsuranFists = {
		head={ name="Pitre Taj +4", augments={'Enhances "Optimization" effect',}},
		body="Foire tobe +4",
		hands={ name="Pitre Dastanas +4", augments={'Enhances "Fine-Tuning" effect',}},
		legs={ name="Pitre Churidars +4", augments={'Enhances "Ventriloquy" effect',}},
		feet={ name="Pitre Babouches +4", augments={'Enhances "Role Reversal" effect',}},
		neck="Rep. Plat. Medal",
		waist="Cetl Belt",
		left_ear="Telos Earring",
		right_ear="Digni. Earring",
		left_ring="Petrov Ring",
		right_ring="Regal Ring",
		back={ name="Visucius's Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Eva.+20 /Mag. Eva.+20','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: Haste+10','Pet: Damage taken -5%',}}		
	}
	sets.WS.VictorySmite = {
		head={ name="Herculean Helm", augments={'Accuracy+17','"Triple Atk."+4','DEX+4',}},
		body="Foire tobe +4",
		hands={ name="Herculean Gloves", augments={'"Triple Atk."+3','DEX+9','Accuracy+15',}},
		legs="Hiza. Hizayoroi +2",
		feet={ name="Herculean Boots", augments={'Accuracy+23 Attack+23','"Triple Atk."+3','DEX+9','Attack+3',}},
		neck="Combatant's Torque",
		waist="Cetl Belt",
		left_ear="Telos Earring",
		right_ear="Cessance Earring",
		left_ring="Rajas Ring",
		right_ring="Regal Ring",
		back={ name="Visucius's Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Eva.+20 /Mag. Eva.+20','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: Haste+10','Pet: Damage taken -5%',}}	
	}
	
	sets.WS.StringingPummel = {
		head={ name="Herculean Helm", augments={'Accuracy+17','"Triple Atk."+4','DEX+4',}},
		body="Foire tobe +4",
		hands={ name="Herculean Gloves", augments={'"Triple Atk."+3','DEX+9','Accuracy+15',}},
		legs="Hiza. Hizayoroi +2",
		feet={ name="Herculean Boots", augments={'Accuracy+23 Attack+23','"Triple Atk."+3','DEX+9','Attack+3',}},
		neck="Combatant's Torque",
		waist="Cetl Belt",
		left_ear="Telos Earring",
		right_ear="Cessance Earring",
		left_ring="Rajas Ring",
		right_ring="Regal Ring",
		back={ name="Visucius's Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Eva.+20 /Mag. Eva.+20','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: Haste+10','Pet: Damage taken -5%',}}
	}
    
	sets.WS.ShijinSpiral = {
		head={ name="Herculean Helm", augments={'Accuracy+17','"Triple Atk."+4','DEX+4',}},
		body="Foire tobe +4",
		hands={ name="Herculean Gloves", augments={'"Triple Atk."+3','DEX+9','Accuracy+15',}},
		legs="Hiza. Hizayoroi +2",
		feet={ name="Herculean Boots", augments={'Accuracy+23 Attack+23','"Triple Atk."+3','DEX+9','Attack+3',}},
		neck="Combatant's Torque",
		waist="Cetl Belt",
		left_ear="Telos Earring",
		right_ear="Cessance Earring",
		left_ring="Rajas Ring",
		right_ring="Regal Ring",
		back={ name="Visucius's Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Eva.+20 /Mag. Eva.+20','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: Haste+10','Pet: Damage taken -5%',}}
	}
    
	sets.PetWS = {}
	sets.PetWS.Arcuballista = {
		head="Kara. Cappello +3",
		body={ name="Pitre Tobe +4", augments={'Enhances "Overdrive" effect',}},
		hands="Mpaca's gloves",
		legs="Kara. Pantaloni +3",
		feet={ name="Herculean Boots", augments={'Pet: Attack+23 Pet: Rng.Atk.+23','Pet: "Store TP"+10','Pet: AGI+4',}},
		neck="Empath Necklace",
		waist="Klouskap Sash",
		left_ear="Enmerkar Earring",
		right_ear="Kyrene's Earring",
		left_ring={name="Varar Ring +1", bag="Wardrobe 2"},
		right_ring={name="Varar Ring +1", bag="Wardrobe 5"},
		back={ name="Visucius's Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Eva.+20 /Mag. Eva.+20','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: Haste+10','Pet: Damage taken -5%',}}	
	}
	sets.PetWS.BoneCrusher = {
		head="Kara. Cappello +3",
		body={ name="Pitre Tobe +4", augments={'Enhances "Overdrive" effect',}},
		hands="Mpaca's gloves",
		legs="Kara. Pantaloni +3",
		feet={ name="Taeon Boots", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Damage taken -3%',}},
		neck="Empath Necklace",
		waist="Incarnation Sash",
		left_ear="Enmerkar Earring",
		right_ear="Kyrene's Earring",
		left_ring="Cath Palug ring",
		right_ring={name="Varar Ring +1", bag="Wardrobe 5"},
		back={ name="Visucius's Mantle", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Eva.+20 /Mag. Eva.+20','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: Haste+10','Pet: Damage taken -5%',}}	
	}
	sets.PetWS.MagicMortar = {}
	sets.PetWS.Nuke = {}
	

 -- Weapon Toggle--
  sets.weapon = {}
  sets.weapon.index = {'Ohtas', 'Xiucoatl', 'Godhands', 'Midnights'}
  weapon_ind = 1     
  
  sets.weapon.Ohtas = {
	main="Ohtas"
  }
  sets.weapon.Xiucoatl = {
	main="Xiucoatl"
  }
  sets.weapon.Godhands = {
	main="Godhands"
  }
  sets.weapon.Midnights = {
	main="Midnights"
  }
end

function precast(spell)
	-- Puppetmaster Abilities --
	if spell.type == 'JobAbility' then
		if string.find(spell.name, 'Maneuver') then
			equip(sets.precast.Maneuver)
		elseif string.find(spell.name, 'Repair') then
			equip(sets.precast.Repair)
		elseif spell.name == 'Tactical Switch' then
			equip(sets.precast.TacticalSwitch)
		elseif spell.name == 'Ventriloquy' then
			equip(sets.precast.Ventriloquy)
		elseif spell.name == 'Role Reversal' then
			equip(sets.precast.RoleReversal)
		elseif spell.name == 'Overdrive' then
			equip(sets.precast.Overdrive)
		elseif string.find(spell.name, 'Waltz') then
			equip(sets.precast.Waltz)
		end			
	end  

	--Puppetmaster Weapon Skills
    if spell.type == 'WeaponSkill' then	
		if spell.name == 'Stringing Pummel' then
			equip(sets.WS.StringingPummel)
		elseif spell.name == 'Asuran Fists' then
			equip(sets.WS.AsuranFists)
		elseif spell.name == 'Victory Smite' then
			equip(sets.WS.VictorySmite)
		elseif spell.name == 'Howling Fist' then
			equip(sets.WS.HowlingFist)
		elseif spell.name == 'Raging Fist' then
			equip(sets.WS.RagingFist)
		elseif spell.name == 'Shijin Spiral' then
			equip(sets.WS.ShijinSpiral)
		else
			equip(sets.WS.StringingPummel)
		end
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
		send_command('@input /tell <me> Wake up Voreus!')
	end
end)

-- https://github.com/Broguypal/FFXIpublicLUAs/blob/main/PUP.lua#L731
-- Registering event for pet changes -- Essentially, this checks the Pet TP every second, and if it reaches 850+ it automatically swaps to the appropriate pet weaponskill set.
windower.register_event('time change', function(new, old)
	if new > old and pet.isvalid and pet.status == "Engaged" then 
		if pet.tp >= 850 and player.tp <= 400 then
			if pet.frame == "Sharpshot Frame" then
				equip(sets.PetWS.Arcuballista)
			end
			if pet.frame == "Valoredge Frame" or pet.frame == "Harlequin Frame" then
				equip(sets.PetWS.BoneCrusher)
			end
		end
		--Insert this command if you want your character to automatically cast repair if your pet falls below a certain health percentage while engaged (Delete the "--[[ ... ]]")
		--[[if pet.hpp <= 40 then windower.send_command('input /ja "Repair" <me>') end ]]
	end
	if new > old then
		check_pet_status()
	end
end)
