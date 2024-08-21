-- Voliathon Ninja LUA Script
-- Abbreviation 	NIN
-- Japanese 	忍者 (忍)
-- Expansion Pack 	Rise of the Zilart
-- Quest 	Ayame and Kaede


function get_sets()
-- Set macro book/set --
    send_command('input /macro book 6;wait .1;input /macro set 1')
	
	-- Binds for switching weapon modes
    send_command('bind !f8 gs c toggle weapon set')
	send_command('bind ^f8 gs c reverse weapon set')
	-- Binds for switching TP modes
	send_command('bind !f9 gs c toggle TP set')
	send_command('bind ^f9 gs c reverse TP set')

	--Job Ability Sets--
	sets.JA = {}
	sets.JA.Waltz = {legs="Dashing subligar"}
	sets.JA.Step = 	{}
	sets.JA.Stun = {}
	
    sets.JA.Waltz = {head="Mummu bonnet+1", legs="Dashing subligar"}
    
	--TP Sets--
	sets.TP = {}
	--					  1		      2         3 		   4 		        5		     6   		     7		  8
	sets.TP.index = {'Movement', 'TP', 'Hybrid', 'Accuracy', 'TreasureHunter', 'EvasionTank', 'BuckWildMode','DualWield'}
	TP_ind = 1

	sets.TP.Movement = {
		ammo="Staunch Tathlum +1",
		head="Hattori zukin +2",
		body="Hattori ningi +2",
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
	sets.TP.TP = {
		ammo="Ginsen",
		head="Hattori Zukin +2",
		body="Hachiya chainmail +3",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck={ name="Ninja Nodowa +2", augments={'Path: A'}},
		waist={ name="Sailfi Belt +1", augments={'Path: A'}},
		left_ear="Brutal Earring",
		right_ear="Hattori Earring +1",
		left_ring="Chirich Ring +1",
		right_ring="Chirich Ring +1",
	    back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Damage taken-5%'}}
	}

	--Hybrid Gear
	sets.TP.Hybrid = {
		ammo="Ginsen",
		head="Hattori Zukin +2",
		body="Hattori ningi +2",
		hands="Malignance Gloves",
		legs="Hattori hakama +2",
		feet="Malignance Boots",
		neck={ name="Ninja Nodowa +2", augments={'Path: A'}},
		waist={ name="Sailfi Belt +1", augments={'Path: A'}},
		left_ear="Hattori Earring +1",
		right_ear="Cessance Earring",
		left_ring="Chirich Ring +1",
		right_ring="Chirich Ring +1",
		back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Damage taken-5%'}}
	}

	sets.TP.Accuracy = {
		ammo="Amar Cluster",
		head="Hattori Zukin +2",
		neck="Subtlety Spec.",
		left_ring="Chirich Ring +1",
		right_ring="Chirich Ring +1",
		left_ear="Hattori Earring +1",
		back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Damage taken-5%'}}
	}

	sets.TP.TreasureHunter = {
		ammo="Staunch Tathlum +1",
		head={ name="Herculean Helm", augments={'Attack+19','STR+5','"Treasure Hunter"+2','Accuracy+20 Attack+20'}},
		body="Volte jupon",
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
		head="Hattori Zukin +2",
		body="Hattori ningi +2",
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
	
	sets.TP.BuckWildMode = {
		ammo="Coiste Bodhar",
		head="Ken. Jinpachi +1",
		body="Ken. Samue +1",
		hands="Ken. Tekko +1",
		legs="Ken. Hakama +1",
		feet="Ken. Sune-Ate +1",
		neck={ name="Ninja Nodowa +2", augments={'Path: A',}},
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Brutal Earring",
		right_ear="Digni. Earring",
		left_ring="Chirich Ring +1",
		right_ring="Chirich Ring +1",
		back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Damage taken-5%',}}		
	}
	
	sets.TP.DualWield = {
		ammo="Coiste Bodhar",
		head="Hattori Zukin +2",
		body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},
		hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
		legs="Malignance Tights",
		feet="Hiza. Sune-Ate +2",
		neck={ name="Ninja Nodowa +2", augments={'Path: A',}},
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Suppanomimi",
		right_ear="Brutal Earring",
		left_ring="Chirich Ring +1",
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
		head="Hachiya hatsuburi +3",
		body="Nyame mail",
		hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
		legs="Hiza. Hizayoroi +2",
		feet="Hattori kyahan +2",
		neck={ name="Ninja Nodowa +2", augments={'Path: A',}},
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		right_ear="Ishvara Earring",
		left_ring="Rajas Ring",
		right_ring="Epaminondas's Ring",
		back={ name="Andartia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+8','Weapon skill damage +10%',}}
	}


	sets.Ten = {
		ammo="Coiste Bodhar",
		head="Mpaca's cap",
		body="Nyame mail",
		hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
		legs="Hiza. Hizayoroi +2",
		feet="Hattori kyahan +2",
		neck={ name="Ninja Nodowa +2", augments={'Path: A',}},
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		right_ear="Ishvara Earring",
		left_ring="Rajas Ring",
		right_ring="Epaminondas's Ring",
		back={ name="Andartia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+8','Weapon skill damage +10%',}}
	}

	--Blade: Shun
	sets.Shun = {
		ammo="Yetshila +1",
		head="Ken. Jinpachi +1",
		body="Ken. Samue +1",
		hands="Malignance gloves",
		legs="Mpaca's Hose",
		feet="Hattori kyahan +2",
		neck={ name="Ninja Nodowa +2", augments={'Path: A',}},
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		right_ear="Hattori Earring +1",
		left_ring="Rajas Ring",
		right_ring="Mummu Ring",
		back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Damage taken-5%',}}
	}
	
	--Blade: Hi
	sets.Hi = {
		ammo="Yetshila +1",
		head="Hachiya hatsuburi +3",
		body="Ken. Samue +1",
		hands="Ken. Tekko +1",
		legs="Ken. Hakama +1",
		feet="Hattori kyahan +2",
		neck={ name="Ninja Nodowa +2", augments={'Path: A',}},
		waist="Grunfeld Rope",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		right_ear="Hattori Earring +1",
		left_ring="Sroda Ring",
		right_ring="Epaminondas Ring",
		back={ name="Andartia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+8','Weapon skill damage +10%',}}
	}	

	--Teki/To/Chi/Yu
	sets.TekiToChiYu = {
		ammo="Pemphredo Tathlum",
		head="Nyame Helm",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck="Sanctity Necklace",
		waist="Grunfeld Rope",
		left_ear="Hecate's Earring",
		right_ear="Hattori Earring +1",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back="Toro Cape"
	}

	--Blade: Ku
	sets.Ku = {
		ammo="Yetshila +1",
		head="Mpaca's Cap",
		body="Nyame Mail",
		hands="Malignance Gloves",
		legs="Mpaca's Hose",
		feet="Hattori kyahan +2",
		neck={ name="Ninja Nodowa +2", augments={'Path: A',}},
		waist="Grunfeld Rope",
		left_ear="Hattori Earring +1",
		right_ear="Brutal Earring",
		left_ring="Sroda Ring",
		right_ring="Mummu Ring",
		back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Damage taken-5%',}}
	}

	--Blade: Kamu
	sets.Kamu = {
		ammo="Pemphredo Tathlum",
		head="Mpaca's Cap",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		legs="Mpaca's Hose",
		feet="Nyame Sollerets",
		neck="Sanctity Necklace",
		waist="Grunfeld Rope",
		left_ear="Hecate's Earring",
		right_ear="Hattori Earring +1",
		left_ring="Sroda Ring",
		right_ring="Stikini Ring +1",
		back={ name="Andartia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+8','Weapon skill damage +10%',}}
	}	


	--Fast Cast set
	sets.FastCast = {
		ammo="Staunch Tathlum +1",
		head={ name="Herculean Helm", augments={'Attack+19','STR+5','"Treasure Hunter"+2','Accuracy+20 Attack+20',}},
		body={ name="Taeon Tabard", augments={'Spell interruption rate down -10%','Phalanx +3',}},
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck="Voltsurge Torque",
		waist="Ninurta's Sash",
		left_ear="Loquac. Earring",
		right_ear="Magnetic Earring",
		left_ring={name="Stikini Ring +1",bag="Wardrobe 4"},
		right_ring={name="Stikini Ring +1",bag="Wardrobe 5"},
		back="Solemnity Cape"
	}
	
	sets.Utsusemi = set_combine(sets.FastCast,  {
		feet="Hattori kyahan +2"
	})

	sets.Migawari = set_combine(sets.FastCast,  {
		feet="Hattori ningi +2"
	})


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

	--Magic acc for enfeebles, handy for VW
	sets.MagicAcc = {}

	sets.Cure = {}

	sets.NUKE = {
		ammo="Pemphredo Tathlum",
		head="Nyame Helm",
		body="Samnuha coat",
		hands="Hattori Tekko +2",
		legs="Nyame Flanchard",
		feet="Mochi. Kyahan +3",
		neck="Sanctity Necklace",
		waist="Orpheus's Sash",
		left_ear="Hecate's Earring",
		right_ear="Friomisi Earring",
		left_ring="Fenrir Ring +1",
		right_ring="Locus Ring",
		back="Toro cape"
	}

	
	--Weapon Sets--
	sets.weapon = {}
	sets.weapon.index = {'HeishiKuni','HeishiCrep','HeishiGleti','NagKuni','NagCrep','TauretMal','TauretCrep'}
	weapon_ind = 1

	--Blade:Ten*/Chi*/Teki*/To*
	sets.weapon.HeishiKuni = {
		main="Heishi Shorinken",
		sub="Kunimitsu"
	}
	
	sets.weapon.HeishiCrep = {
		main="Heishi Shorinken",
		sub="Crepuscular Knife"
	}
	
	sets.weapon.HeishiGleti = {
		main="Heishi Shorinken",
		sub="Gleti's Knife"
	}
	
	sets.weapon.NagKuni = {
		main="Naegling",
		sub="Kunimitsu"
	}
	
	sets.weapon.NagCrep = {
		main="Naegling",
		sub="Crepuscular Knife"
	}

	sets.weapon.TauretMal = {
		main="Tauret",
		sub="Malevolence"
	}
	
	sets.weapon.TauretCrep = {
		main="Tauret",
		sub="Crepuscular Knife"
	}
end


function precast(spell) 
	--equips favorite weapon if disarmed
	if player.equipment.main == "empty" or player.equipment.sub == "empty" then
		equip_current()
	end
	
	if string.find(spell.english,'Utsusemi') then
        equip(sets.Utsusemi)
    end
	
	if string.find(spell.english,'Migawari') then
        equip(sets.Migawari)
    end


	if buffactive['terror'] or buffactive['petrification'] or buffactive['stun'] or buffactive['sleep'] then
		equip(sets.TP.EvasionTank) 
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
	elseif spell.name == 'Blade: Teki' or spell.name == 'Blade: To' or 
	spell.name == 'Blade: Chi' or spell.name == 'Blade: Yu' then
		equip(sets.TekiToChiYu)
	elseif spell.name == 'Blade: Ku' then
		equip(sets.Ku)
	elseif spell.name == 'Blade: Kamu' then
		equip(sets.Kamu)
    end
end

function midcast(spell)

	--Utsusemi --Add the empy Feet when I get em
	if string.find(spell.english,'Utsusemi') then
        equip(sets.Utsusemi)
    end	

	--Ninjustu Damaging Spells will be a last check
	checkNinjutsuElementals(spell)

end

function aftercast(spell)
  equip_current()
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
	equip(sets.weapon[sets.weapon.index[weapon_ind]])
	equip(sets.TP[sets.TP.index[TP_ind]]) 
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