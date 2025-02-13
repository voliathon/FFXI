function get_sets()
-- Set macro book/set --
    send_command('input /macro book 17;wait .1;input /macro set 1')
	
	-- Binds for modes
	--Toggle TP sets button, change if you want; currently ALT+F9 toggles forward, CTRL+F9 toggles backwards
  	send_command('bind ^f8 gs c C8') 
    send_command('bind !f9 gs c toggle TP set')
	send_command('bind ^f9 gs c reverse TP set')

	-- Modes --
	Capacity = 'OFF' -- Press ctrl + F11 if you want to be in Capacity mode  --	
	Naegling = 'OFF' -- Toogle on/off the Naegling and Shining One via ctrl + F8
	ShadowType = 'None'
	
  --TP Sets--
  sets.TP = {}
--					  1		   2              3 				   4 		    5		     6
  sets.TP.index = {'BadAss', 'TankMovement', 'TakingLessMagicDamage', 'Accuracy', 'TreasureHunter'}
  TP_ind = 1

  sets.TP.Movement = {
    ammo="Coiste bodhar",
    head={ name="Gleti's Mask", augments={'Path: A',}},
    body={ name="Gleti's Cuirass", augments={'Path: A',}},
    hands={ name="Gleti's Gauntlets", augments={'Path: A',}},
    legs={ name="Gleti's Breeches", augments={'Path: A',}},
    feet={ name="Gleti's Boots", augments={'Path: A',}},
    neck="Null Loop",
    waist="Ioskeha Belt +1",
    left_ear="Sherida Earring",
    right_ear={ name="Pel. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+12','Mag. Acc.+12','Crit.hit rate+4',}},
    left_ring="Shneddick Ring",
    right_ring="Chirich Ring +1",
    back="Null shawl"
  }
  
  --offensive melee set
  sets.TP.BadAss = {
    ammo="Coiste bodhar",
    head="Flam. Zucchetto +2",
    body={ name="Gleti's Cuirass", augments={'Path: A',}},
    hands={ name="Gleti's Gauntlets", augments={'Path: A',}},
    legs={ name="Gleti's Breeches", augments={'Path: A',}},
    feet="Flam. Gambieras +2",
    neck="Anu Torque",
    waist="Ioskeha Belt +1",
    left_ear="Sherida Earring",
    right_ear={ name="Pel. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+12','Mag. Acc.+12','Crit.hit rate+4',}},
    left_ring="Chirich Ring +1",
    right_ring="Chirich Ring +1",
    back="Null Shawl"
  }

  --Tank Gear
  sets.TP.TankMovement = {
    ammo="Staunch Tathlum +1",
    head={ name="Gleti's Mask", augments={'Path: A',}},
    body={ name="Gleti's Cuirass", augments={'Path: A',}},
    hands={ name="Gleti's Gauntlets", augments={'Path: A',}},
    legs={ name="Gleti's Breeches", augments={'Path: A',}},
    feet={ name="Gleti's Boots", augments={'Path: A',}},
    neck="Null Loop",
    waist="Null belt",
    left_ear="Tuisto Earring",
    right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
    left_ring="Shneddick Ring",
    right_ring="Defending Ring",
    back="Null shawl"
  }

  --MDT melee set
  sets.TP.TakingLessMagicDamage = {
    ammo="Staunch Tathlum +1",
    head="Nyame helm",
	body={ name="Nyame Mail", augments={'Path: B',}},
    hands="Nyame gauntlets",
    legs="Nyame flanchard",
    feet="Nyame sollerets",
    neck="Null loop",
    waist="Null belt",
    left_ear="Tuisto Earring",
    right_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
    left_ring="Defending Ring",
    right_ring="Fortified Ring",
    back="Null shawl"
  }
  
  sets.TP.Accuracy = {
    ammo="Coiste bodhar",
    head="Flam. Zucchetto +2",
    body="Gleti's Cuirass",
    hands="Gleti's gauntlets",
    legs="Gleti's breeches",
    feet="Flam. Gambieras +2",
    neck="Null loop",
    waist="Null belt",
    left_ear="Sherida Earring",
    right_ear={ name="Pel. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+12','Mag. Acc.+12','Crit.hit rate+4',}},
    left_ring="Chirich Ring +1",
    right_ring="Chirich Ring +1",
    back="Null shawl"
  }
  
  sets.TP.TreasureHunter = {
    ammo="Amar Cluster",
    head="Flam. Zucchetto +2",
    body="Volte Jupon",
    hands="Gleti's gauntlets",
    legs="Gleti's breeches",
    feet="Flam. Gambieras +2",
    neck="Null loop",
    waist="Chaac Belt",
    left_ear="Sherida Earring",
    right_ear={ name="Pel. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+12','Mag. Acc.+12','Crit.hit rate+4',}},
    left_ring="Chirich Ring +1",
    right_ring="Chirich Ring +1",
    back="Null shawl"
  }

  --Weaponskill Sets--
  sets.WS = {}

  -- 100% STR
  sets.ImpulseDrive = {
    ammo="Crepuscular Pebble",
    head={ name="Nyame Helm", augments={'Path: B',}},
    body={ name="Nyame Mail", augments={'Path: B',}},
    hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
    neck="Fotia Gorget",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    right_ear={ name="Pel. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+12','Mag. Acc.+12','Crit.hit rate+4',}},
    left_ring="Sroda Ring",
    right_ring="Epaminondas's Ring",
    back="Null Shawl"
  }

  -- Savage Blade
  sets.SavageBlade = {
    ammo="Crepuscular Pebble",
    head={ name="Nyame Helm", augments={'Path: B',}},
    body={ name="Nyame Mail", augments={'Path: B',}},
    hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
    neck="Fotia Gorget",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    right_ear={ name="Pel. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+12','Mag. Acc.+12','Crit.hit rate+4',}},
    left_ring="Sroda Ring",
    right_ring="Epaminondas's Ring",
    back="Null Shawl"
  }

  --  	50% STR Critical hit fourfold
  sets.Drakesbane = {
    ammo={ name="Coiste Bodhar", augments={'Path: A',}},
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body="Hjarrandi Breast.",
    hands={ name="Gleti's Gauntlets", augments={'Path: A',}},
    legs={ name="Gleti's Breeches", augments={'Path: A',}},
    feet={ name="Gleti's Boots", augments={'Path: A',}},
    neck="Fotia Gorget",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    right_ear={ name="Pel. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+12','Mag. Acc.+12','Crit.hit rate+4',}},
    left_ring="Sroda Ring",
    right_ring="Epaminondas's Ring",
    back="Null Shawl" 
  }
  
  sets.Stardiver = {
    ammo={ name="Coiste Bodhar", augments={'Path: A',}},
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body="Nyame mail",
    hands={ name="Gleti's Gauntlets", augments={'Path: A',}},
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
    neck="Fotia Gorget",
    waist="Fotia belt",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    right_ear={ name="Pel. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+12','Mag. Acc.+12','Crit.hit rate+4',}},
    left_ring="Sroda Ring",
    right_ring="Epaminondas's Ring",
    back="Null Shawl"   
  }

  sets.Enhancing = {
    ammo="Staunch Tathlum +1",
    head="Erilaz Galea +1",
    body="Dread Jupon",
    hands="Regal Gauntlets",
    legs="Futhark Trousers +1",
    feet="Carmine greaves +1",
    neck="Null loop",
    waist="Siegel Sash",
    left_ear="Magnetic Earring",
    right_ear="Halasz Earring",
    left_ring="Defending Ring",
    right_ring="Stikini Ring"
  }

  --Job Ability Sets--
  sets.JA = {}
  
  -- Dancer's Abilities --
  sets.JA.Waltz = {legs="Dashing subligar"}
  sets.JA.Step = 	{}
  sets.JA.Stun = {}
	
	
  --Precast Sets--
  --Fast Cast set
  sets.precast = {
    ammo="Staunch Tathlum +1",
    head="Rune. Bandeau +2",
    body="Dread Jupon",
    hands="Regal Gauntlets",
    legs={ name="Futhark Trousers +1", augments={'Enhances "Inspire" effect',}},
    feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}},
    neck="Loricate Torque +1",
    waist="Siegel Sash",
    left_ear="Mimir Earring",
    right_ear="Loquac. Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring"
  }

  --Phalanx--
  sets.Phalanx = {
    ammo="Staunch Tathlum +1",
    head={ name="Fu. Bandeau +1", augments={'Enhances "Battuta" effect'}},
    body={ name="Taeon Tabard", augments={'Spell interruption rate down -10%','Phalanx +3'}},
    hands={ name="Herculean Gloves", augments={'"Drain" and "Aspir" potency +4','Phys. dmg. taken -2%','Phalanx +5','Accuracy+19 Attack+19','Mag. Acc.+14 "Mag.Atk.Bns."+14'}},
    legs={ name="Futhark Trousers +1", augments={'Enhances "Inspire" effect'}},
    feet={ name="Herculean Boots", augments={'Pet: "Mag.Atk.Bns."+4','Pet: Attack+3 Pet: Rng.Atk.+3','Phalanx +4','Mag. Acc.+7 "Mag.Atk.Bns."+7'}},
    neck="Null loop",
    waist="Siegel Sash",
    left_ear="Magnetic Earring",
    right_ear="Halasz Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring",
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+7','Enmity+10','Phys. dmg. taken-10%'}}
 }

 --88 SIR
 sets.SIR = {
    ammo="Staunch Tathlum +1", --11
    body={ name="Taeon Tabard", augments={'Spell interruption rate down -10%','Phalanx +3',}}, --10
    hands="Regal Gauntlets", --10
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}}, --20
    feet={ name="Taeon Boots", augments={'Spell interruption rate down -9%','Phalanx +3',}}, --9
    neck="Loricate Torque +1", --5
    waist="Audumbla sash", --10
    left_ear="Halasz Earring", --5
    right_ear="Magnetic Earring" --8
 }
 
  --Enmity set for high hate generating spells and JAs
  sets.Enmity = {back={ name="Ogma's cape", augments={'Enmity+10','Phys. dmg. taken-4%',}}, waist="Sinew Belt", legs="Erilaz Leg Guards +1", neck="Warder's Charm", body="Emet Harness +1"}

  --Magic acc for enfeebles, handy for VW
  sets.MagicAcc = {}

  sets.Stoneskin = {
    ammo="Staunch Tathlum +1",
    head="Rune. Bandeau +2",
    body={ name="Taeon Tabard", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    hands="Regal Gauntlets",
    legs={ name="Futhark Trousers +1", augments={'Enhances "Inspire" effect',}},
    feet={ name="Taeon Boots", augments={'Spell interruption rate down -9%','Phalanx +3',}},
    neck="Null loop",
    waist="Siegel Sash",
    left_ear="Magnetic Earring",
    right_ear="Earthcry Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring",
    back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+7','Enmity+10','Phys. dmg. taken-10%'}}  
  }

end


function precast(spell,abil)

	-- Dancer Abilities --
  if string.find(spell.english, 'Waltz') then
	equip(sets.JA.Waltz)
  end	
  
  --equips favorite weapon if disarmed
  if player.equipment.main == "empty" or player.equipment.sub == "empty" then
    equip({main="Shining One",sub="Khonsu"})
    add_to_chat(158,'Shining One Weapon: [ON]')
	Naegling = 'OFF'
  end
  
  if spell.skill == 'Enhancing Magic' then
	equip(sets.precast)
  end
  if spell.action_type == 'Magic' then
    equip(sets.precast)
  end
  
  
  if spell.name == 'Impulse Drive' then
    equip(sets.ImpulseDrive)
  end
  if spell.name == 'Savage Blade' then
    equip(sets.SavageBlade)
  end

  if spell.name == 'Drakesbane' then
    equip(sets.Drakesbane)
  end


  --prevents casting Utsusemi if you already have 3 or more shadows
  if spell.name == 'Utsusemi: Ichi' and ShadowType == 'Ni' and (buffactive['Copy Image (3)'] or buffactive['Copy Image (4+)']) then
    cancel_spell()
  end
    --Utsusemi Check
  if string.find(spell.name,'Utsusemi') then
    equip({neck="Magoraga Beads"})
  end
  
  if buffactive['terror'] or buffactive['petrification'] or buffactive['stun'] or buffactive['sleep'] then
    if TP_ind == 4 then
      equip(sets.TP.Tank) else
      equip(sets.TP.Tank)
    end
  end
end



--Should NOT put Job Abilities here.  Ony Magic Fren!  Fren is Doggo Speak for Friend
function midcast(spell,act,arg)
  
  if spell.name == 'Flash' or spell.name == "Stun" then
    equip(sets.Enmity)
  end
  if spell.name == "Repose" or spell.skill == 'Enfeebling Magic' or spell.skill == 'Dark Magic' then
    equip(sets.MagicAcc)
  end

end


function aftercast(spell)
  equip_current()
  --Just running a lil somethin-somethin to track Shadows
  if string.find(spell.name,'Utsusemi') and not spell.interrupted then
    if spell.name == 'Utsusemi: Ichi' then
      ShadowType = 'Ichi'
    elseif spell.name == 'Utsusemi: Ni' then
      ShadowType = 'Ni'
    end
  end
end


--This function should only get kicked off when you're engaging.  
--If I want a manual 'Refresh' set or 'MDT' or 'DT' set I can do that in game with equipsets.  
--But I don't want to fuck myself by ignoring the engaged check.
--I'm also deciding not to use a Binding Key to put my in a MDT, PDT, DT, Refresh Set.
--I dunno, I'm just against hitting Ctrl+f# all the time for that shit
function equip_current()
	equip(sets.TP[sets.TP.index[TP_ind]]) 
end

--Function use for Changing the TP Set.  Ctrl+F9 is your meal ticket
--123 is a red color for the text output
--158 is a green color for the text output
function self_command(command)
	if command == 'C8' then -- Naegling to Shining One --	
        if Naegling == 'ON' then
            Naegling = 'OFF'
			equip({main="Shining One", sub="Khonsu"})
            add_to_chat(158,'Shining One Weapon: [ON]')
			add_to_chat(123,'Naegling Weapon: [OFF]')
		else
            Naegling = 'ON'
			equip({main="Naegling", sub="Brewer's escutcheon"})
            add_to_chat(158,'Naegling Weapon: [ON]')
            add_to_chat(123,'Shining One Weapon: [OFF]')				
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
