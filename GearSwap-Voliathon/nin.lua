-- Voliathon Ninja LUA Script
-- Abbreviation 	NIN
-- Japanese 	忍者 (忍)
-- Expansion Pack 	Rise of the Zilart
-- Quest 	Ayame and Kaede


function get_sets()
-- Set macro book/set --
    send_command('input /macro book 6;wait .1;input /macro set 1')
	
	-- Binds for modes
	--Toggle TP sets button, change if you want; currently ALT+F9 toggles forward, CTRL+F9 toggles backwards
	send_command('bind ^f8 gs c C8') 
	send_command('bind !f9 gs c toggle TP set')
	send_command('bind ^f9 gs c reverse TP set')

	-- Modes --
	Capacity = 'OFF' -- Press ctrl + F11 if you want to be in Capacity mode  --	
	Naegling = 'OFF' -- Toogle on/off the Naegling and Heishi Shorinken via ctrl + F8
	ShadowType = 'None'	
		
	--Job Ability Sets--
	sets.JA = {}

	-- Dancer's Abilities --
	sets.JA.Waltz = {legs="Dashing subligar"}
	sets.JA.Step = 	{}
	sets.JA.Stun = {}
	
    sets.JA.Waltz = {head="Mummu bonnet+1", legs="Dashing subligar"}
    
	--TP Sets--
	sets.TP = {}
	--					  1		      2         3 		   4 		        5		     6   
	sets.TP.index = {'Movement', 'BadAss', 'Hybrid', 'Accuracy', 'TreasureHunter', 'EvasionTank'}
	TP_ind = 1

	sets.TP.Movement = {
		ammo="Staunch Tathlum +1",
		head="Nyame Helm",
		body="Ashera Harness",
		hands="Erilaz Gauntlets +2",
		legs="Carmine Cuisses +1",
		feet="Erilaz Greaves +2",
		neck="Loricate torque +1",
		waist="Flume Belt +1",
		left_ear="Tuisto Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Moonlight Ring",
		right_ring="Defending Ring",
		back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Damage taken-5%'}}
	}

	--offensive melee set
	sets.TP.BadAss = {
		ammo="Ginsen",
		head={ name="Adhemar Bonnet +1", augments={'STR+12','DEX+12','Attack+20'}},
		body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20'}},
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck={ name="Ninja Nodowa +2", augments={'Path: A'}},
		waist={ name="Sailfi Belt +1", augments={'Path: A'}},
		left_ear="Suppanomimi",
		right_ear="Cessance Earring",
		left_ring="Chirich Ring +1",
		right_ring="Chirich Ring +1",
	    back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Damage taken-5%'}}
	}

	--Hybrid Gear
	sets.TP.Hybrid = {
		ammo="Staunch Tathlum +1",
		head="Nyame Helm",
		body="Runeist coat +3",
		hands="Erilaz Gauntlets +2",
		legs="Erilaz leg guards +2",
		feet="Erilaz greaves +2",
		neck="Loricate torque +1",
		waist="Flume Belt +1",
		left_ear="Tuisto Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Moonlight Ring",
		right_ring="Defending Ring",
		back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Damage taken-5%'}}
	}

	sets.TP.Accuracy = {
		ammo="Amar Cluster",
		neck="Subtlety Spec.",
		left_ring="Chirich Ring +1",
		right_ring="Chirich Ring +1",
		back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Damage taken-5%'}}
	}

	sets.TP.TreasureHunter = {
		ammo="Staunch Tathlum +1",
		head={ name="Herculean Helm", augments={'Attack+19','STR+5','"Treasure Hunter"+2','Accuracy+20 Attack+20'}},
		body="Nyame Mail",
		hands={ name="Herculean Gloves", augments={'"Waltz" potency +4%','"Rapid Shot"+1','"Treasure Hunter"+2'}},
		legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6'}},
		feet={ name="Herculean Boots", augments={'"Store TP"+7','Mag. Acc.+5','"Treasure Hunter"+2','Mag. Acc.+18 "Mag.Atk.Bns."+18'}},
		neck={ name="Loricate Torque +1", augments={'Path: A'}},
		waist="Chaac Belt",
		left_ear="Tuisto Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A'}},
		left_ring="Moonlight Ring",
		right_ring="Defending Ring",
		back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Damage taken-5%'}}
	}

	sets.TP.EvasionTank = {
		ammo="Amar Cluster",
		head="Malignance Chapeau",
		body="Ashera Harness",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck={ name="Ninja Nodowa +2", augments={'Path: A',}},
		waist="Flume Belt +1",
		left_ear="Infused Earring",
		right_ear="Cryptic Earring",
		left_ring="Defending Ring",
		right_ring="Chirich Ring +1",
	    back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Damage taken-5%'}}
	}


	--Blade: Ten
	--Stat Mod: STR30/DEX30 --Stick WSD on this shit
	--Skillchain Gravitation
	
	--Blade: Hi
	--Stat Mod: AGI80 --CRIT is a modifier for this guy
	--Skillchain: Darkness / Gravitation
	
	--Blade: Shun
	--Stat Mod: DEX73~85 --Attack Attack Attack on this duder
	--Skillchain: Light / Fusion / Impaction
	
	
	--Savage Blade, Blade: Ten, Blade: Shun, Blade: Hi, Blade: Taki/Blade: To,Blade: Chi, Blade:Ku, Blade: Kamu

	
	sets.SavageBlade = {
		ammo="Yetshila +1",
		head={ name="Herculean Helm", augments={'Attack+20','Weapon skill damage +4%','STR+10'}},
		body="Lustratio Harness +1",
		hands="Adhemar wristbands +1",
		legs="Erilaz leg guards +2",
		feet="Carmine greaves +1",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Brutal Earring",
		right_ear="Moonshade Earring",
		right_ring="Rajas Ring",
		left_ring="Moonlight Ring",
		back={ name="Ogma's cape", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Damage taken-5%'}}
	}


	sets.Ten = {
		ammo="Knobkierrie",
		head={ name="Herculean Helm", augments={'Weapon skill damage +5%','DEX+10','Attack+5'}},
		body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20'}},
		hands="Meg. Gloves +2",
		legs={ name="Lustr. Subligar +1", augments={'Accuracy+20','DEX+8','Crit. hit rate+3%'}},
		feet={ name="Lustra. Leggings +1", augments={'Accuracy+20','DEX+8','Crit. hit rate+3%'}},
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250'}},
		right_ear="Ishvara Earring",
		left_ring="Rajas Ring",
		right_ring="Epaminondas's Ring",
		back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%'}}
	}

	--Blade: Shun
	sets.Shun = {
		ammo="Knobkierrie",
		head="Adhemar Bonnet +1",
		body="Nyame mail",
		hands="Erilaz Gauntlets +2",
		legs="Erilaz leg guards +2",
		feet="Erilaz greaves +2",
		neck="Fotia Gorget",
		waist="Orpheus's sash",
		left_ear="Crematio Earring",
		right_ear="Friomisi Earring",
		left_ring="Moonlight Ring",
		right_ring="Fenrir Ring +1",
		back="Toro Cape"
	}
	
	--Blade: Hi
	sets.Hi = {
		ammo="Knobkierrie",
		head="Adhemar Bonnet +1",
		body="Nyame mail",
		hands="Erilaz Gauntlets +2",
		legs="Erilaz leg guards +2",
		feet="Erilaz greaves +2",
		neck="Fotia Gorget",
		waist="Orpheus's sash",
		left_ear="Crematio Earring",
		right_ear="Friomisi Earring",
		left_ring="Moonlight Ring",
		right_ring="Fenrir Ring +1",
		back="Toro Cape"
	}	

	--Take/To/Chi
	sets.TakiToChi = {
		ammo="Knobkierrie",
		head="Adhemar Bonnet +1",
		body="Herculean vest",
		hands="Erilaz Gauntlets +2",
		legs="Erilaz leg guards +2",
		feet="Erilaz greaves +2",
		neck="Fotia Gorget",
		waist="Ioskeha Belt +1",
		left_ear="Crematio Earring",
		right_ear="Friomisi Earring",
		left_ring="Moonlight Ring",
		right_ring="Fenrir Ring +1",
		back="Toro Cape"
	}

	--Blade: Ku
	sets.Ku = {
		ammo="Knobkierrie",
		head="Adhemar Bonnet +1",
		body="Nyame mail",
		hands="Erilaz Gauntlets +2",
		legs="Erilaz leg guards +2",
		feet="Erilaz greaves +2",
		neck="Fotia Gorget",
		waist="Orpheus's sash",
		left_ear="Crematio Earring",
		right_ear="Friomisi Earring",
		left_ring="Moonlight Ring",
		right_ring="Fenrir Ring +1",
		back="Toro Cape"
	}

	--Blade: Kamu
	sets.Kamu = {
		ammo="Knobkierrie",
		head="Adhemar Bonnet +1",
		body="Nyame mail",
		hands="Erilaz Gauntlets +2",
		legs="Erilaz leg guards +2",
		feet="Erilaz greaves +2",
		neck="Fotia Gorget",
		waist="Orpheus's sash",
		left_ear="Crematio Earring",
		right_ear="Friomisi Earring",
		left_ring="Moonlight Ring",
		right_ring="Fenrir Ring +1",
		back="Toro Cape"
	}	

	sets.Enhancing = {
		ammo="Staunch Tathlum +1",
		head="Erilaz galea +2",
		body="Erilaz surcoat +2",
		hands="Regal Gauntlets",
		legs="Futhark Trousers +1",
		feet="Carmine greaves +1",
		neck="Voltsurge Torque",
		waist="Siegel Sash",
		left_ear="Magnetic Earring",
		right_ear="Halasz Earring",
		left_ring={name="Stikini Ring +1",bag="Wardrobe 4"},
		right_ring={name="Stikini Ring +1",bag="Wardrobe 5"},
		back="Solemnity cape"
	}

	sets.Regen = {
		ammo="Staunch Tathlum +1",
		head="Runeist bandeau +2",
		body="Erilaz surcoat +2",
		hands="Regal Gauntlets",
		legs="Futhark Trousers +1",
		feet="Carmine greaves +1",
		neck="Voltsurge Torque",
		waist="Sroda Belt",
		left_ear="Magnetic Earring",
		right_ear="Erilaz Earring",
		left_ring={name="Stikini Ring +1",bag="Wardrobe 4"},
		right_ring={name="Stikini Ring +1",bag="Wardrobe 5"},
		back="Solemnity cape"
	}


	--Fast Cast set
	sets.FastCast = {
		ammo="Staunch Tathlum +1",
		head="Rune. Bandeau +2",
		body="Erilaz surcoat +2",
		hands="Regal Gauntlets",
		legs={ name="Futhark Trousers +1", augments={'Enhances "Inspire" effect',}},
		feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}},
		neck="Loricate Torque +1",
		waist="Siegel Sash",
		left_ear="Mimir Earring",
		right_ear="Loquac. Earring",
		left_ring={name="Stikini Ring +1",bag="Wardrobe 4"},
		right_ring={name="Stikini Ring +1",bag="Wardrobe 5"},
	}

	--Phalanx--  23
	sets.Phalanx = {
		ammo="Staunch Tathlum +1",
		head="Futhark Bandeau +3",
		body={ name="Taeon Tabard", augments={'Spell interruption rate down -10%','Phalanx +3'}},
		hands={ name="Herculean Gloves", augments={'"Drain" and "Aspir" potency +4','Phys. dmg. taken -2%','Phalanx +5','Accuracy+19 Attack+19','Mag. Acc.+14 "Mag.Atk.Bns."+14'}},
		legs={ name="Herculean Trousers", augments={'Pet: "Dbl.Atk."+2 Pet: Crit.hit rate +2','Pet: Accuracy+16 Pet: Rng. Acc.+16','Phalanx +4','Mag. Acc.+11 "Mag.Atk.Bns."+11'}},
		feet={ name="Herculean Boots", augments={'Pet: "Mag.Atk.Bns."+4','Pet: Attack+3 Pet: Rng.Atk.+3','Phalanx +4','Mag. Acc.+7 "Mag.Atk.Bns."+7'}},
		neck={ name="Loricate Torque +1", augments={'Path: A'}},
		waist="Siegel Sash",
		left_ear="Magnetic Earring",
		right_ear="Mimir Earring",
		left_ring={name="Stikini Ring +1",bag="Wardrobe 4"},
		right_ring={name="Stikini Ring +1",bag="Wardrobe 5"},
		back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Phys. dmg. taken-10%'}}
	}

	--108 SIR-
	sets.SIR = {
		ammo="Staunch Tathlum +1", --11
		head="Erilaz galea +2", --15
		body={ name="Taeon Tabard", augments={'Spell interruption rate down -10%','Phalanx +3',}}, --10
		hands="Regal Gauntlets", --10
		legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}}, --20
		feet={ name="Taeon Boots", augments={'Spell interruption rate down -9%','Phalanx +3',}}, --9
		neck="Moonbeam necklace", --10
		waist="Audumbla sash", --10
		left_ear="Halasz Earring", --5
		right_ear="Magnetic Earring" --8
	}

	--Enmity set for high hate generating spells and JAs
	sets.Enmity = {
		back={ name="Ogma's cape", augments={'Enmity+10','Phys. dmg. taken-4%'}}, 
		waist="Sinew Belt", 
		legs="Erilaz Leg Guards +2", 
		neck="Moonbeam necklace", 
		body="Emet Harness +1",     
		feet="Erilaz greaves +2"
	}

	--Magic acc for enfeebles, handy for VW
	sets.MagicAcc = {}

	sets.Stoneskin = {
		ammo="Staunch Tathlum +1",
		head="Rune. Bandeau +2",
		body={ name="Taeon Tabard", augments={'Spell interruption rate down -10%','Phalanx +3',}},
		hands="Regal Gauntlets",
		legs={ name="Futhark Trousers +1", augments={'Enhances "Inspire" effect',}},
		feet={ name="Taeon Boots", augments={'Spell interruption rate down -9%','Phalanx +3',}},
		neck={ name="Loricate Torque +1", augments={'Path: A',}},
		waist="Siegel Sash",
		left_ear="Magnetic Earring",
		right_ear="Earthcry Earring",
		left_ring={name="Stikini Ring +1",bag="Wardrobe 4"},
		right_ring={name="Stikini Ring +1",bag="Wardrobe 5"},
		back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Phys. dmg. taken-10%'}}  
	}


	sets.Cure = {}

	sets.NUKE = {
		ammo="Pemphredo Tathlum",
		head="Nyame Helm",
		body={ name="Herculean Vest", augments={'Accuracy+24','Magic burst dmg.+7%','"Mag.Atk.Bns."+15',}},
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck="Sanctity Necklace",
		waist="Orpheus's Sash",
		left_ear="Hecate's Earring",
		right_ear="Friomisi Earring",
		left_ring="Fenrir Ring +1",
		right_ring="Stikini Ring +1"
	}



