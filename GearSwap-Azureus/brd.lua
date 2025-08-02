 -- █████╗ ███████╗██╗   ██╗██████╗ ███████╗██╗   ██╗███████╗    
-- ██╔══██╗╚══███╔╝██║   ██║██╔══██╗██╔════╝██║   ██║██╔════╝    
-- ███████║  ███╔╝ ██║   ██║██████╔╝█████╗  ██║   ██║███████╗    
-- ██╔══██║ ███╔╝  ██║   ██║██╔══██╗██╔══╝  ██║   ██║╚════██║    
-- ██║  ██║███████╗╚██████╔╝██║  ██║███████╗╚██████╔╝███████║    
-- ╚═╝  ╚═╝╚══════╝ ╚═════╝ ╚═╝  ╚═╝╚══════╝ ╚═════╝ ╚══════╝    
                                                              
        -- ██████╗  █████╗ ██████╗ ██████╗                       
        -- ██╔══██╗██╔══██╗██╔══██╗██╔══██╗                      
        -- ██████╔╝███████║██████╔╝██║  ██║                      
        -- ██╔══██╗██╔══██║██╔══██╗██║  ██║                      
        -- ██████╔╝██║  ██║██║  ██║██████╔╝                      
        -- ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝                       
                                                              

-- Intarabus's Cape function
function IntarabusCapes()
    Intarabus = {}
    Intarabus.TP = { name="Intarabus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%'}}
    Intarabus.STRWSD = { name="Intarabus's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%'}}
	Intarabus.DEXWSD = { name="Intarabus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%'}}
	Intarabus.FASTCAST = { name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Spell interruption rate down-10%',}}
end

function get_sets()
	-- Setting to the BRD Macro Book #5 and Set #1 --
	send_command('input /macro book 5;wait .1;input /macro set 1')

	-- Binds for modes
	-- Toggle Weapon F8 Key
	send_command('bind !f8 gs c C8') 
	send_command('bind ^f8 gs c Reverse Toggle Weapon')

	-- Toggle Engaged sets button, change if you want; currently ALT+F9 toggles forward, CTRL+F9 toggles backwards
	send_command('bind !f9 gs c C9')
	send_command('bind ^f9 gs c reverse Engaged set')

	-- Let's also initialize any Intarabus's Capes that we need to use 
	IntarabusCapes()

	-- Modes --
	Marsyas = 'OFF' -- Toogle on/off the Marsyas and Gjallarhorn via ctrl + F8

	--Job Ability Sets--
	sets.JA = {}
	sets.JA.Nightingale = {feet="Bihu Slippers +3"}
	sets.JA.Troubadour = {body="Bihu Justaucorps +4"}
	sets.JA.SoulVoice = {legs="Bihu Cannions +3"}
	sets.JA.Waltz = {legs="Dashing subligar"}
	
  --Fast Cast Set--
  sets.FastCast = {
    head="Bunzi's Hat",
    body="Zendik Robe",
    hands={ name="Gende. Gages +1", augments={'Phys. dmg. taken -4%','Song spellcasting time -4%'}},
    legs="Aya. Cosciales +2",
    feet="Fili cothurnes +3",
    neck="Voltsurge Torque",
    waist="Embla Sash",
    left_ear="Mendi. Earring",
    right_ear="Loquac. Earring",
    left_ring="Stikini Ring +1",
    right_ring="Rahab Ring",
    back=Intarabus.FASTCAST
  }
  
  --Stoneskin Set
  sets.Stoneskin = {
    head="Umuthi Hat",
    body="Zendik Robe",
    hands="Carapacho Cuffs",
    legs="Doyen Pants",
    feet={ name="Kaykaus Boots", augments={'Mag. Acc.+15','"Cure" potency +5%','"Fast Cast"+3'}},
    neck="Nodens Gorget",
    waist="Siegel Sash",
    left_ear="Earthcry Earring",
    right_ear="Loquac. Earring",
    left_ring="Stikini Ring +1",
    right_ring="Rahab Ring",
    back=Intarabus.FASTCAST 
  }
 
  --Magic Accuracy for those pesky songs that don't want to stick--
  sets.MagicAccuracy = {
    head="Fili calot +3",
    body="Fili Hongreline +3",
    hands="Fili Manchettes +3",
    legs="Brioso Cannions +3",
    feet="Brioso Slippers +4",
    neck="Mnbw. Whistle +1",
    waist="Null belt",
    left_ear="Musical Earring",
    right_ear="Digni. Earring",
	left_ring={name="Stikini Ring +1", bag="Wardrobe 3"},
	right_ring={name="Stikini Ring +1", bag="Wardrobe 5"},
    back="Null shawl"
  }
  
  --Maximizing Song Potency first then duration-- 
  sets.Songs = {
	main="Carnwenhan",
    head="Fili calot +3",
    body="Fili Hongreline +3",
    hands="Fili Manchettes +3",
    legs="Inyanga Shalwar +2",
    feet="Brioso Slippers +4",
    neck="Mnbw. Whistle +1",
    waist="Kobo Obi",
    left_ear="Musical Earring",
    right_ear="Fili Earring +1",
    left_ring="Lebeche Ring",
    right_ring="Stikini Ring +1",
    back=Intarabus.FASTCAST
  }
  
  sets.Ballad = set_combine(sets.Songs, { 
	legs="Fili Rhingrave +3"
  })
  
  sets.Cure = {
    head={ name="Vanya Hood", augments={'MP+50','"Fast Cast"+10','Haste+2%'}},
    body={ name="Kaykaus Bliaut", augments={'MP+60','"Cure" potency +5%','"Conserve MP"+6'}},
    hands="Inyan. Dastanas +2",
    legs={ name="Kaykaus Tights", augments={'MP+60','Spell interruption rate down +10%','"Cure" spellcasting time -5%'}},
    feet={ name="Vanya Clogs", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6'}},
    neck="Nodens Gorget",
    waist="Acerbic Sash +1",
    left_ear="Magnetic Earring",
    right_ear="Mendi. Earring",
    left_ring="Lebeche Ring",
    right_ring="Sirona's Ring",
    back="Oretan. Cape +1"
  }
  
  sets.Cursna = {
    head={ name="Kaykaus Mitra", augments={'MP+60','MND+10','Mag. Acc.+15'}},
    body={ name="Vanya Robe", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3'}},
    hands="Inyan. Dastanas +2",
    legs={ name="Vanya Slops", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3'}},
    feet={ name="Vanya Clogs", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6'}},
    neck="Incanter's Torque",
    waist="Gishdubar Sash",
    left_ear="Healing Earring",
    right_ear="Magnetic Earring",
    left_ring="Ephedra Ring",
    right_ring="Ephedra Ring",
    back="Oretan. Cape +1"  
  }

  sets.Sleep = set_combine(sets.MagicAccuracy, { 
    head="Fili calot +3",
	hands="Brioso Cuffs +4",
	body="Brioso Justaucorps +3",
	feet="Brioso Slippers +4",
	legs="Inyanga Shalwar +2",
	range="Daurdabla",
	main="Carnwenhan"
  })
  
  -- Mordant Rime  70%CHR / 30% DEX
  -- Evisceration   50% DEX  Critical Hits
  -- Rudra's Storm  80% DEX  Dmg varies with TP
  -- Exenterator  85% AGI w/ capped merits.  Duration of accuracy down varies with TP
  -- Aeolian Edge  40% DEX / 40% INT  Dmg varies with TP

  -- Engaged Sets Toggle--
  sets.engaged = {}
  sets.engaged.index = {'TP', 'TakingLessPhysicalDamage', 'TakingLessMagicDamage', 'Accuracy', 'Refresh', 'Movement'}
  engaged_ind = 1    
  
  --TP Set--
  sets.engaged.TP = {
    head="Blistering Sallet +1",
    body="Ashera harness",
    hands="Bunzi's gloves",
	legs="Volte tights",
	feet="Volte spats",
    neck="Bard's charm +2",
    waist="Sailfi Belt +1",
    left_ear="Telos Earring",
    right_ear="Cessance Earring",
	left_ring={name="Chirich Ring +1", bag="Wardrobe 3"},
	right_ring={name="Chirich Ring +1", bag="Wardrobe 4"},
    back=Intarabus.TP,
	range="Linos"	
  }
  
  --Accuracy Set--
  sets.engaged.Accuracy = {
    head="Fili calot +3",
    body="Fili Hongreline +3",
    hands="Fili Manchettes +3",
    legs="Fili Rhingrave +3",
    feet="Fili cothurnes +3",
    neck="Bard's charm +2",
    waist="Null belt",
    left_ear="Telos Earring",
    right_ear="Fili Earring +1",
	left_ring={name="Chirich Ring +1", bag="Wardrobe 3"},
	right_ring={name="Chirich Ring +1", bag="Wardrobe 4"},
    back="Null shawl",
	range="Linos"
  }
  
  sets.engaged.TakingLessPhysicalDamage = {
    ammo="Staunch Tathlum +1",
    head="Fili Calot +3",
    body="Fili Hongreline +3",
    hands="Fili Manchettes +3",
    legs="Fili Rhingrave +3",
    neck={ name="Bard's Charm +2", augments={'Path: A',}},
    waist="Null belt",
    left_ear="Infused Earring",
    right_ear="Eabani Earring",
    left_ring="Defending Ring",
    right_ring="Fortified Ring",
    back=Intarabus.TP
  }
  
  sets.engaged.TakingLessMagicDamage = {
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Fili Manchettes +3",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Null loop",
    waist="Null belt",
    left_ear="Infused Earring",
    right_ear="Eabani Earring",
    left_ring="Defending Ring",
    right_ring="Fortified ring",
    back="Null shawl",
	ammo="Staunch Tathlum +1"
  }
  
  sets.engaged.Refresh = {
    head="Null masque",
    body="Annoint. Kalasiris",
    hands={ name="Chironic Gloves", augments={'"Fast Cast"+1','Pet: "Mag.Atk.Bns."+10','"Refresh"+2','Accuracy+12 Attack+12'}},
    legs="Assid. Pants +1",
    feet={ name="Chironic Slippers", augments={'Phys. dmg. taken -1%','Pet: Attack+9 Pet: Rng.Atk.+9','"Refresh"+2','Mag. Acc.+20 "Mag.Atk.Bns."+20'}},
    neck="Bathy Choker +1",
    waist="Fucho-no-Obi",
    left_ear="Infused Earring",
    right_ear="Fili Earring +1",
	left_ring={name="Stikini Ring +1", bag="Wardrobe 3"},
	right_ring={name="Stikini Ring +1", bag="Wardrobe 5"},
    back="Null shawl",
	ammo="Staunch Tathlum +1"
  }
  
  sets.engaged.Movement = set_combine(sets.engaged.TakingLessPhysicalDamage,  {
	feet="Fili cothurnes +3"
  })
  
  --Weaponskill Sets--
  --Savage Blade
  sets.SavageBlade = {
    range={ name="Linos", augments={'Accuracy+15','"Store TP"+3','Quadruple Attack +3',}},
    head="Nyame Helm",
    body="Bihu Justaucorps +4",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
	feet="Nyame sollerets",
    neck={ name="Bard's Charm +2", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Ishvara Earring",
    right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    left_ring="Sroda Ring",
    right_ring="Epaminondas's Ring",
    back=Intarabus.STRWSD
  }
  
  --All in One who gives a fuck Weapon Skill set of Doom
  --Rudra Evisceration Mordant go here
  sets.WSD = {
    range={ name="Linos", augments={'Accuracy+15','"Store TP"+3','Quadruple Attack +3',}},
    head="Nyame Helm",
    body="Bihu Justaucorps +4",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",		
	feet="Nyame sollerets",
    neck={ name="Bard's Charm +2", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Ishvara Earring",
    right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    left_ring="Sroda Ring",
    right_ring="Epaminondas's Ring",
    back=Intarabus.DEXWSD
  }

  -- Weapon Toggle--
  sets.weapon = {}
  sets.weapon.index = {'CarnwenhanShield', 'CarnwenhanCentovente', 'CarnwenhanCrepuscularKnife', 'TwashtarShield', 'TwashtarCentovente', 'TwashtarCrepuscularKnife','NaeglingShield', 'NaeglingCentovente', 'NaeglingCrepuscularKnife','TauretShield', 'TauretCentovente', 'TauretCrepuscularKnife'}
  weapon_ind = 1     
  
 sets.weapon.CarnwenhanShield = {
	main="Carnwenhan",
	sub="Genmei shield"
 } 
 sets.weapon.CarnwenhanCentovente = {
	main="Carnwenhan",
	sub="Centovente"
 }
 sets.weapon.CarnwenhanCrepuscularKnife = {
	main="Carnwenhan",
	sub="Crepuscular Knife"
 }
 sets.weapon.TwashtarShield = {
	main="Twashtar",
	sub="Genmei shield"
 } 
  sets.weapon.TwashtarCentovente = {
	main="Twashtar",
	sub="Centovente"
 }  
 sets.weapon.TwashtarCrepuscularKnife = {
	main="Twashtar",
	sub="Crepuscular Knife"
 }  
 sets.weapon.NaeglingShield = {
	main="Naegling",
	sub="Genmei shield"
 }
 sets.weapon.NaeglingCentovente = {
	main="Naegling",
	sub="Centovente"
 }  
 sets.weapon.NaeglingCrepuscularKnife = {
	main="Naegling",
	sub="Crepuscular Knife"
 } 
 sets.weapon.TauretShield = {
	main="Tauret",
	sub="Genmei shield"
 } 
  sets.weapon.TauretCentovente = {
	main="Tauret",
	sub="Centovente"
 } 
 sets.weapon.TauretCrepuscularKnife = {
	main="Tauret",
	sub="Crepuscular Knife"
 } 
end


function precast(spell,abil)
	--equips favorite Instrument if disarmed
	if player.equipment.range == "empty" or player.equipment.sub == "empty" then
		if spell.name == 'Honor March' then
			equip(sets.FastCast,{range="Marsyas",ammo="empty"})
			add_to_chat(158,'Marsyas Weapon: [ON]')
			Daurdabla = 'OFF'
			Marsyas = 'ON'
		else
			equip(sets.FastCast,{range="Daurdabla",ammo="empty"})
			add_to_chat(158,'Daurdabla Weapon: [ON]')
			Daurdabla = 'ON'
			Marsyas = 'OFF'
		end
		
	end
	
	if string.find(spell.english,'Waltz') then 
		equip(sets.JA.Waltz)
	end
	
	if spell.type == 'BardSong' then
		if spell.name == 'Honor March' then
			equip(sets.FastCast,{main="Carnwenhan",range="Marsyas",ammo="empty"})
		elseif  player.equipment.range == "Linos" then
			equip(sets.FastCast,{range="Daurdabla",ammo="empty"})
		end		
	end
	if spell.name == 'Nightingale' then
		equip(sets.JA.Nightingale)
	end 
	if spell.name == 'Troubadour' then
		equip(sets.JA.Troubadour)
	end
	if spell.name == 'Soul Voice' then
		equip(sets.JA.SoulVoice)
	end

	
	--WS Lookups
	if spell.name == "Savage Blade" then
		equip(sets.SavageBlade)
	end
	if spell.name == "Rudra's Storm" or spell.name == "Evisceration" or spell.name == "Mordant Rime" then
		equip(sets.WSD)
	end

  	if string.find(spell.english,'Warp') then 
		--DO NOTHING
	end
  
	if spell.skill == 'Enhancing Magic' or 	string.find(spell.english,'Cur') then 
		equip(sets.FastCast)
	end
  
end

function midcast(spell)
	if string.find(spell.english,'Cur') then 
		equip(sets.Cure)
	end
	if spell.name == 'Stoneskin' then
		equip(sets.Stoneskin)
	end
	if spell.type == 'BardSong' then
	  if string.find(spell.english,'Lullaby') then
	    equip(sets.Sleep,{main="Carnwenhan"})
	  elseif string.find(spell.english,'Elegy') then
		equip(sets.MagicAccuracy,{main="Carnwenhan"})
	  elseif string.find(spell.english,'Ballad') then
	    equip(sets.Ballad,{main="Carnwenhan",})
	  else
		equip(sets.Songs,{main="Carnwenhan"})
	  end
	end
	if spell.name == 'Cursna' then
		equip(sets.Cursna)
	end
	if string.find(spell.english,'Warp') then 
		--DO NOTHING
	end
	--Enhancing Magic Check
	if spell.skill == 'Enhancing Magic' then
		equip(sets.Enhancing)
	end
end


--We need to do some thinking and testing for this set...
function aftercast(spell)
	if string.find(spell.english,'Warp') then
		--do fuck all nothing
	else
		equip_current()
	end
end




--This function should only get kicked off when you're engaging.  
--If I want a manual 'Refresh' set or 'MDT' or 'DT' set I can do that in game with equipsets.  
--But I don't want to fuck myself by ignoring the engaged check.
--I'm also deciding not to use a Binding Key to put my in a MDT, PDT, DT, Refresh Set.
--I dunno, I'm just against hitting Ctrl+f# all the time for that shit
function equip_current()
	equip(sets.engaged[sets.engaged.index[engaged_ind]]) 
	equip_weapon()
end

function equip_weapon()
	equip(sets.weapon[sets.weapon.index[weapon_ind]])
end

--Function use for Changing the Engaged Set.  Ctrl+F9 is your meal ticket
--123 is a red color for the text output
--158 is a green color for the text output
function self_command(command)
	if command == 'C8' then -- Toggling Weapons--	
		weapon_ind = weapon_ind +1
		if weapon_ind > #sets.weapon.index then weapon_ind = 1 end
		send_command('@input /echo <----- Gear Set changed to '..sets.weapon.index[weapon_ind]..' ----->')
		equip_weapon()
	elseif command == 'Reverse Toggle Weapon' then --Reverse Toggling of Weapons
		weapon_ind = weapon_ind -1
		if weapon_ind == 0 then weapon_ind = #sets.weapon.index end
		send_command('@input /echo <----- Gear Set changed to '..sets.weapon.index[weapon_ind]..' ----->')
		equip_weapon()
	elseif command == 'C9' then
		engaged_ind = engaged_ind +1
		if engaged_ind > #sets.engaged.index then engaged_ind = 1 end
		send_command('@input /echo <----- Gear Set changed to '..sets.engaged.index[engaged_ind]..' ----->')
		equip_current()
	elseif command == 'reverse Engaged set' then
		engaged_ind = engaged_ind -1
		if engaged_ind == 0 then engaged_ind = #sets.engaged.index end
		send_command('@input /echo <----- Gear Set changed to '..sets.engaged.index[engaged_ind]..' ----->')
		equip_current()
	end	 
end


-- Send tell to self if I died --
windower.register_event('status change', function()
	if player.status == 'Dead' then
		send_command('@input /tell <me> Wakies Wakies my Campbellkitty. We hit 0 HP on accident. We shall live forever!!!')
	end
end)
