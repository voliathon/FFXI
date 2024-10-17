function get_sets()
-- Set macro book/set --
    send_command('input /macro book 7;wait .1;input /macro set 1')
	
	-- Binds for modes
    send_command('bind !f8 gs c toggle weapon set')
	send_command('bind ^f8 gs c reverse weapon set')
	-- Binds for switching GEAR modes	
    send_command('bind !f9 gs c toggle GEAR set')
	send_command('bind ^f9 gs c reverse GEAR set')

	-- Modes --
	Capacity = 'OFF' -- Press ctrl + F11 if you want to be in Capacity mode  --	
	ShiningOne = 'OFF' -- Toogle on/off the Lionheart and Epeolatry via ctrl + F9
	ShadowType = 'None'
	
	--GEAR Sets--
	sets.GEAR = {}
	--					  1		   2              3 				   4 		  5			   6
	sets.GEAR.index = {'BadAss', 'Tank', 'TakingLessMagicDamage', 'Accuracy', 'Reraise', 'SubtleBlow'}
	GEAR_ind = 1

  --offensive melee set
  sets.GEAR.BadAss = {
  	sub="Utu grip",
	ammo="Ginsen",
	head="Flamma zucchetto +2",
	body="Kasuga domaru +3",
	hands="Wakido kote +3",
	legs="Kasuga haidate +3",
	feet="Tatenashi sune-ate +1",
	neck="Samurai's nodowa +2",
	waist="Ioskeha Belt +1",
	left_ear="Cessance earring",
	right_ear="Brutal Earring",
	left_ring="Chirich Ring +1",
	right_ring="Flamma ring",
    back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%'}}
  }

  --Tank Gear
  sets.GEAR.Tank = {
	sub="Utu grip",
    ammo="Staunch Tathlum +1",
    head="Nyame Helm",
	body="Kasuga domaru +3",
    hands="Nyame Gauntlets",
	legs="Kasuga haidate +3",
    feet="Nyame Sollerets",
    neck={ name="Loricate Torque +1", augments={'Path: A'}},
    waist="Ioskeha Belt +1",
    left_ear="Infused Earring",
    right_ear="Genmei Earring",
    left_ring="Fortified Ring",
    right_ring="Defending Ring",
    back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%'}}
  }
  
  --Tank Gear
  sets.GEAR.Reraise = {
	sub="Utu grip",
    ammo="Staunch Tathlum +1",
    head="Crepuscular Helm",
	body="Crepuscular mail",
    hands="Nyame Gauntlets",
	legs="Kasuga haidate +3",
    feet="Nyame Sollerets",
    neck={ name="Loricate Torque +1", augments={'Path: A'}},
    waist="Ioskeha Belt +1",
    left_ear="Infused Earring",
    right_ear="Genmei Earring",
    left_ring="Fortified Ring",
    right_ring="Defending Ring",
    back="Moonlight cape"
  }  

  --MDT melee set
  sets.GEAR.TakingLessMagicDamage = {
	sub="Utu grip",
    ammo="Staunch Tathlum +1",
    head={ name="Nyame Helm", augments={'Path: B',}},
    body="Kasuga Domaru +3",
    hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
    neck={ name="Sam. Nodowa +2", augments={'Path: A',}},
    waist="Ioskeha Belt +1",
    left_ear="Infused Earring",
    right_ear="Genmei Earring",
    left_ring="Fortified Ring",
    right_ring="Chirich Ring +1",
    back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%',}}
  }
  
  sets.GEAR.Accuracy = {
	ammo="Amar cluster",
	head="Kendatsuba jinpachi +1",
	body="Kasuga domaru +3",
	hands="Kasuga kote +3",
	legs="Kasuga haidate +3",
	feet="Kasuga sune-ate +2",
	neck="Samurai's nodowa +2",
	waist="Ioskeha Belt +1",
	left_ear="Cessance earring",
	right_ear="Brutal Earring",
	left_ring="Chirich Ring +1",
	right_ring="Chirich Ring +1",
    back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%'}}
  }
  
  sets.GEAR.SubtleBlow = {
    ammo="Ginsen",
    head="Ken. Jinpachi +1",
    body="Ken. Samue +1",
    hands="Ken. Tekko +1",
    legs="Ken. Hakama +1",
    feet="Ken. Sune-Ate +1",
    neck="Sam. Nodowa +2",
    waist={ name="Sailfi Belt +1", augments={'Path: A'}},
    left_ear="Cessance Earring",
    right_ear="Digni. Earring",
    left_ring="Chirich Ring +1",
    right_ring="Chirich Ring +1",
    back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%'}}
  }  

  --Weaponskill Sets--
  --Mumei, Fudo, Kasha, Gekko, Yuk 
	sets.Fudo = {
		ammo="Knobkierrie",
		head={ name="Valorous Mask", augments={'MND+10','"Resist Silence"+4','Weapon skill damage +10%'}},
		body="Nyame mail",
		hands="Kasuga kote +3",
		legs="Wakido Haidate +3",
		feet={ name="Valorous Greaves", augments={'STR+3','Weapon Skill Acc.+4','Weapon skill damage +6%','Accuracy+12 Attack+12','Mag. Acc.+10 "Mag.Atk.Bns."+10'}},
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Thrud Earring",
		right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250'}},
		left_ring="Epaminondas's Ring",
		right_ring="Chirich Ring +1",
		back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%'}}
	}
  
	sets.Shoha = {
		ammo="Knobkierrie",
		head="Mpaca's Cap",
		body="Nyame mail",
		hands="Kasuga kote +3",
		legs="Wakido Haidate +3",
		feet={ name="Valorous Greaves", augments={'STR+3','Weapon Skill Acc.+4','Weapon skill damage +6%','Accuracy+12 Attack+12','Mag. Acc.+10 "Mag.Atk.Bns."+10'}},
		neck="Fotia Gorget",
		waist="Sailfi Belt +1",
		left_ear="Thrud Earring",
		right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250'}},
		left_ring="Epaminondas's Ring",
		right_ring="Chirich Ring +1",
		back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%'}}
	}
	
	sets.Jinpu = {
		ammo="Knobkierrie",
		head="Nyame Helm",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck={ name="Sam. Nodowa +2", augments={'Path: A'}},
		waist="Fotia Belt",
		left_ear="Friomisi Earring",
		right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250'}},
		left_ring="Fenrir Ring +1",
		right_ring="Stikini Ring +1",
		back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%'}}	
	}
	
	sets.Ageha = {
		ammo="Pemphredo Tathlum",
		head="Kasuga Kabuto +2",
		body="Kasuga domaru +3",
		hands="Kasuga kote +3",
		legs="Kasuga haidate +3",
		feet="Kas. Sune-Ate +2",
		neck="Sanctity Necklace",
		waist="Fotia Belt",
		left_ear="Digni. Earring",
		right_ear={ name="Kasuga Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+6','Mag. Acc.+6'}},
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%'}}	
	}
	
	
	sets.Stardiver = {
		ammo="Coiste Bodhar",
		head="Mpaca's Cap",
		body="Nyame mail",
		hands="Ken. Tekko +1",
		legs="Ken. Hakama +1",
		feet="Kas. Sune-Ate +2",
		neck={ name="Sam. Nodowa +2", augments={'Path: A'}},
		waist="Fotia Belt",
		left_ear="Schere Earring",
		right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250'}},
		left_ring="Sroda Ring",
		right_ring="Chirich Ring +1",
		back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%'}}		
	}

	--Job Ability Sets--
	sets.JA = {}
	sets.JA.Waltz = {legs="Dashing subligar"}
	sets.JA.Step = 	{}
	sets.JA.Stun = {}
	sets.JA.Sengikori = {feet="Kasuga sune-ate +2"}	
	sets.JA.Meditate = {head="Wakido kabuto +2", hands="Sao. Kote +2"}
	sets.JA.Hasso = {hands="Wakido kote +3", legs="Kasuga haidate +3", feet="Wakido sune-ate +2"}
	sets.JA.WardingCircle = {head="Wakido kabuto +2"}
	sets.JA.ThirdEye = {legs="Sakonji Haidate +1"}
	sets.JA.Sekkanoki = {hands="Kasuga kote +3"}
 
	--Weapon Sets--
	sets.weapon = {}
	sets.weapon.index = {'Dojikiri','Masamune','ShiningOne'}
	weapon_ind = 1 
	
	sets.weapon.Dojikiri = {
		main="Dojikiri Yasutsuna",
		sub="Utu Grip"
	}
	
	sets.weapon.Masamune = {
		main="Masamune",
		sub="Utu Grip"
	}
	
	
	sets.weapon.ShiningOne = {
		main="Shining One",
		sub="Utu Grip"
	}
 
end


function precast(spell,abil)
  if string.find(spell.english, 'Waltz') then
	equip(sets.JA.Waltz)
  end	
  
  --equips favorite weapon if disarmed
  if player.equipment.main == "empty" or player.equipment.sub == "empty" then
    equip_current()
  end
  
  if spell.name == 'Hasso' then
    equip(sets.JA.Hasso)
  end
  if spell.name == 'Meditate' then
    equip(sets.JA.Meditate)
  end
  if spell.name == 'Warding Circle' then
    equip(sets.JA.WardingCircle)
  end
  if spell.name == "Third Eye" then
	equip(sets.JA.ThirdEye)
  end
  if spell.name == 'Sengikori' then
	equip(sets.JA.Sengikori)
  end
  if spell.name == 'Sekkanoki' then
	equip(sets.JA.Sekkanoki)
  end
  
  --Weaponskill Lookups
  if spell.name == 'Tachi: Fudo' or spell.name == 'Tachi: Kasha' or spell.name == 'Tachi:Mumei' or spell.name == 'Tachi:Gekko' or spell.name == 'Tachi:Yukikaze' then
    equip(sets.Fudo)
  elseif spell.name == 'Tachi: Shoha' then
	equip(sets.Shoha)
  elseif spell.name == 'Tachi: Jinpu' then
    equip(sets.Jinpu)
  elseif spell.name == 'Tachi: Ageha' then
    equip(sets.Ageha)
  elseif spell.name == 'Impulse Drive' or spell.name == 'Sonic Thrust' then 
	equip(sets.Fudo)
  elseif spell.name == 'Stardiver' then
    equip(sets.Stardiver)
  end
  
  --prevents casting Utsusemi if you already have 3 or more shadows
  if spell.name == 'Utsusemi: Ichi' and ShadowType == 'Ni' and (buffactive['Copy Image (3)'] or buffactive['Copy Image (4+)']) then
    cancel_spell()
  end
    --Utsusemi Check
  if string.find(spell.name,'Utsusemi') then
    equip({neck="Magoraga Beads"})
  end
  
end


function aftercast(spell)
  equip_current()
  --Just running a lil somethin-somethin to track Shadows
  if string.find(spell.name,'Utsusemi') and not spell.interrupted then
    if spell.name == 'Utsusemi: Ichi' then
      ShadowType = 'Ichi'
    elseif spell.name == 'Utsusemi: Ni' then
      ShadowType = 'Ni'
    end
  end
end


--This function should only get kicked off when you're engaging.  
--If I want a manual 'Refresh' set or 'MDT' or 'DT' set I can do that in game with equipsets.  
--But I don't want to fuck myself by ignoring the engaged check.
--I'm also deciding not to use a Binding Key to put my in a MDT, PDT, DT, Refresh Set.
--I dunno, I'm just against hitting Ctrl+f# all the time for that shit
function equip_current()
	equip(sets.weapon[sets.weapon.index[weapon_ind]])
	equip(sets.GEAR[sets.GEAR.index[GEAR_ind]]) 
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
	elseif command == 'toggle GEAR set' then
		GEAR_ind = GEAR_ind +1
		if GEAR_ind > #sets.GEAR.index then GEAR_ind = 1 end
		send_command('@input /echo <----- Gear Set changed to '..sets.GEAR.index[GEAR_ind]..' ----->')
		equip_current()
	elseif command == 'reverse GEAR set' then
		GEAR_ind = GEAR_ind -1
		if GEAR_ind == 0 then GEAR_ind = #sets.GEAR.index end
		send_command('@input /echo <----- Gear Set changed to '..sets.GEAR.index[GEAR_ind]..' ----->')
		equip_current()
	end
end


-- Send tell to self if I died --
windower.register_event('status change', function()
	if player.status == 'Dead' then
	send_command('@input /tell <me> Wakies Wakies  For some Weird Ass Reason my character died')
	end
end)