end

function precast(spell) 
	--equips favorite weapon if disarmed
	if player.equipment.main == "empty" or player.equipment.sub == "empty" then
		equip({main="Heishi Shorinken",sub="Crepuscular Knife"})
		add_to_chat(158,'Heishi Shorinken Weapon: [ON]')
		Naegling = 'OFF'
	end
	
	--prevents casting Utsusemi if you already have 3 or more shadows
	if spell.name == 'Utsusemi: Ichi' and ShadowType == 'Ni' and (buffactive['Copy Image (3)'] or buffactive['Copy Image (4+)']) then
		cancel_spell()
	end


	if buffactive['terror'] or buffactive['petrification'] or buffactive['stun'] or buffactive['sleep'] then
		if TP_ind == 4 then
			equip(sets.TP.EvasionTank) 
		end
	end
	
	 
	if spell.action_type == 'Magic' or spell.action_type == 'Ninjutsu' then
		equip(sets.FastCast)
	end
	if string.find(spell.english,'Waltz') then
        equip(sets.Waltz)
    end
	
	if spell.name == 'Savage Blade' then
		equip(sets.SavageBlade)
	elseif spell.name == 'Blade: Ten' then
		equip(sets.Ten)
	elseif spell.name == 'Blade: Shun' then
		equip(sets.Shun)
	elseif spell.name == 'Blade: Hi' then
		equip(sets.Hi)
	elseif spell.name == 'Blade: Teki' or spell.name == 'Blade: To' or spell.name == 'Blade: Chi' then
		equip(sets.TekiToChi)
	elseif spell.name == 'Blade: Ku' then
		equip(sets.Ku)
	elseif spell.name == 'Blade: Kamu' then
		equip(sets.Kamu)
    end
