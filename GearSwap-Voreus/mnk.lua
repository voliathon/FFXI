function get_sets()

	
	
-- Set macro book/set --
    send_command('input /macro book 10;wait .1;input /macro set 1')
	
		-- Binds for modes
	--Toggle TP sets button, change if you want; currently ALT+F9 toggles forward, CTRL+F9 toggles backwards
  	send_command('bind ^f8 gs c C8') 
    send_command('bind !f9 gs c toggle TP set')
	send_command('bind ^f9 gs c reverse TP set')
	
		-- Modes --
	Capacity = 'OFF' -- Press ctrl + F11 if you want to be in Capacity mode  --	
	Godhands = 'OFF' -- Toogle on/off the Godhands and Spharai via ctrl + F8
		
    sets.precast = {}
    sets.precast.Boost = {hands="Hes. Gloves +1"}
    sets.precast.Chakra = {body="Anchorite's Cyclas +1",hands="Hes. Gloves +1"}
    sets.precast.Counterstance = {feet="Hesychast's Gaiters +1"}
    sets.precast.Focus = {head="Anchorite's Crown +1"}
    sets.precast.Dodge = {feet="Anchorite's Gaiters +1"}
    sets.precast.Mantra = {feet="Hes. Gaiters +1"}
    sets.precast.Footwork = {feet="Anchorite's gaiters +1"}
	sets.precast.Impetus={body="Bhikku Cyclas +1"}
    sets.precast['Hundred Fists'] = {legs="Hes. Hose +1"}
    sets.Waltz = {head="Mummu bonnet+2"}	
	
	  --TP Sets--
	sets.TP = {}
--					  1		      2        3 		4		  5
  sets.TP.index = {'BadAss', 'Movement', 'Tank', 'Accuracy', 'TH'}
  TP_ind = 1
	
    sets.TP.BadAss = {
		ammo="Aurgelmir Orb",
		head={ name="Herculean Helm", augments={'Attack+22','"Triple Atk."+3','DEX+9','Accuracy+5',}},
		body="Ken. Samue +1",
		hands={ name="Herculean Gloves", augments={'"Triple Atk."+2','STR+12','Accuracy+4','Attack+9',}},
		legs={ name="Samnuha Tights", augments={'STR+9','DEX+8','"Dbl.Atk."+2','"Triple Atk."+2',}},
		feet={ name="Herculean Boots", augments={'Attack+17','"Triple Atk."+3','STR+10','Accuracy+3',}},
		neck="Null loop",
		waist="Moonbow Belt",
		left_ear="Cessance Earring",
		right_ear="Brutal Earring",
		left_ring="Chirich Ring +1",
		right_ring="Rajas Ring",
		back="Agema Cape"	
    }	

    sets.TP.Impetus = {
		ammo="Aurgelmir Orb",
		head={ name="Herculean Helm", augments={'Attack+22','"Triple Atk."+3','DEX+9','Accuracy+5',}},
		body="Ken. Samue +1",
		hands={ name="Herculean Gloves", augments={'"Triple Atk."+2','STR+12','Accuracy+4','Attack+9',}},
		legs={ name="Samnuha Tights", augments={'STR+9','DEX+8','"Dbl.Atk."+2','"Triple Atk."+2',}},
		feet={ name="Herculean Boots", augments={'Attack+17','"Triple Atk."+3','STR+10','Accuracy+3',}},
		neck="Null loop",
		waist="Moonbow Belt",
		left_ear="Cessance Earring",
		right_ear="Brutal Earring",
		left_ring="Chirich Ring +1",
		right_ring="Rajas Ring",
		back="Agema Cape"	
	}
	
	sets.TP.Tank = {
		ammo="Staunch Tathlum +1",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Mummu Kecks +2",
		feet="Malignance Boots",
		neck="Loricate Torque +1",
		waist="Moonbow Belt",
		left_ear="Infused Earring",
		right_ear="Genmei Earring",
		left_ring="Defending Ring",
		right_ring="Fortified Ring",
		back="Moonbeam Cape"	
	}

	sets.TP.Movement = set_combine(sets.TP.BadAss, {
		feet="Hermes' Sandals"
	})
    
	sets.TP.Accuracy = set_combine(sets.TP.BadAss, {})
	
	sets.TP.TH = {
		body={ name="Herculean Vest", augments={'Mag. crit. hit dmg. +2%','Pet: Attack+5 Pet: Rng.Atk.+5','"Treasure Hunter"+2'}}
	}

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
	--Final Heaven --- VIT 80%
	--Shoulder Tackle/One Inch Punch --- VIT 100%
    sets.WS = {}
	
	sets.WS.VictorySmite = {
		ammo="Aurgelmir Orb",
		head="Ken. Jinpachi +1",
		body={ name="Herculean Vest", augments={'Weapon skill damage +4%','DEX+7','Crit.hit rate+2',}},
		hands="Malignance Gloves",
		legs="Hiza. Hizayoroi +2",
		feet="Ken. Sune-Ate +1",
		neck="Fotia Gorget",
		waist="Moonbow Belt",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Ishvara Earring",
		left_ring="Epaminondas's Ring",
		right_ring="Ifrit Ring +1",
		back="Vespid Mantle"	
	}
	
	sets.WS.FinalHeaven = {
		ammo="Aurgelmir Orb",
		head="Ken. Jinpachi +1",
		body={ name="Herculean Vest", augments={'Weapon skill damage +4%','DEX+7','Crit.hit rate+2',}},
		hands="Malignance Gloves",
		legs="Hiza. Hizayoroi +2",
		feet="Ken. Sune-Ate +1",
		neck="Fotia Gorget",
		waist="Moonbow Belt",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Ishvara Earring",
		left_ring="Epaminondas's Ring",
		right_ring="Ifrit Ring +1",
		back="Vespid Mantle"	
	}
    
    
    sets.status = {}
    sets.status.Engaged = sets.TP
    
    sets.status.Idle = set_combine(sets.TP.Tank, {})
	
	  --Job Ability Sets--
  sets.JA = {}
  -- Dancer's Abilities --
  sets.JA.Waltz = {legs="Dashing subligar"}

