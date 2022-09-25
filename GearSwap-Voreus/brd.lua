function get_sets()
-- Set macro book/set --
    send_command('input /macro book 8;wait .1;input /macro set 1')
	
	-- Binds for modes
	--Toggle TP sets button, change if you want; currently ALT+F9 toggles forward, CTRL+F9 toggles backwards
  	send_command('bind ^f8 gs c C8') 

	-- Modes --
	Capacity = 'OFF' -- Press ctrl + F11 if you want to be in Capacity mode  --	
	Marsyas = 'OFF' -- Toogle on/off the Marsyas and Gjallarhorn via ctrl + F9
	
    -- Precast Sets
    sets.precast = {}
	sets.precast.JA = {}
    sets.precast.JA.Nightingale = {feet="Bihu Slippers +1"}
    sets.precast.JA.Troubadour = {body="Bihu Justaucorps +1"}
    sets.precast.JA['Soul Voice'] = {legs="Bihu Cannions +1"}
	
    sets.precast['Honor March'] = {range="Marsyas",ammo=empty}
	

	
  --Idle Sets--
  sets.Idle = {
    main="Mafic cudgel",
    sub="Genmei Shield",
    head="Inyanga Tiara +2",
    body="Inyanga Jubbah +2",
    hands="Inyan. Dastanas +2",
    legs="Inyanga Shalwar +2",
    feet="Ayanmo gambieras +2",
    neck="Loricate torque +1",
    waist="Refoccilation Stone",
    left_ear="Genmei Earring",
    right_ear="Musical Earring",
    left_ring="Moonbeam Ring",
    right_ring="Defending Ring",
    back="Intarabus's cape"
  }

  sets.MagicAccuracy = {
	main="Grioavolr",
	sub="Clerisy strap",
    head="Inyanga Tiara +2",
    body="Inyanga Jubbah +2",
    hands="Inyan. Dastanas +2",
    legs="Inyanga Shalwar +2",
    feet="Aya. Gambieras +2",
    neck="Mnbw. Whistle +1",
    waist="Refoccilation Stone",
    left_ear="Enchntr. Earring +1",
    right_ear="Musical Earring",
    left_ring="Adoulin Ring",
    right_ring="Sangoma Ring",
    back="Intarabus's cape"
  }
  
  sets.Songs = {
    main="Kali",
    sub="Genmei Shield",
    head="Fili Calot +1",
    body="Fili Hongreline",
    hands="Fili Manchettes +1",
    legs="Fili Rhingrave +1",
    feet="Fili Cothurnes +1",
    neck="Mnbw. Whistle +1",
    waist="Witful Belt",
    left_ear="Enchntr. Earring +1",
    right_ear="Musical Earring",
    left_ring="Adoulin Ring",
    right_ring="Sangoma Ring",
    back="Intarabus's cape"
  }
  
  sets.Cure = {
    head="Reveal. Crown +1",
    body="Inyanga Jubbah +2",
    hands="Revealer's Mitts",
    legs="Praeco Slacks",
    feet="Vanya Clogs",
    neck="Weike Torque",
    waist="Acerbic Sash +1",
    left_ear="Enchntr. Earring +1",
    left_ring="Globidonta Ring"
  }

  --Weaponskill Sets--
  sets.WS = {}

  --multi, Shoha, Fudo, Kasha need STR for the modifier
  sets.Single = {

  }

  --Job Ability Sets--
  sets.JA = {}
  
  -- Dancer's Abilities --
  sets.JA.Waltz = {legs="Dashing subligar"}
  sets.JA.Step = 	{}
  sets.JA.Stun = {}
 
end


function precast(spell,abil)
	if spell.type == 'BardSong' then
		if spell.name == 'Honor March' then
			equip({range="Marsyas"})
		end
	equip_song_gear(spell)
	elseif spell.action_type == 'Magic' then
		equip_current()
		--Can add stuff here for other magic. Doesn't have to go to idle at all
	end
	--equips favorite weapon if disarmed
	if player.equipment.range == "empty" or player.equipment.sub == "empty" then
		equip({range="Marsyas"})
		add_to_chat(158,'Marsyas Weapon: [ON]')
		Gjallarhorn = 'OFF'
	end
	--WS Lookups
	if spell.name == "Rudra's Storm"  then
		equip(sets.Single)
	end
  
  
end


function aftercast(spell)
	if spell.type == 'BardSong' then
		equip_current()
	elseif spell.action_type == 'Magic' then
		equip_current()
		--Can add stuff here for other magic. Doesn't have to go to idle at all
	end
end


function midcast(spell)
	if string.find(spell.english,'Cur') then 
		equip(sets.Cure)
	end
end



--This function should only get kicked off when you're engaging.  
--If I want a manual 'Refresh' set or 'MDT' or 'DT' set I can do that in game with equipsets.  
--But I don't want to fuck myself by ignoring the engaged check.
--I'm also deciding not to use a Binding Key to put my in a MDT, PDT, DT, Refresh Set.
--I dunno, I'm just against hitting Ctrl+f# all the time for that shit
function equip_current()
	equip(sets.Idle) 
end

--Function use for Changing the TP Set.  Ctrl+F9 is your meal ticket
--123 is a red color for the text output
--158 is a green color for the text output
function self_command(command)
	 if command == 'C8' then -- Gjallarhorn to Marsyas --	
         if  Marsyas == 'OFF' then 
             Marsyas = 'ON'
			 equip({range="Marsyas"})
             add_to_chat(158,'Marsyas Weapon: [ON]')
			 add_to_chat(123,'Gjallarhorn Weapon: [OFF]')
			 Gjallarhorn = 'OFF'
		 else
			 Marsyas = 'OFF'
             Gjallarhorn = 'ON'
			 equip({range="Gjallarhorn"})
             add_to_chat(158,'Gjallarhorn: [ON]')
             add_to_chat(123,'Marsyas Weapon: [OFF]')				
        
		 end
	 end
end

-- Send tell to self if I died --
windower.register_event('status change', function()
	if player.status == 'Dead' then
	send_command('@input /tell <me> Wakies Wakies  For some Weird Ass Reason my character died')
	end
end)


function equip_song_gear(spell)
    if spell.target.type == 'MONSTER' then
		equip(sets.MagicAccuracy,{range="Marsyas",ammo="empty"})
		Marsyas = 'ON'
		Gjallarhorn = 'OFF'
	else
		equip(sets.Songs)
	end
end