end

function midcast(spell)

	--Utsusemi
	
	

	--Ninjustu Damaging Spells will be a last check
	checkNinjutsuElementals(spell)
end

function aftercast(spell)
  equip_current()
  if (spell.english == 'Battuta') then
		equip({hands="Turms mittens +1", feet="Turms leggings +1", left_ear="Cryptic earring"})
  end
  --Just running a lil somethin-somethin to track Shadows
  if string.find(spell.name,'Utsusemi') and not spell.interrupted then
    if spell.name == 'Utsusemi: Ichi' then
      ShadowType = 'Ichi'
    elseif spell.name == 'Utsusemi: Ni' then
      ShadowType = 'Ni'
    end
  end
end

--Created this to get rid of an if clutter bomb
function checkNinjutsuElementals(spell)
	if spell.name == 'Katon: Ichi' or spell.name == 'Katon: Ni' or spell.name == 'Katon: San'
	 or spell.name == 'Hyoton: Ichi' or spell.name == 'Hyoton: Ni' or spell.name == 'Hyoton: San'
	  or spell.name == 'Huton: Ichi' or spell.name == 'Huton: Ni' or spell.name == 'Huton: San'
	   or spell.name == 'Doton: Ichi' or spell.name == 'Doton: Ni' or spell.name == 'Doton: San'
	    or spell.name == 'Raiton: Ichi' or spell.name == 'Raiton: Ni' or spell.name == 'Raiton: San'
		 or spell.name == 'Suiton: Ichi' or spell.name == 'Suiton:Ni' or spell.name == 'Suiton: San' then
		 equip(sets.NUKE)
	end
