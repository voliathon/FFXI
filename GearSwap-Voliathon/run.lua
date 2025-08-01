function get_sets()
  -- Set macro book/set --
  send_command('input /macro book 17;wait .1;input /macro set 2')

  -- Binds for switching weapons
  send_command('bind !f8 gs c toggle weapon set')
  send_command('bind ^f8 gs c reverse weapon set')
  -- Binds for switching equip 	
  send_command('bind !f9 gs c toggle equip set')
  send_command('bind ^f9 gs c reverse equip set')

	
  --Job Ability Sets--
  sets.JA = {}
  sets.JA.Lunge = {}
  sets.JA.Vallation = {body="Runeist Coat +3",legs="Futhark Trousers +3"}
  sets.JA.Gambit = {hands="Runeist mitons +3"}
  sets.JA.Rayke = {feet="Futhark boots +4"}
  sets.JA.Battuta = {head="Futhark bandeau +3"}
  sets.JA.Pflug = {feet="Runeist bottes +3"}
  sets.JA.Pulse = {head="Erilaz galea +3",legs="Runeist Trousers +3"}
  sets.JA.Swordplay = {hands="Futhark mitons +3"}	

  sets.Enhancing = {
    ammo="Staunch Tathlum +1",
    head="Erilaz galea +3",
    body="Erilaz surcoat +3",
    hands="Regal Gauntlets",
    legs="Futhark Trousers +3",
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
    head="Rune. Bandeau +3",
    body="Erilaz surcoat +3",
    hands="Regal Gauntlets",
    legs="Futhark Trousers +3",
    feet="Carmine greaves +1",
    neck="Voltsurge Torque",
    waist="Sroda Belt",
    left_ear="Magnetic Earring",
    right_ear="Erilaz Earring +1",
    left_ring={name="Stikini Ring +1",bag="Wardrobe 4"},
    right_ring={name="Stikini Ring +1",bag="Wardrobe 5"},
	back="Solemnity cape"
  }

  --Fast Cast set
  sets.FastCast = {
    ammo="Staunch Tathlum +1",
    head="Rune. Bandeau +3",
    body="Erilaz surcoat +3",
    hands="Regal Gauntlets",
    legs="Futhark Trousers +3",
    feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}},
    neck="Null loop",
    waist="Siegel Sash",
    left_ear="Mimir Earring",
    right_ear="Loquac. Earring",
    left_ring={name="Stikini Ring +1",bag="Wardrobe 4"},
    right_ring={name="Stikini Ring +1",bag="Wardrobe 5"},
  }

  sets.Phalanx = {
    ammo="Staunch Tathlum +1",
    head="Futhark Bandeau +3",
    body={ name="Herculean Vest", augments={'"Dbl.Atk."+2','STR+4','Phalanx +5','Accuracy+15 Attack+15','Mag. Acc.+12 "Mag.Atk.Bns."+12',}},
    hands={ name="Herculean Gloves", augments={'"Drain" and "Aspir" potency +4','Phys. dmg. taken -2%','Phalanx +5','Accuracy+19 Attack+19','Mag. Acc.+14 "Mag.Atk.Bns."+14'}},
    legs={ name="Herculean Trousers", augments={'Pet: STR+3','AGI+2','Phalanx +5','Accuracy+10 Attack+10',}},
    feet={ name="Herculean Boots", augments={'Pet: "Mag.Atk.Bns."+4','Pet: Attack+3 Pet: Rng.Atk.+3','Phalanx +4','Mag. Acc.+7 "Mag.Atk.Bns."+7'}},
    neck="Moonlight necklace",
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
	head="Erilaz galea +3", --20
    body={ name="Taeon Tabard", augments={'Spell interruption rate down -10%','Phalanx +3',}}, --10
    hands="Regal Gauntlets", --10
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}}, --20
    feet={ name="Taeon Boots", augments={'Spell interruption rate down -9%','Phalanx +3',}}, --9
    neck="Moonlight necklace", --15
    waist="Audumbla sash", --10
    left_ear="Halasz Earring", --5
    right_ear="Magnetic Earring" --8
 }
 
  --Enmity set for high hate generating spells and JAs
  sets.Enmity = {
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Phys. dmg. taken-10%'}}, 
	waist="Sinew Belt", --3
	legs="Erilaz leg guards +3", --13 
	neck="Moonlight necklace",  --15
	body="Emet Harness +1",  --10   
	feet="Erilaz Greaves +3", --8
	right_ear="Cryptic earring" --4
  }

  sets.Stoneskin = {
    ammo="Staunch Tathlum +1",
    head="Rune. Bandeau +3",
    body={ name="Taeon Tabard", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    hands="Regal Gauntlets",
    legs={ name="Futhark Trousers +3", augments={'Enhances "Inspire" effect',}},
    feet={ name="Taeon Boots", augments={'Spell interruption rate down -9%','Phalanx +3',}},
    neck="Null loop",
    waist="Siegel Sash",
    left_ear="Magnetic Earring",
    right_ear="Earthcry Earring",
    left_ring={name="Stikini Ring +1",bag="Wardrobe 4"},
    right_ring={name="Stikini Ring +1",bag="Wardrobe 5"},
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Phys. dmg. taken-10%'}}  
  }
  
  -- This will eventually be Magic Fruit whenever I get that level
  sets.Cure = {
  
  }	
	
  --equip Sets--
  sets.equip = {}
--					  1		      2         3 		       4 		     5   	   6
  sets.equip.index = {'BadAss', 'Hybrid', 'Accuracy', 'TreasureHunter', 'Movement', 'Tank'}
  equip_ind = 1

  
  --offensive melee set
  sets.equip.BadAss = {
    ammo="Ginsen",
    head="Adhemar Bonnet +1",
    body="Ashera harness",
    hands="Adhemar wristbands +1",
    legs="Erilaz leg guards +3",
    feet="Erilaz greaves +3",
    neck="Anu Torque",
    waist="Ioskeha Belt +1",
    left_ear="Sherida Earring",
    right_ear="Erilaz earring +1",
    left_ring="Moonlight Ring",
    right_ring="Chirich Ring +1",
    back={ name="Ogma's cape", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Damage taken-5%'}}
  }

  --Hybrid Gear
  sets.equip.Hybrid = {
    ammo="Staunch Tathlum +1",
	head="Nyame Helm",
    body="Runeist coat +3",
    hands="Erilaz Gauntlets +3",
    legs="Erilaz leg guards +3",
    feet="Erilaz Greaves +3",
    neck="Warder's charm +1",
    waist="Null belt",
    left_ear="Sherida Earring",
    right_ear="Erilaz Earring +1",
    left_ring="Moonlight Ring",
    right_ring="Fortified Ring",
    back={ name="Ogma's cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Phys. dmg. taken-10%'}}
  }

  sets.equip.Accuracy = {
    ammo="Amar Cluster",
    head="Erilaz galea +3",
    body="Erilaz surcoat +3",
    hands="Erilaz Gauntlets +3",
    legs="Erilaz leg guards +3",
    feet="Erilaz Greaves +3",
    neck="Null loop",
    waist="Null belt",
    left_ear="Dignitary's Earring",
    right_ear="Erilaz Earring +1",
    left_ring="Chirich Ring +1",
    right_ring="Chirich Ring +1",
    back={ name="Ogma's Cape", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Damage taken-5%',}}
  }
  
  sets.equip.TreasureHunter = {
    ammo="Staunch Tathlum +1",
    head={ name="Herculean Helm", augments={'Attack+19','STR+5','"Treasure Hunter"+2','Accuracy+20 Attack+20'}},
    body="Nyame Mail",
    hands={ name="Herculean Gloves", augments={'"Waltz" potency +4%','"Rapid Shot"+1','"Treasure Hunter"+2'}},
    legs="Erilaz leg guards +3",
    feet={ name="Herculean Boots", augments={'"Store equip"+7','Mag. Acc.+5','"Treasure Hunter"+2','Mag. Acc.+18 "Mag.Atk.Bns."+18'}},
    neck="Null loop",
    waist="Chaac Belt",
    left_ear="Sherida Earring",
    right_ear="Erilaz Earring +1",
    left_ring="Moonlight Ring",
    right_ring="Defending Ring",
	back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','System: 1 ID: 640 Val: 4',}}
  }
  
  sets.equip.Movement = {
    ammo="Staunch Tathlum +1",
    head={ name="Nyame Helm", augments={'Path: B',}},
    body="Erilaz Surcoat +3",
    hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    legs="Erilaz leg guards +3",
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
    neck="Null loop",
    waist="Null belt",
    left_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
    right_ear="Erilaz Earring +1",
    left_ring="Shneddick Ring",
    right_ring="Defending Ring",
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','System: 1 ID: 640 Val: 4',}}
  }

  sets.equip.Tank = {
    ammo="Staunch Tathlum +1",
    head={ name="Nyame Helm", augments={'Path: B',}},
    body="Erilaz Surcoat +3",
    hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    legs="Erilaz leg guards +3",
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
    neck="Null loop",
    waist="Null belt",
    left_ear="Sherida Earring",
    right_ear="Erilaz Earring +1",
    left_ring="Fortified Ring",
    right_ring="Defending Ring",
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','System: 1 ID: 640 Val: 4',}}
  }

  --Weaponskill Sets--

  --multi, carries Fequip -- Need STR for the modifier
  sets.Resolution = {
    ammo="Yetshila +1",
    head={ name="Nyame Helm", augments={'Path: B',}},
    body={ name="Nyame Mail", augments={'Path: B',}},
    hands="Adhemar wristbands +1",
    legs="Nyame flanchard",
    feet="Carmine greaves +1",
    neck="Fotia Gorget",
	waist="Fotia Belt",
    left_ear="Sherida Earring",
    right_ear="Moonshade Earring",
    right_ring="Rajas Ring",
    left_ring="Moonlight Ring",
    back={ name="Ogma's cape", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Damage taken-5%'}}
  }

  --doesn't carry Fequip -- This will be dimidiation  Need DEX for the modifier
  sets.Dimidiation = {
    ammo="Knobkierrie",
    head={ name="Nyame Helm", augments={'Path: B',}},
    body={ name="Nyame Mail", augments={'Path: B',}},
    hands="Meg. Gloves +2",
    legs="Nyame flanchard",
    feet={ name="Nyame sollerets", augments={'Path: B',}},
    neck="Fotia Gorget",
    waist="Fotia Belt",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','equip Bonus +250'}},
    right_ear="Ishvara Earring",
    left_ring="Rajas Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Ogma's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%'}}
  }

  --added effect
  sets.Shockwave = {
    ammo="Knobkierrie",
    head={ name="Nyame Helm", augments={'Path: B',}},
    body={ name="Nyame Mail", augments={'Path: B',}},
    hands="Erilaz Gauntlets +3",
    legs="Nyame flanchard",
    feet="Erilaz Greaves +3",
    neck="Null loop",
    waist="Null belt",
    left_ear="Crematio Earring",
    right_ear="Friomisi Earring",
    left_ring="Moonlight Ring",
    right_ring="Fenrir Ring +1",
    back="Toro Cape"
  }

  --magic WS
  sets.HercSlash = {
    ammo="Knobkierrie",
    head={ name="Nyame Helm", augments={'Path: B',}},
    body={ name="Nyame Mail", augments={'Path: B',}},
    hands="Erilaz Gauntlets +3",
    legs="Nyame flanchard",
    feet="Erilaz Greaves +3",
    neck="Null loop",
    waist="Orpheus's sash",
    left_ear="Crematio Earring",
    right_ear="Friomisi Earring",
    left_ring="Moonlight Ring",
    right_ring="Fenrir Ring +1",
    back="Toro Cape"
  }
 
	--Weapon Sets--
	sets.weapon = {}
	sets.weapon.index = {'Epeolatry','Lycurgos','Naegling','LoxoticMace','Lionheart'}
	weapon_ind = 1 
	
	sets.weapon.Epeolatry = {
		main="Epeolatry",
		sub="Utu Grip"
	}
	
	sets.weapon.Lycurgos = {
		main="Lycurgos",
		sub="Utu Grip"
	}
	
	sets.weapon.Naegling = {
		main="Naegling",
		sub="Blurred Shield +1"
	}
	
	sets.weapon.LoxoticMace = {
		main="Loxotic Mace +1",
		sub="Blurred Shield +1"
	}
	
	sets.weapon.Lionheart = {
		main="Lionheart",
		sub="Utu Grip"
	}
 
end


function precast(spell,abil)

  if spell.skill == 'Enhancing Magic' then
	equip(sets.FastCast)
  end
  if spell.action_type == 'Magic' then
    equip(sets.FastCast)
  end
  
  
  if spell.name == 'Lunge' or spell.name == 'Swipe' then
    equip(sets.JA.Lunge)
  end
  --prevents Valiance/Vallation/Liement from being prevented by each other (cancels whichever is active)
  if spell.name == 'Valiance' or spell.name == 'Vallation' or spell.name == 'Liement' then
    if buffactive['Valiance'] then
      cast_delay(0.2)
      windower.ffxi.cancel_buff(535)
    elseif buffactive['Vallation'] then
      cast_delay(0.2)
      windower.ffxi.cancel_buff(531)
    elseif buffactive['Liement'] then
      cast_delay(0.2)
      windower.ffxi.cancel_buff(537)
    end
  end
  if spell.name == 'Vallation' or spell.name == 'Valiance' then
    equip(sets.Enmity,sets.JA.Vallation)
  end
  if spell.name == 'Pflug' then
    equip(sets.Enmity,sets.JA.Pflug)
  end
  if spell.name == 'Elemental Sforzo' or spell.name == 'Liement' then
    equip(sets.Enmity,{body="Futhark coat +3"})
  end
  if spell.name == 'Gambit' then
    equip(sets.Enmity,sets.JA.Gambit)
  end
  if spell.name == 'Embolden' then
    equip({back={ name="Evasionist's Cape", augments={'Enmity+5','"Embolden"+14','"Dbl.Atk."+2','Damage taken-3%'}}})
  end  
  if spell.name == 'Rayke' then
    equip(sets.Enmity,sets.JA.Rayke)
  end
  if spell.name == 'Battuta' then
    equip(sets.Enmity,sets.JA.Battuta)
  end
  if spell.name == 'Vivacious Pulse' then
    equip(sets.Enmity,sets.JA.Pulse)
  end
  if spell.name == 'One for All' or spell.name == 'Embolden' or spell.name == 'Odyllic Subterfuge' or spell.name == 'Warcry'
    or spell.name == 'Swordplay' or spell.name == 'Meditate' or spell.name == 'Provoke' then
    equip(sets.Enmity, {hands="Futhark mitons +3"})
  end
  if spell.name == 'Resolution' then
    equip(sets.Resolution)
  end
  if spell.name == 'Dimidiation' or spell.name == 'Spinning Slash'  then
    equip(sets.Dimidiation)
  end
  if spell.name == 'Shockwave' then
    equip(sets.Shockwave)
  end
  if spell.name == 'Herculean Slash' or spell.name == 'Freezebite' or spell.name == 'Frostbite' then
    equip(sets.HercSlash)
  end

    --Utsusemi Check
  if string.find(spell.name,'Utsusemi') then
    equip({neck="Magoraga Beads"})
  end
  
end



--Should NOT put Job Abilities here.  Ony Magic Fren!  Fren is Doggo Speak for Friend
function midcast(spell,act,arg)
--Unsure if needed cause it should be good enough for precast....
  --prevents Valiance/Vallation/Liement from being prevented by each other (cancels whichever is active)
  if spell.name == 'Valiance' or spell.name == 'Vallation' or spell.name == 'Liement' then
    if buffactive['Valiance'] then
      cast_delay(0.2)
      windower.ffxi.cancel_buff(535)
    elseif buffactive['Vallation'] then
      cast_delay(0.2)
      windower.ffxi.cancel_buff(531)
    elseif buffactive['Liement'] then
      cast_delay(0.2)
      windower.ffxi.cancel_buff(537)
    end
  end
  if spell.name == 'Vallation' or spell.name == 'Valiance' then
    equip(sets.Enmity,sets.JA.Vallation)
  end
  if spell.name == 'Pflug' then
    equip(sets.Enmity,sets.JA.Pflug)
  end  
  
  
  if spell.skill == 'Elemental Magic' then
    equip(sets.JA.Lunge)
  end

  if spell.skill == 'Enhancing Magic' then
	if spell.name == 'Phalanx' then
		equip(sets.SIR,sets.Phalanx)
	end
	if spell.name == "Blink" or spell.name == "Stoneskin" then
      equip(sets.SIR,sets.Stoneskin)
	end
	if spell.name == 'Foil' then
	  equip(sets.SIR,sets.enmity)
	end
    if string.find(spell.name,'Refresh') then
	  equip(sets.SIR,sets.Enhancing)
    end
    if string.find(spell.name,'Regen') then
      equip(sets.SIR,sets.Regen)
    end
	if string.find(spell.name,'Protect') then
		equip(sets.Enhancing)
	end
  
  end
  
  if spell.name == 'Flash' or spell.name == "Stun" then
    equip(sets.Enmity)
  end
  
end


function aftercast(spell)
  equip_current()
  if (spell.english == 'Battuta') then
		equip({hands="Turms mittens +1", feet="Turms leggings +1", left_ear="Cryptic earring"})
  end
end


function equip_current()
	equip(sets.weapon[sets.weapon.index[weapon_ind]])
	equip(sets.equip[sets.equip.index[equip_ind]]) 
	if (buffactive['Battuta']) then
		equip({hands="Turms mittens +1", feet="Turms leggings +1", left_ear="Cryptic earring"})
	end
end

--Function use for Changing the equip Set. 
--123 is a red color for the text ouequiput
--158 is a green color for the text ouequiput
function self_command(command)
	if command =='toggle weapon set' then
		weapon_ind = weapon_ind -1
		if weapon_ind == 0 then weapon_ind = #sets.weapon.index end
		send_command('@input /echo <----- Weapon changed to '..sets.weapon.index[weapon_ind]..' ----->')
		equip_current()	
	elseif command == 'reverse weapon set' then
		weapon_ind = weapon_ind +1
		if weapon_ind > #sets.weapon.index then weapon_ind = 1 end
		send_command('@input /echo <----- Weapon changed to '..sets.weapon.index[weapon_ind]..' ----->')
		equip_current()
	elseif command == 'toggle equip set' then
		equip_ind = equip_ind +1
		if equip_ind > #sets.equip.index then equip_ind = 1 end
		send_command('@input /echo <----- Equipment changed to '..sets.equip.index[equip_ind]..' ----->')
		equip_current()
	elseif command == 'reverse equip set' then
		equip_ind = equip_ind -1
		if equip_ind == 0 then equip_ind = #sets.equip.index end
		send_command('@input /echo <----- Equipment changed to '..sets.equip.index[equip_ind]..' ----->')
		equip_current()
	end
end
