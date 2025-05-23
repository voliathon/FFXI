function get_sets()
-- Set macro book/set --
    send_command('input /macro book 9;wait .1;input /macro set 1')
	
	-- Binds for modes
	--Toggle TP sets button, change if you want; currently ALT+F9 toggles forward, CTRL+F9 toggles backwards
  	send_command('bind ^f8 gs c C8') 
    send_command('bind !f9 gs c toggle TP set')
	send_command('bind ^f9 gs c reverse TP set')

	-- Modes --
	Capacity = 'OFF' -- Press ctrl + F11 if you want to be in Capacity mode  --	
	ShiningOne = 'OFF' -- Toogle on/off the Doji and Lionheart via ctrl + F9
	ShadowType = 'None'
	
  --TP Sets--
  sets.TP = {}
--					  1		   2              3 				   4 
  sets.TP.index = {'BadAss', 'Tank', 'TakingLessMagicDamage', 'Accuracy'}
  TP_ind = 1

  --offensive melee set
  sets.TP.BadAss = {
	main="Shining One",
	ammo="Ginsen",
	head="Flamma zucchetto +2",
	body="Kendatsuba samue +1",
	hands="Kendatsuba tekko +1",
	legs="Ryuo hakama +1",
	feet="Flamma Gambieras +2",
	neck="Null loop",
	waist="Ioskeha Belt +1",
	left_ear="Cessance earring",
	right_ear="Brutal Earring",
	left_ring={name="Chirich Ring +1", bag="Wardrobe 3"},
	right_ring={name="Chirich Ring +1", bag="Wardrobe 4"},
	back="Null shawl"
  }

  --Tank Gear
  sets.TP.Tank = {
	main="Shining One",
	sub="Mensch Strap +1",
    ammo="Staunch Tathlum +1",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Null loop",
    waist="Null belt",
    left_ear="Infused Earring",
    right_ear="Genmei Earring",
    left_ring="Fortified Ring",
    right_ring="Defending Ring",
	back="Null shawl"
  }

  --MDT melee set
  sets.TP.TakingLessMagicDamage = {
	main="Shining One",
	sub="Mensch Strap +1",
	ammo="Staunch Tathlum +1",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Null loop",
    waist="Null belt",
    left_ear="Infused Earring",
    right_ear="Genmei Earring",
    left_ring="Fortified Ring",
    right_ring="Defending Ring",
	back="Null shawl"
  }
  
  sets.TP.Accuracy = {
	main="Shining One",
	ammo="Amar cluster",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
	neck="Null loop",
	waist="Null belt",
	left_ear="Cessance earring",
	right_ear="Brutal Earring",
	left_ring={name="Chirich Ring +1", bag="Wardrobe 3"},
	right_ring={name="Chirich Ring +1", bag="Wardrobe 4"},
	back="Null shawl"
  }

  --Weaponskill Sets--
  sets.WS = {}

  --multi, Shoha, Fudo, Kasha need STR for the modifier
  sets.Single = {
    main="Shining One",
    sub="Mensch Strap +1",
    ammo="Ginsen",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Ishvara Earring",
    right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    left_ring="Epaminondas's Ring",
    right_ring="Chirich Ring +1",
	back="Null shawl"
  }

  --Job Ability Sets--
  sets.JA = {}
  
  -- Dancer's Abilities --
  sets.JA.Waltz = {legs="Dashing subligar"}
  sets.JA.Step = 	{}
  sets.JA.Stun = {}
	
  sets.JA.Sengikori = {feet="Kasuga sune-ate +1"}	
  sets.JA.Meditate = {head="Wakido kabuto +1", hands="Sao. Kote +2"}
  sets.JA.Hasso = {hands="Wakido kote +1", legs="Kasuga haidate +1", feet="Wakido sune-ate +2"}
  sets.JA.WardingCircle = {head="Wakido kabuto +1"}
  sets.JA.ThirdEye = {legs="Sakonji Haidate"}
  sets.JA.Sekkanoki = {hands="Kasuga kote +1"}
 
end


function precast(spell,abil)

	-- Dancer Abilities --
  if string.find(spell.english, 'Waltz') then
	equip(sets.JA.Waltz)
  end	
  
  --equips favorite weapon if disarmed
  if player.equipment.main == "empty" or player.equipment.sub == "empty" then
    equip({main="Shining One",sub="Mensch Strap +1"})
    add_to_chat(158,'Shining One Weapon: [ON]')
	ShiningOne = 'OFF'
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
  --WS Lookups
  if spell.name == 'Tachi: Shoha' or spell.name == 'Tachi: Fudo' or spell.name == 'Tachi: Kasha' then
    equip(sets.Single)
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
	equip(sets.TP[sets.TP.index[TP_ind]]) 
end

--Function use for Changing the TP Set.  Ctrl+F9 is your meal ticket
--123 is a red color for the text output
--158 is a green color for the text output
function self_command(command)
	if command == 'C8' then -- Shining One to Shining One --	
        if ShiningOne == 'ON' then
            ShiningOne = 'OFF'
			equip({main="Dojikiri Yasutsuna", sub="Mensch Strap +1"})
            add_to_chat(158,'Dojikiri Yasutsuna : [ON]')
			add_to_chat(123,'Shining One : [OFF]')
		else
            ShiningOne = 'ON'
			equip({main="Shining One", sub="Mensch Strap +1"})
            add_to_chat(158,'Shining One : [ON]')
            add_to_chat(123,'Dojikiri Yasutsuna : [OFF]')				
        end
       -- status_change(player.status)
	elseif command == 'toggle TP set' then
		TP_ind = TP_ind +1
		if TP_ind > #sets.TP.index then TP_ind = 1 end
		send_command('@input /echo <----- Gear Set changed to '..sets.TP.index[TP_ind]..' ----->')
		equip_current()
	elseif command == 'reverse TP set' then
		TP_ind = TP_ind -1
		if TP_ind == 0 then TP_ind = #sets.TP.index end
		send_command('@input /echo <----- Gear Set changed to '..sets.TP.index[TP_ind]..' ----->')
		equip_current()
	end
end


-- Send tell to self if I died --
windower.register_event('status change', function()
	if player.status == 'Dead' then
	send_command('@input /tell <me> Wakies Wakies  For some Weird Ass Reason my character died')
	end
end)