end

--This function should only get kicked off when you're engaging.  
--If I want a manual 'Refresh' set or 'MDT' or 'DT' set I can do that in game with equipsets.  
--But I don't want to fuck myself by ignoring the engaged check.
--I'm also deciding not to use a Binding Key to put my in a MDT, PDT, DT, Refresh Set.
--I dunno, I'm just against hitting Ctrl+f# all the time for that shit
function equip_current()
	equip(sets.TP[sets.TP.index[TP_ind]]) 
	if (buffactive['Battuta']) then
		equip({hands="Turms mittens +1", feet="Turms leggings +1", left_ear="Cryptic earring"})
	end
end

--Function use for Changing the TP Set.  Ctrl+F9 is your meal ticket
--123 is a red color for the text output
--158 is a green color for the text output
function self_command(command)
	if command == 'C8' then -- Naegling to Heishi Shorinken --	
        if Naegling == 'ON' then
            Naegling = 'OFF'
			equip({main="Heishi Shorinken", sub="Crepuscular Knife"})
            add_to_chat(158,'Heishi Shorinken Weapon: [ON]')
			add_to_chat(123,'Naegling Weapon: [OFF]')
		else
            Naegling = 'ON'
			equip({main="Naegling", sub="Crepuscular Knife"})
            add_to_chat(158,'Naegling Weapon: [ON]')
            add_to_chat(123,'Heishi Shorinken Weapon: [OFF]')				
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
	send_command('@input /tell <me> Wakies Wakies  For some Weird Ass Reason my character died')
	end
end)