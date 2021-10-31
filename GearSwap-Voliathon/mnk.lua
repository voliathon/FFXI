function get_sets()

	
	
-- Set macro book/set --
    send_command('input /macro book 15;wait .1;input /macro set 1')
	
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
		ammo="Ginsen",
		head="Kendatsuba jinpachi +1",
		body="Kendatsuba samue +1",
		hands="Kendatsuba tekko +1",
		legs="Kendatsuba hakama +1",
		feet="Kendatsuba sune-ate +1",
		neck="Moonlight nodowa",
		waist="Moonbow Belt +1",
		left_ear="Cessance earring",
		right_ear="Brutal Earring",
		left_ring="Chirich Ring +1",
		right_ring="Chirich Ring +1",
		back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Phys. dmg. taken-10%'}}		
    }	

    sets.TP.Impetus = {
		ammo="Ginsen",
		head="Kendatsuba jinpachi +1",
		body="Bhikku Cyclas +1",
		hands="Kendatsuba tekko +1",
		legs="Kendatsuba hakama +1",
		feet="Kendatsuba sune-ate +1",
		neck="Moonlight nodowa",
		waist="Moonbow Belt +1",
		left_ear="Cessance earring",
		right_ear="Brutal Earring",
		left_ring="Chirich Ring +1",
		right_ring="Chirich Ring +1",
		back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Phys. dmg. taken-10%'}}		
	}
	
	sets.TP.Movement = {
		feet="Hermes' Sandals"
	}
	
	sets.TP.Tank = {
		ammo="Staunch Tathlum +1",
		head="Malignance Chapeau",
		body="Ashera Harness",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck={ name="Loricate Torque +1", augments={'Path: A'}},
		waist="Moonbow Belt +1",
		left_ear="Cryptic Earring",
		right_ear="Genmei Earring",
		left_ring="Fortified Ring",
		right_ring="Defending Ring",
		back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Phys. dmg. taken-10%'}}
	}
    
	sets.TP.Accuracy = set_combine(sets.TP.BadAss, {})
	
	sets.TP.TH = {
		ammo="Ginsen",
		head={ name="Herculean Helm", augments={'Attack+19','STR+5','"Treasure Hunter"+2','Accuracy+20 Attack+20'}},
		body="Ken. Samue +1",
		hands={ name="Herculean Gloves", augments={'"Waltz" potency +4%','"Rapid Shot"+1','"Treasure Hunter"+2'}},
		legs="Ken. Hakama +1",
		feet={ name="Herculean Boots", augments={'"Store TP"+7','Mag. Acc.+5','"Treasure Hunter"+2','Mag. Acc.+18 "Mag.Atk.Bns."+18'}},
		neck="Moonlight Nodowa",
		waist="Chaac Belt",
		left_ear="Cessance Earring",
		right_ear="Brutal Earring",
		left_ring="Chirich Ring +1",
		right_ring="Chirich Ring +1",
		back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Phys. dmg. taken-10%'}}
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
		ammo="Amar Cluster",
		head="Hes. Crown +2",
		body={ name="Herculean Vest", augments={'Attack+14','Damage taken-1%','Weapon skill damage +7%','Accuracy+11 Attack+11'}},
		hands="Ken. Tekko +1",
		legs="Kendatsuba hakama +1",
		feet="Ken. Sune-Ate +1",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		right_ear="Brutal Earring",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250'}},
		left_ring="Chirich Ring +1",
		right_ring="Epaminondas's Ring",
		back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Phys. dmg. taken-10%'}}		
	}
	
	sets.WS.FinalHeaven = {
		ammo="Amar Cluster",
		head={ name="Adhemar Bonnet +1", augments={'STR+12','DEX+12','Attack+20'}},
		body="Ken. Samue +1",
		hands="Ken. Tekko +1",
		legs="Hiza. Hizayoroi +2",
		feet="Ken. Sune-Ate +1",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		right_ear="Ishvara Earring",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250'}},
		left_ring="Rajas Ring",
		right_ring="Epaminondas's Ring",
		back={ name="Segomo's Mantle", augments={'VIT+10','Accuracy+10 Attack+10','Weapon skill damage +10%'}}
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
