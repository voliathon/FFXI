-- Voliathon Ninja LUA Script
-- Abbreviation 	NIN
-- Japanese 	忍者 (忍)
-- Expansion Pack 	Rise of the Zilart
-- Quest 	Ayame and Kaede

function NinjaCapes()
	NinjaCapes = {}
	NinjaCapes.TP = { name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%'}}
	NinjaCapes.STRWS = { name="Andartia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%'}}
	NinjaCapes.NUKE = { name="Andartia's Mantle", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Magic Damage +10','"Mag.Atk.Bns."+10'}}
end

function get_sets()

	-- Set macro book/set --
    send_command('input /macro book 6;wait .1;input /macro set 2')
	
	-- Binds for modes
	-- Toggle Weapon sets | Ctrl F8 or Alt F8
	send_command('bind ^f8 gs c C8') 
	send_command('bind !f8 gs c reverse Weapon set')

	-- Toggle Engaged sets | Ctrl F9 or Alt F9
	send_command('bind ^f9 gs c C9')
	send_command('bind !f9 gs c reverse Engaged set')

	-- Toggle Idle sets | Ctrl F10 or Alt F10
	send_command('bind !f10 gs c C10') 
	send_command('bind ^f10 gs c reverse Idle set')

	NinjaCapes()

	--Job Ability Sets--
	sets.JA = {}
	sets.JA.Waltz = {head="Mummu bonnet+2",legs="Dashing subligar"}
	sets.JA.Yonin = {head="Mochi. hatsuburi +4", legs="Hattori Hakama +2"}
	sets.JA.Innin = {head="Hattori Zukin +3"}
	sets.JA.Futae = {hands="Hattori tekko +2"}
	sets.JA.MijinGakure = {legs="Mochizuki hakama +4"}
	

	--Fast Cast set
	sets.FastCast = {
		ammo="Staunch Tathlum +1",
		head={ name="Herculean Helm", augments={'Attack+19','STR+5','"Treasure Hunter"+2','Accuracy+20 Attack+20',}},
		body={ name="Taeon Tabard", augments={'Spell interruption rate down -10%','Phalanx +3',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Taeon Tights", augments={'Evasion+21','Spell interruption rate down -10%','Phalanx +3',}},
		feet={ name="Taeon Boots", augments={'Spell interruption rate down -9%','Phalanx +3',}},
		neck="Moonlight necklace",
		waist="Audumbla Sash",
		left_ear="Loquac. Earring",
		right_ear="Magnetic Earring",
		left_ring={name="Stikini Ring +1",bag="Wardrobe 4"},
		right_ring={name="Stikini Ring +1",bag="Wardrobe 5"},
		back="Solemnity Cape"
	}
	
	sets.Utsusemi = set_combine(sets.FastCast,  {
		body="Mochizuki chainmail +4",
		feet="Hattori Kyahan +3",
		back=NinjaCapes.TP
	})

	sets.Migawari = set_combine(sets.FastCast,  {
		feet="Hattori Ningi +3"
	})

	--Phalanx--  23
	sets.Phalanx = {
		ammo="Staunch Tathlum +1",
		head="Futhark Bandeau +3",
		body={ name="Taeon Tabard", augments={'Spell interruption rate down -10%','Phalanx +3'}},
		hands={ name="Herculean Gloves", augments={'"Drain" and "Aspir" potency +4','Phys. dmg. taken -2%','Phalanx +5','Accuracy+19 Attack+19','Mag. Acc.+14 "Mag.Atk.Bns."+14'}},
		legs={ name="Herculean Trousers", augments={'Pet: "Dbl.Atk."+2 Pet: Crit.hit rate +2','Pet: Accuracy+16 Pet: Rng. Acc.+16','Phalanx +4','Mag. Acc.+11 "Mag.Atk.Bns."+11'}},
		feet={ name="Herculean Boots", augments={'Pet: "Mag.Atk.Bns."+4','Pet: Attack+3 Pet: Rng.Atk.+3','Phalanx +4','Mag. Acc.+7 "Mag.Atk.Bns."+7'}},
		neck="Null loop",
		waist="Siegel Sash",
		left_ear="Magnetic Earring",
		right_ear="Mimir Earring",
		left_ring={name="Stikini Ring +1",bag="Wardrobe 4"},
		right_ring={name="Stikini Ring +1",bag="Wardrobe 5"},
		back=NinjaCapes.TP
	}

	sets.NUKE = {
		ammo="Ghastly Tathlum +1",
		head="Mochi. hatsuburi +4",
		body="Nyame mail",
		hands="Nyame gauntlets",
		legs="Nyame Flanchard",
		feet="Mochi. Kyahan +4",
		neck="Sanctity Necklace",
		waist="Orpheus's Sash",
		left_ear="Hecate's Earring",
		right_ear="Friomisi Earring",
		left_ring="Metamorph ring +1",
		right_ring="Locus Ring",
		back=NinjaCapes.NUKE
	}

	sets.FutaeNuke = {
		ammo="Ghastly Tathlum +1",
		head="Mochi. hatsuburi +4",
		body="Nyame mail",
		hands="Hattori tekko +2",
		legs="Nyame Flanchard",
		feet="Mochi. Kyahan +4",
		neck="Sanctity Necklace",
		waist="Orpheus's Sash",
		left_ear="Hecate's Earring",
		right_ear="Friomisi Earring",
		left_ring="Metamorph ring +1",
		right_ring="Locus Ring",
		back=NinjaCapes.NUKE	
	}
	
    
	--Engaged Sets--
	sets.engaged = {}
	sets.engaged.index = {'TP', 'Hybrid', 'Accuracy', 'TreasureHunter', 'EvasionTank', 'BuckWildMode','DualWield','Movement'}
	engaged_ind = 1

	--offensive melee set
	sets.engaged.TP = {
		ammo="Coiste Bodhar",
		head="Hattori Zukin +3",
		body="Hachiya chainmail +4",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck={ name="Ninja Nodowa +2", augments={'Path: A'}},
		waist={ name="Sailfi Belt +1", augments={'Path: A'}},
		left_ear="Brutal Earring",
		right_ear="Hattori Earring +1",
		left_ring={name="Chirich Ring +1",bag="Wardrobe 4"},
		right_ring={name="Chirich Ring +1",bag="Wardrobe 5"},
		back=NinjaCapes.TP
	}

	--Hybrid Gear
	sets.engaged.Hybrid = {
		ammo="Coiste Bodhar",
		head="Hattori Zukin +3",
		body="Hattori Ningi +3",
		hands="Malignance Gloves",
		legs="Hattori hakama +2",
		feet="Malignance Boots",
		neck={ name="Ninja Nodowa +2", augments={'Path: A'}},
		waist={ name="Sailfi Belt +1", augments={'Path: A'}},
		left_ear="Cessance Earring",
		right_ear="Hattori Earring +1",
		left_ring={name="Chirich Ring +1",bag="Wardrobe 4"},
		right_ring={name="Chirich Ring +1",bag="Wardrobe 5"},
		back=NinjaCapes.TP
	}

	sets.engaged.Accuracy = {
		ammo="Amar Cluster",
		head="Hattori Zukin +3",
		feet="Hattori Kyahan +3",		
		neck={ name="Ninja Nodowa +2", augments={'Path: A'}},
		waist="Null belt",
		left_ring={name="Chirich Ring +1",bag="Wardrobe 4"},
		right_ring={name="Chirich Ring +1",bag="Wardrobe 5"},
		left_ear="Dignitary's earring",
		right_ear="Hattori Earring +1",
		back=NinjaCapes.TP
	}

	sets.engaged.TreasureHunter = {
		ammo="Staunch Tathlum +1",
		head={ name="Herculean Helm", augments={'Attack+19','STR+5','"Treasure Hunter"+2','Accuracy+20 Attack+20'}},
		body="Volte jupon",
		hands={ name="Herculean Gloves", augments={'"Waltz" potency +4%','"Rapid Shot"+1','"Treasure Hunter"+2'}},
		legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6'}},
		feet={ name="Herculean Boots", augments={'"Store TP"+7','Mag. Acc.+5','"Treasure Hunter"+2','Mag. Acc.+18 "Mag.Atk.Bns."+18'}},
		neck="Null loop",
		waist="Chaac Belt",
		left_ear={ name="Odnowa Earring +1", augments={'Path: A'}},
		right_ear="Hattori Earring +1",
		left_ring="Defending Ring",
		right_ring={name="Chirich Ring +1",bag="Wardrobe 5"},
		back=NinjaCapes.TP
	}

	sets.engaged.EvasionTank = {
		ammo="Amar Cluster",
		head="Hattori Zukin +3",
		body="Hattori Ningi +3",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Hattori Kyahan +3",
		neck={ name="Ninja Nodowa +2", augments={'Path: A',}},
		waist="Null belt",
		left_ear="Infused Earring",
		right_ear="Cryptic Earring",
		left_ring="Defending Ring",
		right_ring={name="Chirich Ring +1",bag="Wardrobe 5"},
		back=NinjaCapes.TP
	}
	
	sets.engaged.BuckWildMode = {
		ammo="Coiste Bodhar",
		head="Ken. Jinpachi +1",
		body="Ken. Samue +1",
		hands="Ken. Tekko +1",
		legs="Ken. Hakama +1",
		feet="Ken. Sune-Ate +1",
		neck={ name="Ninja Nodowa +2", augments={'Path: A',}},
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Brutal Earring",
		right_ear="Hattori Earring +1",
		left_ring={name="Chirich Ring +1",bag="Wardrobe 4"},
		right_ring={name="Chirich Ring +1",bag="Wardrobe 5"},
		back=NinjaCapes.TP		
	}
	
	sets.engaged.DualWield = {
		ammo="Coiste Bodhar",
		head="Hattori Zukin +3",
		body="Hachiya chainmail +4",
		hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
		legs="Mochizuki hakama +4",
		feet="Hiza. Sune-Ate +2",
		neck={ name="Ninja Nodowa +2", augments={'Path: A',}},
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Brutal Earring",
		right_ear="Suppanomimi",
		left_ring={name="Chirich Ring +1",bag="Wardrobe 4"},
		right_ring={name="Chirich Ring +1",bag="Wardrobe 5"},
		back=NinjaCapes.TP
	}
	
	sets.engaged.Movement = {
		ammo="Staunch Tathlum +1",
		head="Hattori Zukin +3",
		body="Hattori Ningi +3",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Hattori Kyahan +3",
		neck={ name="Ninja Nodowa +2", augments={'Path: A',}},
		waist="Null belt",
		left_ear="Brutal Earring",
		right_ear="Cryptic Earring",
		left_ring="Shneddick Ring",
		right_ring={name="Chirich Ring +1",bag="Wardrobe 5"},
		back=NinjaCapes.TP
	}

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
	
	
	sets.SavageBlade = {
		ammo="Coiste bodhar",
		head="Hachiya hatsuburi +4",
		body="Nyame mail",
		hands="Nyame gauntlets",
		legs="Mochizuki hakama +4",
		feet="Hattori Kyahan +3",
		neck="Fotia gorget",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		right_ear="Ishvara Earring",
		left_ring="Sroda Ring",
		right_ring="Epaminondas's Ring",
		back=NinjaCapes.STRWS
	}

	--Blade: Ten
	--Stat Mod: STR30/DEX30 --Stick WSD on this shit
	--Skillchain Gravitation
	sets.Ten = {
		ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
		head="Hachi. Hatsu. +4",
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Mochi. Hakama +4", augments={'Enhances "Mijin Gakure" effect',}},
		feet="Hattori Kyahan +3",
		neck={ name="Ninja Nodowa +2", augments={'Path: A',}},
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		right_ear={ name="Lugra Earring +1", augments={'Path: A',}},
		left_ring="Sroda Ring",
		right_ring="Epaminondas's Ring",
		back=NinjaCapes.STRWS
	}

	--Blade: Shun
	--Stat Mod: DEX73~85 --Attack Attack Attack on this duder
	--Skillchain: Light / Fusion / Impaction
	sets.Shun = {
		ammo="Yetshila +1",
		head="Ken. Jinpachi +1",
		body="Ken. Samue +1",
		hands="Malignance gloves",
		legs="Mpaca's Hose",
		feet="Hattori Kyahan +3",
		neck={ name="Ninja Nodowa +2", augments={'Path: A',}},
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		right_ear="Hattori Earring +1",
		left_ring="Rajas Ring",
		right_ring="Mummu Ring",
		back=NinjaCapes.TP
	}
	
	--Blade: Hi
	--Stat Mod: AGI80 --CRIT is a modifier for this guy
	--Skillchain: Darkness / Gravitation
	sets.Hi = {
		ammo="Yetshila +1",
		head="Hachiya hatsuburi +4",
		body="Ken. Samue +1",
		hands="Ken. Tekko +1",
		legs="Mochizuki hakama +4",
		feet="Hattori Kyahan +3",
		neck={ name="Ninja Nodowa +2", augments={'Path: A',}},
		waist="Grunfeld Rope",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		right_ear="Hattori Earring +1",
		left_ring="Sroda Ring",
		right_ring="Epaminondas Ring",
		back=NinjaCapes.STRWS
	}	

	--Teki/To/Chi/Yu
	sets.TekiToChiYu = {
		ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
		head={ name="Mochi. Hatsu. +4", augments={'Enhances "Yonin" and "Innin" effect',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Fotia Gorget",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
		right_ear={ name="Lugra Earring +1", augments={'Path: A',}},
		left_ring="Sroda Ring",
		right_ring="Epaminondas's Ring",
		back=NinjaCapes.STRWS
	}

	--Blade: Ku
	sets.Ku = {
		ammo="Coiste bodhar",
		head="Blistering sallet +1",
		body="Nyame Mail",
		hands="Mochi. tekko +4",
		legs="Mpaca's Hose",
		feet="Hattori Kyahan +3",
		neck={ name="Ninja Nodowa +2", augments={'Path: A',}},
		waist="Grunfeld Rope",
		left_ear="Hattori Earring +1",
		right_ear="Lugra Earring +1",
		left_ring="Sroda Ring",
		right_ring="Mummu Ring",
		back=NinjaCapes.TP
	}

	--Blade: Kamu
	sets.Kamu = {
		ammo="Pemphredo Tathlum",
		head="Hachiya hatsuburi +4",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		legs="Mpaca's Hose",
		feet="Nyame Sollerets",
		neck="Sanctity Necklace",
		waist="Grunfeld Rope",
		left_ear="Lugra Earring +1",
		right_ear="Hattori Earring +1",
		left_ring="Sroda Ring",
		right_ring="Stikini Ring +1",
		back=NinjaCapes.STRWS
	}	

	
	--Weapon Sets--
	sets.weapon = {}
	sets.weapon.index = {'HeishiKuni','HeishiCrep','HeishiTauret','HeishiYagyu','NagKuni','NagCrep','TauretMal','TauretCrep'}
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
	
	sets.weapon.HeishiTauret = {
		main="Heishi Shorinken",
		sub="Tauret"
	}
	
	sets.weapon.HeishiYagyu = {
		main="Heishi Shorinken",
		sub="Yagyu Darkblade"	
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

	if string.find(spell.english,'Utsusemi') then
        equip(sets.Utsusemi)
    end
	
	if string.find(spell.english,'Migawari') then
        equip(sets.Migawari)
    end

	if spell.action_type == 'Magic' or spell.action_type == 'Ninjutsu' then
		equip(sets.FastCast)
	end
	
	--Ninja Job Abilities
	if spell.type == 'JobAbility' then
		if spell.name == 'Yonin' then
			equip(sets.JA.Yonin)
		elseif spell.name == 'Innin' then
			equip(sets.JA.Innin)
		elseif spell.name == 'Futae' then
			equip(sets.JA.Futae)
		elseif spell.name == 'MijinGakure' then
			equip(sets.JA.MijinGakure)
		elseif string.find(spell.english,'Waltz') then
			equip(sets.JA.Waltz)
		end
    end
			
	
	if buffactive['terror'] or buffactive['petrification'] or buffactive['stun'] or buffactive['sleep'] then
		equip(sets.TP.EvasionTank) 
	end

	--Ninja Weapon Skills
    if spell.type == 'WeaponSkill' then	
		if spell.name == 'Savage Blade' then
			equip(sets.SavageBlade)
		elseif spell.name == 'Blade: Ten' then
			equip(sets.Ten)
		elseif spell.name == 'Blade: Shun' then
			equip(sets.Shun)
		elseif spell.name == 'Blade: Hi' then
			equip(sets.Hi)
		elseif spell.name == 'Blade: Teki' or spell.name == 'Blade: To' or spell.name == 'Blade: Chi' or spell.name == 'Blade: Yu' then
			equip(sets.TekiToChiYu)
		elseif spell.name == 'Blade: Ku' then
			equip(sets.Ku)
		elseif spell.name == 'Blade: Kamu' then
			equip(sets.Kamu)
		end
	end
	
end

function midcast(spell)
	
	if string.find(spell.english, 'Phalanx') then
		equips(sets.Phalanx)
	end
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

function equip_current()
	equip_weapon()
	status_change()
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
	
	if (buffactive['Yonin']) then
		equip({head="Mochi. hatsuburi +4", legs="Hattori Hakama +2"})	
	elseif (buffactive['Innin']) then 
		equip({head="Hattori Zukin +3"})
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
