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
		
	sets.Waltz = {legs="Dashing subligar"}

    sets.JA = {}
    sets.JA['Boost'] = {hands="Anchorite's Gloves +4"}
    sets.JA['Chakra'] = {body="Anchorite's Cyclas +3", hands="Hes. Gloves +3"}
    sets.JA['Counterstance'] = {feet="Hesychast's Gaiters +3"}
    sets.JA['Focus'] = {head="Anchorite's Crown +3"}
    sets.JA['Dodge'] = {feet="Anchorite's Gaiters +4"}
    sets.JA['Mantra'] = {feet="Hes. Gaiters +3"}
    sets.JA['Footwork'] = {feet="Bhikku gaiters +3"}
	sets.JA['Impetus']={body="Bhikku Cyclas +3"}
	sets.JA['PerfectCounter']={head="Bhikku Crown +3"}
    sets.JA['HundredFists'] = {legs="Hes. Hose +3"}
	sets.JA['FormlessStrikes'] = {body="Hesychast's Cyclas +3"}

	
	--Engaged Sets--
	sets.engaged = {}
	sets.engaged.index = {'BadAss', 'SubtleBlow', 'Tank', 'Movement', 'Accuracy', 'TH'}
	engaged_ind = 1
	
    sets.engaged.BadAss = {
		ammo="Coiste Bodhar",
		head={ name="Adhemar Bonnet +1", augments={'STR+12','DEX+12','Attack+20'}},
		body="Bhikku Cyclas +3",
		hands="Bhikku gloves +3",
		legs="Bhikku Hose +3",
		feet="Anchorite's Gaiters +4",
		neck="Monk's nodowa +2",
		waist="Moonbow Belt +1",
		left_ear="Sherida Earring",
		right_ear="Schere Earring",
		left_ring="Chirich Ring +1",
		right_ring="Chirich Ring +1",
		back=MonkCapes.TP
    }	

	sets.engaged.SubtleBlow = {
		ammo={ name="Coiste Bodhar", augments={'Path: A',}},
		head="Bhikku Crown +3",
		body="Mpaca's Doublet",
		hands={ name="Hes. Gloves +3", augments={'Enhances "Invigorate" effect',}},
		legs="Mpaca's Hose",
		feet="Bhikku Gaiters +3",
		neck={ name="Mnk. Nodowa +2", augments={'Path: A',}},
		waist="Moonbow Belt +1",
		left_ear="Sherida Earring",
		right_ear={ name="Schere Earring", augments={'Path: A',}},
		left_ring="Chirich Ring +1",
		right_ring="Chirich Ring +1",
		back=MonkCapes.TP
	}

	sets.engaged.Tank = {
		ammo="Staunch Tathlum +1",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck={ name="Mnk. Nodowa +2", augments={'Path: A',}},
		waist="Moonbow Belt +1",
		left_ear="Sherida Earring",
		right_ear={ name="Schere Earring", augments={'Path: A',}},
		left_ring="Chirich Ring +1",
		right_ring="Chirich Ring +1",
		back=MonkCapes.TP
	}
	
	sets.engaged.Movement = {
		ammo="Staunch Tathlum +1",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck={ name="Mnk. Nodowa +2", augments={'Path: A',}},
		waist="Moonbow Belt +1",
		left_ear="Sherida Earring",
		right_ear={ name="Schere Earring", augments={'Path: A',}},
		left_ring="Shneddick Ring",
		right_ring="Chirich Ring +1",
		back=MonkCapes.TP
	}	
	
	sets.engaged.Accuracy = {
		ammo="Coiste Bodhar",
		head="Bhikku Crown +3",
		body="Mpaca's Doublet",
		hands="Bhikku gloves +3",
		legs="Bhikku Hose +3",
		feet="Bhikku gaiters +3",
		neck={ name="Mnk. Nodowa +2", augments={'Path: A',}},
		waist="Moonbow Belt +1",
		left_ear="Sherida Earring",
		right_ear="Schere Earring",
		left_ring="Chirich Ring +1",
		right_ring="Chirich Ring +1",
		back=MonkCapes.TP	
	}
	
	sets.engaged.TH = set_combine(sets.engaged.Tank, {
		head={ name="Herculean Helm", augments={'Attack+19','STR+5','"Treasure Hunter"+2','Accuracy+20 Attack+20'}},
		body="Volte jupon",
		hands={ name="Herculean Gloves", augments={'"Waltz" potency +4%','"Rapid Shot"+1','"Treasure Hunter"+2'}},
		feet={ name="Herculean Boots", augments={'"Store TP"+7','Mag. Acc.+5','"Treasure Hunter"+2','Mag. Acc.+18 "Mag.Atk.Bns."+18'}},
		waist="Chaac Belt"
	})
	

	-- Idle Sets Toggle-- Alt+F10 or Ctrl+F10
	sets.idle = {}
	sets.idle.index = {'PDTMovement', 'Craft'}
	idle_ind = 1      
	
	sets.idle.PDTMovement = set_combine(sets.engaged.Movement,  {})

	sets.idle.Craft = set_combine(sets.engaged.Movement, {
		main="Caduceus",
		sub="Br. escutcheon",
		body="Alchemist's smock",
		neck="Alchemist's torque",
		left_ring="Artificer's Ring",
		right_ring="Craftmaster's ring",
		waist="Alchemist's belt"
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
		left_ear="Sherida Earring",
		right_ear="Schere Earring",
		left_ring="Sroda Ring",
		right_ring="Epaminondas's Ring",
		back=MonkCapes.TP		
	}
	
	sets.WS.FinalHeaven = {
		ammo="Knobkierrie",
		head="Hesychast's crown +4",
		body="Bhikku Cyclas +3",
		hands="Anchorite's Gloves +4",
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
		left_ear="Sherida Earring",
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
		left_ear="Sherida Earring",
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
		feet="Anchorite's Gaiters +4",
		neck={ name="Mnk. Nodowa +2", augments={'Path: A',}},
		waist="Moonbow Belt +1",
		left_ear="Sherida Earring",
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
		neck="Null loop",
		waist="Yamabuki-no-Obi",
		left_ear="Friomisi Earring",
		right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back=MonkCapes.VITWS
	}	

end

function precast(spell)
	--Monk Weapon Skills
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
    elseif string.find(spell.name, 'Waltz') then
		equip(sets.Waltz)
	elseif spell.type == 'JobAbility' then
	        equip(sets.JA[spell.english])
	end
end

function aftercast(spell)
	equip_current()
	if (buffactive['Counterstance']) then
		equip({body="Hesychast's cyclas +3",legs="Anch. Hose +3",feet="Hes. Gaiters +3"})
	elseif (spell.name == 'Impetus') then
		equip({body="Bhikku Cyclas +3"})
	elseif (spell.name == 'Footwork') then
		equip({feet="Anchorite's Gaiters +4"})
	end
end


function equip_current()
	equip_weapon()
	status_change()
	if (buffactive['Counterstance']) then
		equip({body="Hesychast's cyclas +3",legs="Anch. Hose +3",feet="Hes. Gaiters +3"})
	end
	if (buffactive['Impetus']) then
		equip({body="Bhikku Cyclas +3"})
	end
	if (buffactive['Footwork']) then
		equip({feet="Anchorite's Gaiters +4"})
	end	
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
		send_command('@input /tell <me> Wakies Voliathon! You died.')
	end
end)
