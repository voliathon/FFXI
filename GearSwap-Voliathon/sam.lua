function get_sets()
-- Set macro book/set --
    send_command('input /macro book 7;wait .1;input /macro set 1')
	
	-- Binds for modes
	--Toggle TP sets button, change if you want; currently ALT+F9 toggles forward, CTRL+F9 toggles backwards
  	send_command('bind ^f8 gs c C8') 
    send_command('bind !f9 gs c toggle TP set')
	send_command('bind ^f9 gs c reverse TP set')

	-- Modes --
	Capacity = 'OFF' -- Press ctrl + F11 if you want to be in Capacity mode  --	
	ShiningOne = 'OFF' -- Toogle on/off the Lionheart and Epeolatry via ctrl + F9
	ShadowType = 'None'
	
  --Idle Sets--
  sets.Idle = {
	sub="Utu grip",
    ammo="Staunch Tathlum +1",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck={ name="Loricate Torque +1", augments={'Path: A',}},
    waist="Ioskeha Belt +1",
    left_ear="Infused Earring",
    right_ear="Genmei Earring",
    left_ring="Fortified Ring",
    right_ring="Defending Ring",
    back="Moonlight cape"
  }

  --TP Sets--
  sets.TP = {}
--					  1		   2              3 				   4 		  5			   6
  sets.TP.index = {'BadAss', 'Tank', 'TakingLessMagicDamage', 'Accuracy', 'Reraise', 'SubtleBlow'}
  TP_ind = 1

  --offensive melee set
  sets.TP.BadAss = {
  	sub="Utu grip",
	ammo="Ginsen",
	head="Flamma zucchetto +2",
	body="Kasuga domaru +2",
	hands="Kasuga kote +2",
	legs="Kasuga haidate +2",
	feet="Flamma Gambieras +2",
	neck="Samurai's nodowa +2",
	waist="Ioskeha Belt +1",
	left_ear="Cessance earring",
	right_ear="Brutal Earring",
	left_ring="Chirich Ring +1",
	right_ring="Flamma ring",
    back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10',}}
  }

  --Tank Gear
  sets.TP.Tank = {
	sub="Utu grip",
    ammo="Staunch Tathlum +1",
    head="Nyame Helm",
	body="Kasuga domaru +2",
    hands="Nyame Gauntlets",
	legs="Kasuga haidate +2",
    feet="Nyame Sollerets",
    neck={ name="Loricate Torque +1", augments={'Path: A',}},
    waist="Ioskeha Belt +1",
    left_ear="Infused Earring",
    right_ear="Genmei Earring",
    left_ring="Fortified Ring",
    right_ring="Defending Ring",
    back="Moonlight cape"
  }
  
  --Tank Gear
  sets.TP.Reraise = {
	sub="Utu grip",
    ammo="Staunch Tathlum +1",
    head="Crepuscular Helm",
	body="Crepuscular mail",
    hands="Nyame Gauntlets",
	legs="Kasuga haidate +2",
    feet="Nyame Sollerets",
    neck={ name="Loricate Torque +1", augments={'Path: A',}},
    waist="Ioskeha Belt +1",
    left_ear="Infused Earring",
    right_ear="Genmei Earring",
    left_ring="Fortified Ring",
    right_ring="Defending Ring",
    back="Moonlight cape"
  }  

  --MDT melee set
  sets.TP.TakingLessMagicDamage = {
	sub="Utu grip",
	ammo="Staunch tathlum +1",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck={ name="Loricate Torque +1", augments={'Path: A',}},
    waist="Ioskeha Belt +1",
    left_ear="Infused Earring",
    right_ear="Genmei Earring",
    left_ring="Fortified Ring",
    right_ring="Defending Ring",
    back="Moonlight cape"
  }
  
  sets.TP.Accuracy = {
	ammo="Amar cluster",
	head="Kendatsuba jinpachi +1",
	body="Kasuga domaru +2",
	hands="Kasuga kote +2",
	legs="Kasuga haidate +2",
	feet="Kasuga sune-ate +2",
	neck="Samurai's nodowa +2",
	waist="Ioskeha Belt +1",
	left_ear="Cessance earring",
	right_ear="Brutal Earring",
	left_ring="Chirich Ring +1",
	right_ring="Chirich Ring +1",
    back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10'}}
  }
  
  sets.TP.SubtleBlow = {
    ammo="Ginsen",
    head="Ken. Jinpachi +1",
    body="Ken. Samue +1",
    hands="Ken. Tekko +1",
    legs="Ken. Hakama +1",
    feet="Ken. Sune-Ate +1",
    neck="Sam. Nodowa +2",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Cessance Earring",
    right_ear="Digni. Earring",
    left_ring="Chirich Ring +1",
    right_ring="Chirich Ring +1",
    back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10',}}
  }  

  --Weaponskill Sets--
  sets.WS = {}

  --multi, Shoha, Fudo, Kasha need STR for the modifier
  sets.Single = {
    sub="Utu Grip",
    ammo="Knobkierrie",
    head={ name="Valorous Mask", augments={'MND+10','"Resist Silence"+4','Weapon skill damage +10%',}},
    body={ name="Valorous Mail", augments={'Accuracy+18','Weapon skill damage +4%','Attack+5',}},
    hands="Kasuga kote +2",
    legs="Wakido Haidate +3",
    feet={ name="Valorous Greaves", augments={'STR+3','Weapon Skill Acc.+4','Weapon skill damage +6%','Accuracy+12 Attack+12','Mag. Acc.+10 "Mag.Atk.Bns."+10',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear="Thrud Earring",
    right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    left_ring="Epaminondas's Ring",
    right_ring="Chirich Ring +1",
    back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%'}}
  }
  
  sets.Shoha = {}

  --Job Ability Sets--
  sets.JA = {}
  
  -- Dancer's Abilities --
  sets.JA.Waltz = {legs="Dashing subligar"}
  sets.JA.Step = 	{}
  sets.JA.Stun = {}
	
  sets.JA.Sengikori = {feet="Kasuga sune-ate +2"}	
  sets.JA.Meditate = {head="Wakido kabuto +1", hands="Sao. Kote +2"}
  sets.JA.Hasso = {hands="Wakido kote +1", legs="Kasuga haidate +2", feet="Wakido sune-ate +2"}
  sets.JA.WardingCircle = {head="Wakido kabuto +1"}
  sets.JA.ThirdEye = {legs="Sakonji Haidate"}
  sets.JA.Sekkanoki = {hands="Kasuga kote +2"}
 
end


function precast(spell,abil)

	-- Dancer Abilities --
  if string.find(spell.english, 'Waltz') then
	equip(sets.JA.Waltz)
  end	
  
  --equips favorite weapon if disarmed
  if player.equipment.main == "empty" or player.equipment.sub == "empty" then
    equip({main="Dojikiri Yasutsuna",sub="Utu Grip"})
    add_to_chat(158,'Dojikiri Yasutsuna Weapon: [ON]')
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
	if command == 'C8' then -- Shining One to Dojikiri Yasutsuna --	
        if ShiningOne == 'ON' then
            ShiningOne = 'OFF'
			equip({main="Dojikiri Yasutsuna", sub="Utu Grip"})
            add_to_chat(158,'Dojikiri Yasutsuna Weapon: [ON]')
			add_to_chat(123,'Shining One Weapon: [OFF]')
		else
            ShiningOne = 'ON'
			equip({main="Shining One", sub="Utu Grip"})
            add_to_chat(158,'Shining One Weapon: [ON]')
            add_to_chat(123,'Dojikiri Yasutsuna Weapon: [OFF]')				
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
