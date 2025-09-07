-- Intarabus's Cape function
function IntarabusCapes()
    Intarabus = {}
    Intarabus.TP = { name="Intarabus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%'}}
    Intarabus.STRWSD = { name="Intarabus's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%'}}
	Intarabus.DEXWSD = { name="Intarabus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%'}}
	Intarabus.FASTCAST = { name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Spell interruption rate down-10%',}}
end

function get_sets()
	-- Setting to the BRD Macro Book #5 and Set #1 --
	send_command('input /macro book 5;wait .1;input /macro set 1')

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

	-- Let's also initialize any Intarabus's Capes that we need to use 
	IntarabusCapes()

	-- Modes --
	Marsyas = 'OFF' -- Toogle on/off the Marsyas and Gjallarhorn via ctrl + F8

	--Job Ability Sets--
	sets.JA = {}
	sets.JA.Nightingale = {feet="Bihu Slippers +1"}
	sets.JA.Troubadour = {body="Bihu Justaucorps +1"}
	sets.JA.SoulVoice = {legs="Bihu Cannions +1"}
	sets.JA.Waltz = {legs="Dashing subligar"}
	
  --Fast Cast Set--
  sets.FastCast = {
    head="Bunzi's Hat",
    body="Inyanga jubbah +2",
    hands={ name="Gende. Gages +1", augments={'Phys. dmg. taken -4%','Song spellcasting time -4%'}},
    legs="Aya. Cosciales +2",
    feet="Fili cothurnes +2",
    neck="Voltsurge Torque",
    waist="Embla Sash",
    left_ear="Etiolation Earring",
    right_ear="Loquac. Earring",
	left_ring={name="Stikini Ring +1", bag="Wardrobe 1"},
    right_ring="Kishar Ring",
    back="Fi follet cape +1"
  }
  
  --Stoneskin Set
  sets.Stoneskin = {
    head="Umuthi Hat",
    body="Zendik Robe",
    hands="Carapacho Cuffs",
    legs="Doyen Pants",
    feet={ name="Kaykaus Boots", augments={'Mag. Acc.+15','"Cure" potency +5%','"Fast Cast"+3'}},
    neck="Nodens Gorget",
    waist="Siegel Sash",
    left_ear="Earthcry Earring",
    right_ear="Loquac. Earring",
	left_ring={name="Stikini Ring +1", bag="Wardrobe 1"},
	right_ring={name="Stikini Ring +1", bag="Wardrobe 5"},
    back=Intarabus.FASTCAST 
  }
 
  --Magic Accuracy for those pesky songs that don't want to stick--
  sets.MagicAccuracy = {
    head="Aya. Zucchetto +2",
    body="Brioso Just. +1",
    hands="Inyan. Dastanas +2",
    legs="Inyanga Shalwar +2",
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
    neck="Mnbw. whistle +1",
    waist={ name="Acuity Belt +1", augments={'Path: A',}},
    left_ear="Regal Earring",
    right_ear={ name="Fili Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+13','Mag. Acc.+13','Damage taken-4%',}},
	left_ring={name="Stikini Ring +1", bag="Wardrobe 1"},
	right_ring={name="Stikini Ring +1", bag="Wardrobe 5"},
    back={ name="Aurist's Cape +1", augments={'Path: A',}}
  }
  
  --Maximizing Song Potency first then duration-- 
  sets.Songs = {
	main="Carnwenhan",
	sub="Kali",
    head="Fili calot +2",
    body="Fili Hongreline +3",
    hands="Fili Manchettes +2",
    legs="Inyanga Shalwar +2",
    feet="Brioso Slippers +1",
    neck="Mnbw. whistle +1",
    waist="Witful Belt",
    left_ear="Loquac. Earring",
    right_ear={ name="Fili Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+13','Mag. Acc.+13','Damage taken-4%',}},
	left_ring={name="Stikini Ring +1", bag="Wardrobe 1"},
	right_ring={name="Stikini Ring +1", bag="Wardrobe 5"},
    back={ name="Fi Follet Cape +1", augments={'Path: A',}}
  }
  
  sets.Ballad = set_combine(sets.Songs, { 
	legs="Fili Rhingrave +2"
  })
  
  sets.Cure = {
    head={ name="Vanya Hood", augments={'MP+50','"Fast Cast"+10','Haste+2%'}},
    body={ name="Kaykaus Bliaut", augments={'MP+60','"Cure" potency +5%','"Conserve MP"+6'}},
    hands="Inyan. Dastanas +2",
    legs={ name="Kaykaus Tights", augments={'MP+60','Spell interruption rate down +10%','"Cure" spellcasting time -5%'}},
    feet={ name="Vanya Clogs", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6'}},
    neck="Nodens Gorget",
    waist="Acerbic Sash +1",
    left_ear="Magnetic Earring",
    right_ear="Mendi. Earring",
    left_ring="Lebeche Ring",
    right_ring="Sirona's Ring",
    back="Oretan. Cape +1"
  }
  
  sets.Cursna = {
    head={ name="Kaykaus Mitra", augments={'MP+60','MND+10','Mag. Acc.+15'}},
    body={ name="Vanya Robe", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3'}},
    hands="Inyan. Dastanas +2",
    legs={ name="Vanya Slops", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3'}},
    feet={ name="Vanya Clogs", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6'}},
    neck="Incanter's Torque",
    waist="Gishdubar Sash",
    left_ear="Healing Earring",
    right_ear="Magnetic Earring",
    left_ring="Ephedra Ring",
    right_ring="Ephedra Ring",
    back="Oretan. Cape +1"  
  }

  sets.Sleep = set_combine(sets.MagicAccuracy, { 
    head="Fili calot +2",
	hands="Fili manchettes +2",
	body="Fili Hongreline +3",
	feet="Fili cothurnes +2",
	legs="Inyanga Shalwar +2",
	range="Blurred harp",
	main="Carnwenhan"
  })
  
  -- Mordant Rime  70%CHR / 30% DEX
  -- Evisceration   50% DEX  Critical Hits
  -- Rudra's Storm  80% DEX  Dmg varies with TP
  -- Exenterator  85% AGI w/ capped merits.  Duration of accuracy down varies with TP
  -- Aeolian Edge  40% DEX / 40% INT  Dmg varies with TP

  -- Engaged Sets Toggle--
  sets.engaged = {}
  sets.engaged.index = {'TP', 'TakingLessPhysicalDamage', 'TakingLessMagicDamage', 'Accuracy', 'Refresh', 'Movement'}
  engaged_ind = 1    
  
  --TP Set--
  sets.engaged.TP = {
	ammo="Coiste bodhar",
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body="Ayanmo Corazza +2",
    hands={ name="Bunzi's Gloves", augments={'Path: A',}},
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
    neck="Null Loop",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Telos Earring",
    right_ear="Cessance Earring",
    left_ring="Ilabrat Ring",
    right_ring="Petrov Ring",
    back={ name="Intarabus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%',}}	
  }
  
  --Accuracy Set--
  sets.engaged.Accuracy = {
  	ammo="Coiste bodhar",
    head="Fili calot +2",
    body="Fili Hongreline +3",
    hands="Fili Manchettes +2",
    legs="Fili Rhingrave +2",
    feet="Fili cothurnes +2",
    neck="Null loop",
    waist="Eschan stone",
    left_ear="Telos Earring",
    right_ear="Fili Earring +1",
	left_ring={name="Chirich Ring +1", bag="Wardrobe 1"},
	right_ring={name="Chirich Ring +1", bag="Wardrobe 4"},
    back="Null shawl",
	range="Linos"
  }
  
  sets.engaged.TakingLessPhysicalDamage = {
  	ammo="Coiste bodhar",
    head="Fili calot +2",
    body="Fili Hongreline +3",
    hands="Fili Manchettes +2",
    legs="Fili Rhingrave +2",
    neck="Null loop",
    waist="Slipor Sash",
    left_ear="Infused Earring",
    right_ear="Eabani Earring",
    left_ring="Defending Ring",
    right_ring="Warden's Ring",
    back=Intarabus.TP
  }
  
  sets.engaged.TakingLessMagicDamage = {
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Fili Manchettes +2",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Null loop",
    waist="Slipor Sash",
    left_ear="Infused Earring",
    right_ear="Eabani Earring",
    left_ring="Defending Ring",
    right_ring="Warden's ring",
    back="Null shawl",
	ammo="Coiste bodhar"
  }
  
  sets.engaged.Refresh = {
    head="Null masque",
    body="Annoint. Kalasiris",
    hands={ name="Chironic Gloves", augments={'"Fast Cast"+1','Pet: "Mag.Atk.Bns."+10','"Refresh"+2','Accuracy+12 Attack+12'}},
    legs="Assid. Pants +1",
    feet={ name="Chironic Slippers", augments={'Phys. dmg. taken -1%','Pet: Attack+9 Pet: Rng.Atk.+9','"Refresh"+2','Mag. Acc.+20 "Mag.Atk.Bns."+20'}},
    neck="Bathy Choker +1",
    waist="Fucho-no-Obi",
    left_ear="Infused Earring",
    right_ear="Fili Earring +1",
	left_ring={name="Stikini Ring +1", bag="Wardrobe 1"},
	right_ring={name="Stikini Ring +1", bag="Wardrobe 5"},
    back="Null shawl",
	ammo="Coiste bodhar"
  }
  
  sets.engaged.Movement = set_combine(sets.engaged.TakingLessPhysicalDamage,  {
  	ammo="Coiste bodhar",
    head="Fili calot +2",
    body="Fili Hongreline +3",
    hands="Fili Manchettes +2",
    legs="Fili Rhingrave +2",
	feet="Fili Cothurnes +2",
    neck="Null loop",
    waist="Slipor Sash",
    left_ear="Infused Earring",
    right_ear="Eabani Earring",
    left_ring="Defending Ring",
    right_ring="Warden's Ring",
    back=Intarabus.TP
  })
  

  -- Idle Sets Toggle-- Alt+F10 or Ctrl+F10
  sets.idle = {}
  sets.idle.index = {'PDTMovement', 'Refresh', 'Craft'}
  idle_ind = 1      
  sets.idle.PDTMovement = set_combine(sets.engaged.Movement,  {})
  
  sets.idle.Refresh = set_combine(sets.engaged.Refresh,  {
  	feet="Fili cothurnes +3"
  })
  
  sets.idle.Craft = set_combine(sets.engaged.Movement, {
	sub="Bv. escutcheon",
	hands="Tanner's gloves",
	neck="Tanner's torque",
	left_ring="Artificer's Ring"
  })

  -- sets.idle.Fishing = {
	-- hands="Fisherman's cuffs",
	-- left_ring="Shneddick Ring",
	-- right_ring="Duck ring",
	-- waist="Fisherman's ring",
	-- range="Ebisu Fishing rod"
  -- }  
  
  
  --Weaponskill Sets--
  --Savage Blade
  sets.SavageBlade = {
    ammo="Oshasha's Treatise",
    head={ name="Nyame Helm", augments={'Path: B',}},
    body={ name="Nyame Mail", augments={'Path: B',}},
    hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Telos Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Sroda Ring",
    right_ring="Cornelia's Ring",
    back={ name="Intarabus's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}}
  }
  
  --All in One who gives a fuck Weapon Skill set of Doom
  --Rudra Evisceration Mordant go here
  sets.WSD = {
    ammo="Oshasha's Treatise",
    head={ name="Nyame Helm", augments={'Path: B',}},
    body={ name="Nyame Mail", augments={'Path: B',}},
    hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Telos Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Sroda Ring",
    right_ring="Cornelia's Ring",
    back={ name="Intarabus's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}}
  }

  -- Weapon Toggle--
  sets.weapon = {}
  sets.weapon.index = {'CarnwenhanShield', 'CarnwenhanGleti', 'NaeglingShield', 'NaeglingGleti', 'TauretShield', 'TauretGleti'}
  weapon_ind = 1     
  
 sets.weapon.CarnwenhanShield = {
	main="Carnwenhan",
	sub="Ammurapi shield"
 } 
 sets.weapon.CarnwenhanGleti = {
	main="Carnwenhan",
	sub="Gleti's knife"
 }

 sets.weapon.NaeglingShield = {
	main="Naegling",
	sub="Ammurapi shield"
 }
 sets.weapon.NaeglingGleti = {
	main="Naegling",
	sub="Gleti's knife"
 }  
 
 sets.weapon.TauretShield = {
	main="Tauret",
	sub="Ammurapi shield"
 } 
  sets.weapon.TauretGleti = {
	main="Tauret",
	sub="Gleti's knife"
 } 

end


function precast(spell,abil)
	--equips favorite Instrument if disarmed
	if player.equipment.range == "empty" or player.equipment.sub == "empty" then
		if spell.name == 'Honor March' then
			equip(sets.FastCast,{range="Marsyas",ammo="empty"})
			--add_to_chat(158,'Marsyas Weapon: [ON]')
			Daurdabla = 'OFF'
			Marsyas = 'ON'
		else
			equip(sets.FastCast,{range="Blurred harp",ammo="empty"})
			--add_to_chat(158,'Daurdabla Weapon: [ON]')
			Daurdabla = 'ON'
			Marsyas = 'OFF'
		end
		
	end
	
	if string.find(spell.english,'Waltz') then 
		equip(sets.JA.Waltz)
	end
	
	if spell.type == 'BardSong' then
		if spell.name == 'Honor March' then
			equip(sets.FastCast,{main="Carnwenhan",sub="Kali",range="Marsyas",ammo="empty"})
		elseif  player.equipment.ammo == "Coiste bodhar" then
			equip(sets.FastCast,{main="Carnwenhan",sub="Kali",range="Marsyas",ammo="empty"})
			--Eventually this will be Daurdable or 3 song harp
		end		
	end
	if spell.name == 'Nightingale' then
		equip(sets.JA.Nightingale)
	end 
	if spell.name == 'Troubadour' then
		equip(sets.JA.Troubadour)
	end
	if spell.name == 'Soul Voice' then
		equip(sets.JA.SoulVoice)
	end

	
	--WS Lookups
	if spell.name == "Savage Blade" then
		equip(sets.SavageBlade)
	end
	if spell.name == "Rudra's Storm" or spell.name == "Evisceration" or spell.name == "Mordant Rime" then
		equip(sets.WSD)
	end

  	if string.find(spell.english,'Warp') or string.find(spell.english,'Tele') then 
		--DO NOTHING
	end
  
	if spell.skill == 'Enhancing Magic' or 	string.find(spell.english,'Cur') then 
		equip(sets.FastCast)
	end
  
end

function midcast(spell)
	if string.find(spell.english,'Cur') then 
		equip(sets.Cure)
	end
	if spell.name == 'Stoneskin' then
		equip(sets.Stoneskin)
	end
	if spell.type == 'BardSong' then
	  if string.find(spell.english,'Lullaby') then
	    equip(sets.Sleep,{main="Carnwenhan"})
	  elseif string.find(spell.english,'Elegy') then
		equip(sets.MagicAccuracy,{main="Carnwenhan"})
	  elseif string.find(spell.english,'Ballad') then
	    equip(sets.Ballad,{main="Carnwenhan",})
	  else
		equip(sets.Songs,{main="Carnwenhan"})
	  end
	end
	if spell.name == 'Cursna' then
		equip(sets.Cursna)
	end
  	if string.find(spell.english,'Warp') or string.find(spell.english,'Tele') then 
		--DO NOTHING
	end
	--Enhancing Magic Check
	if spell.skill == 'Enhancing Magic' then
		equip(sets.Enhancing)
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
		send_command('@input /tell <me> Wake up Voreus')
	end
end)
