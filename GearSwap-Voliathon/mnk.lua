-- Monk LUA Script made by Voliathon

-- Capes making it easier to call in the lua script
function MonkCapes()
	MonkCapes = {}
	MonkCapes.TP = { name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Phys. dmg. taken-10%'}}
	MonkCapes.VITWS = { name="Segomo's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%'}}
end	

function get_sets()
	--Settings MonkCapes fn()
	MonkCapes()
	
	-- Set macro book/set --
    send_command('input /macro book 15;wait .1;input /macro set 1')
	
		-- Binds for modes
	--Toggle TP sets button, change if you want; currently ALT+F9 toggles forward, CTRL+F9 toggles backwards
  	send_command('bind ^f8 gs c C8') 
    send_command('bind !f9 gs c toggle TP set')
	send_command('bind ^f9 gs c reverse TP set')
	
		-- Modes --
	Godhands = 'OFF' -- Toogle on/off the Godhands and Spharai via ctrl + F8
		
    sets.JA = {}
    sets.JA.Boost = {hands="Anchorite's Gloves +3"}
    sets.JA.Chakra = {body="Anchorite's Cyclas +2", hands="Hes. Gloves +3"}
    sets.JA.Counterstance = {feet="Hesychast's Gaiters +3"}
    sets.JA.Focus = {head="Anchorite's Crown +2"}
    sets.JA.Dodge = {feet="Anchorite's Gaiters +3"}
    sets.JA.Mantra = {feet="Hes. Gaiters +3"}
    sets.JA.Footwork = {feet="Bhikku gaiters +3"}
	sets.JA.Impetus={body="Bhikku Cyclas +3"}
	sets.JA.PerfectCounter={head="Bhikku Crown +3"}
    sets.JA.HundredFists = {legs="Hes. Hose +3"}
	sets.JA.Waltz = {legs="Dashing subligar"}
	sets.JA.FormlessStrikes = {body="Hesychast's Cyclas +3"}

	
	--TP Sets--
	sets.TP = {}
-- 					  1		      2        3 		4		  5
  sets.TP.index = {'BadAss', 'Tank', 'Movement', 'Accuracy', 'TH'}
  TP_ind = 1
	
    sets.TP.BadAss = {
		ammo="Coiste Bodhar",
		head={ name="Adhemar Bonnet +1", augments={'STR+12','DEX+12','Attack+20'}},
		body="Bhikku Cyclas +3",
		hands="Bhikku gloves +3",
		legs="Bhikku Hose +3",
		feet="Anchorite's Gaiters +3",
		neck="Monk's nodowa +2",
		waist="Moonbow Belt +1",
		left_ear="Brutal Earring",
		right_ear="Schere Earring",
		left_ring="Chirich Ring +1",
		right_ring="Chirich Ring +1",
		back=MonkCapes.TP
    }	

    sets.TP.Impetus = {
		body="Bhikku Cyclas +3",
		back={ name="Segomo's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','"Dbl.Atk."+10','Phys. dmg. taken-10%'}}		
	}
	
	sets.TP.Movement = {
		left_ring="Shneddick Ring",
	}
	
	sets.TP.Tank = {
		ammo="Coiste Bodhar",
		head="Bhikku Crown +3",
		body="Mpaca's Doublet",
		hands="Mpaca's Gloves",
		legs="Bhikku Hose +3",
		feet="Mpaca's Boots",
		neck={ name="Mnk. Nodowa +2", augments={'Path: A',}},
		waist="Moonbow Belt +1",
		left_ear="Cessance Earring",
		right_ear="Schere Earring",
		left_ring="Chirich Ring +1",
		right_ring="Chirich Ring +1",
		back=MonkCapes.TP
	}
    
	sets.TP.Accuracy = {
		ammo="Coiste Bodhar",
		head="Bhikku Crown +3",
		body="Mpaca's Doublet",
		hands="Bhikku gloves +3",
		legs="Bhikku Hose +3",
		feet="Mpaca's Boots",
		neck={ name="Mnk. Nodowa +2", augments={'Path: A',}},
		waist="Moonbow Belt +1",
		left_ear="Cessance Earring",
		right_ear="Schere Earring",
		left_ring="Chirich Ring +1",
		right_ring="Chirich Ring +1",
		back=MonkCapes.TP	
	}
	
	sets.TP.TH = set_combine(sets.TP.Tank, {
		head={ name="Herculean Helm", augments={'Attack+19','STR+5','"Treasure Hunter"+2','Accuracy+20 Attack+20'}},
		body="Volte jupon",
		hands={ name="Herculean Gloves", augments={'"Waltz" potency +4%','"Rapid Shot"+1','"Treasure Hunter"+2'}},
		feet={ name="Herculean Boots", augments={'"Store TP"+7','Mag. Acc.+5','"Treasure Hunter"+2','Mag. Acc.+18 "Mag.Atk.Bns."+18'}},
		waist="Chaac Belt"
	})

	--Victory Smite --- STR 80%
	--Ascetic's Fury/Dragon Kick --- STR 50% VIT 50%
	--Howling Fist --- STR 20% DEX 50%
	--Combo/Raging Fists --- STR 30% DEX 30%
	--Spinning Attack --- STR 100%
	--Tornado Kick --- STR 40% VIT 40%
	--Dragon Kick/Backhand Blow --- STR 50% DEX 50%
	--Shijin Spiral --- DEX 73% if maxed
	--Asuran Fists --- STR 15% VIT 15%
	--Final Heaven --- VIT 80%
	--Shoulder Tackle/One Inch Punch --- VIT 100%
    sets.WS = {}
	
	sets.WS.VictorySmite = {
		ammo="Coiste Bodhar",
		head={ name="Adhemar Bonnet +1", augments={'STR+12','DEX+12','Attack+20',}},
		body="Bhikku Cyclas +3",
		hands="Ken. Tekko +1",
		legs="Ken. Hakama +1",
		feet="Ken. Sune-Ate +1",
		neck="Fotia Gorget",
		waist="Moonbow Belt +1",
		left_ear="Brutal Earring",
		right_ear="Schere Earring",
		left_ring="Sroda Ring",
		right_ring="Epaminondas's Ring",
		back=MonkCapes.TP		
	}
	
	sets.WS.FinalHeaven = {
		ammo="Knobkierrie",
		head="Hesychast's crown +3",
		body="Bhikku Cyclas +3",
		hands="Anchorite's gloves +3",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck="Monk's nodowa +2",
		waist="Moonbow Belt +1",
		left_ear="Moonshade Earring",
		right_ear="Ishvara Earring",
		left_ring="Sroda Ring",
		right_ring="Epaminondas's Ring",
		back=MonkCapes.VITWS
	}
	
	sets.WS.RagingFists = {
		ammo="Knobkierrie",
		head="Ken. Jinpachi +1",
		body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},
		hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
		legs="Mpaca's Hose",
		feet={ name="Herculean Boots", augments={'Accuracy+15 Attack+15','"Triple Atk."+3','Accuracy+5',}},
		neck="Fotia Gorget",
		waist="Moonbow Belt +1",
		left_ear="Brutal Earring",
		right_ear="Schere Earring",
		left_ring="Sroda Ring",
		right_ring="Epaminondas's Ring",
		back=MonkCapes.TP	
	}
	
	sets.WS.ShijinSpiral = {
		ammo="Coiste Bodhar",
		head="Ken. Jinpachi +1",
		body="Ken. Samue +1",
		hands="Malignance Gloves",
		legs="Ken. Hakama +1",
		feet={ name="Herculean Boots", augments={'Accuracy+15 Attack+15','"Triple Atk."+3','Accuracy+5',}},
		neck="Monk's Nodowa +2",
		waist="Moonbow Belt +1",
		left_ear="Cessance Earring",
		right_ear="Schere Earring",
		left_ring="Chirich Ring +1",
		right_ring="Mummu Ring",
		back=MonkCapes.TP	
	}
    
	sets.WS.HowlingFist = {
		ammo="Knobkierrie",
		head="Ken. Jinpachi +1",
		body="Bhikku Cyclas +3",
		hands="Malignance Gloves",
		legs="Ken. Hakama +1",
		feet={ name="Herculean Boots", augments={'Accuracy+15 Attack+15','"Triple Atk."+3','Accuracy+5',}},
		neck="Fotia Gorget",
		waist="Moonbow Belt +1",
		left_ear="Moonshade Earring",
		right_ear="Schere Earring",
		left_ring="Chirich Ring +1",
		right_ring="Mummu Ring",
		back=MonkCapes.TP	
	}
	
	sets.WS.TornadoKick = {
		ammo="Knobkierrie",
		head="Mpaca's Cap",
		body="Bhikku Cyclas +3",
		hands="Ken. Tekko +1",
		legs="Ken. Hakama +1",
		feet="Anchorite's Gaiters +3",
		neck={ name="Mnk. Nodowa +2", augments={'Path: A',}},
		waist="Moonbow Belt +1",
		left_ear="Cessance Earring",
		right_ear="Schere Earring",
		left_ring="Mummu Ring",
		right_ring="Rajas Ring",
		back=MonkCapes.TP	
	}
	
	sets.WS.Cataclysm = {
		ammo="Pemphredo Tathlum",
		head="Nyame Helm",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck="Sanctity Necklace",
		waist="Yamabuki-no-Obi",
		left_ear="Friomisi Earring",
		right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back=MonkCapes.VITWS
	}
    
    sets.status = {}
    sets.status.Engaged = sets.TP
    sets.status.Idle = set_combine(sets.TP.Tank, {})
	

end

function precast(spell)
	--Mon Weapon Skills
    if spell.name == 'Tornado Kick' or spell.name == 'Dragon Kick' or spell.name == "Ascetic's Fury" then
        equip(sets.WS.TornadoKick)
	elseif spell.name == 'Victory Smite' then
		equip(sets.WS.VictorySmite)
	elseif spell.name == 'Raging Fists' or spell.name == 'Combo' then
		equip(sets.WS.RagingFists)
    elseif spell.name == 'Final Heaven' then
        equip(sets.WS.FinalHeaven)
	elseif spell.name == 'Shijin Spiral' then
		equip(sets.WS.ShijinSpiral)
	elseif spell.name == 'Howling Fist' then
		equip(sets.WS.HowlingFist)
	elseif spell.name == 'Cataclysm' then
		equip(sets.WS.Cataclysm)
    end
	--Waltz
	if string.find(spell.name, 'Waltz') then
		equip(sets.JA.Waltz)
	end
	--Monk Job Abilities
	if spell.name == 'Boost' then
        equip(sets.JA.Boost)
    end
	if spell.name == 'Chakra' then
        equip(sets.JA.Chakra)
    end
	if spell.name == 'Counterstance' then
        equip(sets.JA.Counterstance)
    end
	if spell.name == 'Focus' then
        equip(sets.JA.Focus)
    end
	if spell.name == 'Dodge' then
        equip(sets.JA.Dodge)
    end
	if spell.name == 'Mantra' then
        equip(sets.JA.Mantra)
    end
	if spell.name == 'Footwork' then
        equip(sets.JA.Footwork)
    end
	if spell.name == 'Impetus' then
        equip(sets.JA.Impetus)
    end
	if spell.name == 'Perfect Counter' then
        equip(sets.JA.PerfectCounter)
    end
	if spell.name == 'Hundred Fists' then
        equip(sets.JA.HundredFists)
    end
	if spell.name == 'Formless Strikes' then
		equip(sets.JA.FormlessStrikes)
	end
	
end

function aftercast(spell)
	if (spell.name == 'Impetus') then
		equip({body="Bhikku Cyclas +3"})
	elseif (spell.name == 'Footwork') then
		equip({feet="Anchorite's Gaiters +3"})
	else
		equip_current()	
	end
end


function equip_current()
	equip(sets.TP[sets.TP.index[TP_ind]]) 
	if (buffactive['Impetus']) then
		equip({body="Bhikku Cyclas +3"})
	end
	if (buffactive['Footwork']) then
		equip({feet="Anchorite's Gaiters +3"})
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