end

function precast(spell)
	-- Dancer Abilities --
  if string.find(spell.english, 'Waltz') then
	equip(sets.JA.Waltz)
  end	
    if spell.english == 'Tornado Kick' and buffactive.Footwork then
        equip(sets.WS.FinalHeaven)
		equip({feet="Anchorite's gaiters +1"})
	elseif spell.english == 'Victory Smite' or spell.english == 'Raging Fists' then
		equip(sets.WS.VictorySmite)
    elseif spell.type=="WeaponSkill" then
        equip(sets.WS.FinalHeaven)
    elseif string.find(spell.english,'Waltz') then
        equip(sets.Waltz)		
    elseif sets.precast[spell.english] then
        equip(sets.precast[spell.english])

    end
end

function aftercast(spell)
	if (spell.english == 'Impetus') then
		equip({body="Bhikku Cyclas +1"})
	else
		equip_current()	
	end
end


function equip_current()
	equip(sets.TP[sets.TP.index[TP_ind]]) 
	if (buffactive['Impetus']) then
		equip({body="Bhikku Cyclas +1"})
	end
end

--Function use for Changing the TP Set.  Ctrl+F9 is your meal ticket
--123 is a red color for the text output
--158 is a green color for the text output
function self_command(command)
	if command == 'C8' then -- Godhands to Spharai --	
        if Godhands == 'ON' then
            Godhands = 'OFF'
			equip({main="Spharai"})
            add_to_chat(158,'Spharai Weapon: [ON]')
			add_to_chat(123,'Godhands Weapon: [OFF]')
		else
            Godhands = 'ON'
			equip({main="Godhands"})
            add_to_chat(158,'Godhands Weapon: [ON]')
            add_to_chat(123,'Spharai Weapon: [OFF]')				
        end
       -- status_change(player.status)
	elseif command == 'toggle TP set' then
		TP_ind = TP_ind -1
		if TP_ind == 0 then TP_ind = #sets.TP.index end
		send_command('@input /echo <----- Gear Set changed to '..sets.TP.index[TP_ind]..' ----->')
		equip_current()	
	elseif command == 'reverse TP set' then
		TP_ind = TP_ind +1
		if TP_ind > #sets.TP.index then TP_ind = 1 end
		send_command('@input /echo <----- Gear Set changed to '..sets.TP.index[TP_ind]..' ----->')
		equip_current()
	end
end


-- Send tell to self if I died --
windower.register_event('status change', function()
	if player.status == 'Dead' then
	send_command('@input /tell <me> Wakies Wakies Voliathon!!! For some Weird Ass Reason my you dead')
	end
end)
