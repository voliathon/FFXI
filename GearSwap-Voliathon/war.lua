function get_sets()
  -- Set macro book/set --
  send_command('input /macro book 17;wait .1;input /macro set 1')
	
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
	
	
  --Precast Sets--
  --Fast Cast set
  sets.Fastcast = {
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
    neck={ name="Loricate Torque +1", augments={'Path: A'}},
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
    neck="Null loop", --5
    waist="Audumbla sash", --10
    left_ear="Halasz Earring", --5
    right_ear="Magnetic Earring" --8
 }
 
  --Enmity set for high hate generating spells and JAs
  sets.Enmity = {back={ name="Ogma's cape", augments={'Enmity+10','Phys. dmg. taken-4%',}}, waist="Sinew Belt", legs="Erilaz Leg Guards +1", neck="Moonlight necklace", body="Emet Harness +1"}

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
	
  
  --TP Sets--
  sets.TP = {}
  --				  1		     2            3 		     4 		       5		   6              7
  sets.TP.index = {'Tank', 'SingleWield', 'DualWield', 'TwoHandedTP',  'Movement', 'Accuracy', 'TreasureHunter'}
  TP_ind = 1
 
  sets.TP.SingleWield = {
    ammo={ name="Coiste Bodhar", augments={'Path: A',}},
    head="Flam. Zucchetto +2",
    body="Hjarrandi breastplate",
    hands={ name="Sakpata's Gauntlets", augments={'Path: A',}},
    legs="Pumm. Cuisses +3",
    feet="Pumm. Calligae +3",
    neck="Clotharius Torque",
    waist="Ioskeha Belt +1",
    left_ear={ name="Schere Earring", augments={'Path: A',}},
    right_ear="Boii Earring +1",
    left_ring="Flamma Ring",
    right_ring="Chirich Ring +1"  
  }
  
  --offensive melee set
  sets.TP.DualWield = {
    ammo="Coiste Bodhar",
    head="Flam. Zucchetto +2",
    body="Sakpata's breastplate",
    hands="Sakpata's gauntlets",
    legs="Pumm. cuisses +3",
    feet="Pumm. Calligae +3",
    neck="Clotharius Torque",
    waist="Ioskeha Belt +1",
    left_ear="Brutal Earring",
    right_ear="Boii Earring +1",
    left_ring="Chirich Ring +1",
    right_ring="Chirich Ring +1",
    back="Moonlight Cape"
  }
  
  sets.TP.TwoHandedTP = {
    ammo={ name="Coiste Bodhar", augments={'Path: A',}},
    head="Flam. Zucchetto +2",
    body="Hjarrandi Breast.",
    hands={ name="Sakpata's Gauntlets", augments={'Path: A',}},
    legs="Pumm. Cuisses +3",
    feet="Pumm. Calligae +3",
    neck="Clotharius Torque",
    waist="Ioskeha Belt +1",
    left_ear={ name="Schere Earring", augments={'Path: A',}},
    right_ear="Boii Earring +1",
    left_ring="Flamma Ring",
    right_ring="Chirich Ring +1"  
  }

  --Tank Gear
  sets.TP.Tank = {
    ammo="Staunch Tathlum +1",
    head="Sakpata's Helm",
    body="Sakpata's Plate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Sakpata's Leggings",
    neck="Null loop",
    waist="Null belt",
    left_ear="Tuisto Earring",
    right_ear="Boii Earring +1",
    left_ring="Moonlight Ring",
    right_ring="Fortified Ring",
    back="Engulfer Cape +1"
  }

  sets.TP.Movement = {
    ammo="Staunch Tathlum +1",
    head="Sakpata's Helm",
    body="Sakpata's Plate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Sakpata's Leggings",
    neck="Null loop",  
    left_ear="Tuisto Earring",
    right_ear="Boii Earring +1",
    left_ring="Shneddick ring",
    right_ring="Moonlight Ring",
    back="Engulfer Cape +1"	
  }
  
  sets.TP.Accuracy = {
    ammo="Amar Cluster",
    head="Flam. Zucchetto +2",
    body="Sakpata's Plate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Pumm. Calligae +3",
    neck="Null loop",
    waist="Null belt",
    left_ear="Dignitary's Earring",
    right_ear="Boii Earring +1",
    left_ring="Chirich Ring +1",
    right_ring="Chirich Ring +1",
    back="Vespid Mantle"
  }
  
  sets.TP.TreasureHunter = {
    ammo="Amar Cluster",
    head="Flam. Zucchetto +2",
    body="Volte Jupon",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Pumm. Calligae +3",
    neck="Null loop",
    waist="Chaac Belt",
    left_ear="Tuisto Earring",
    right_ear="Boii Earring +1",
    left_ring="Chirich Ring +1",
    right_ring="Chirich Ring +1",
    back="Vespid Mantle"
  }


  --Weaponskill Sets--
  --multi, carries FTP -- Need STR for the modifier
  sets.Resolution = {
    ammo="Knobkierrie",
    head="Flam. Zucchetto +2",
    body="Hjarrandi Breast.",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Pumm. Calligae +3",
    neck="Fotia Gorget",
    waist="Ioskeha Belt +1",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    right_ear="Boii Earring +1",
    left_ring="Epaminondas's Ring",
    right_ring="Rajas Ring",
    back="Vespid Mantle"
  }

  --single, doesn't carry FTP 
  sets.Single = {
    ammo="Knobkierrie",
    head={ name="Nyame Helm", augments={'Path: B',}},
    body={ name="Nyame Mail", augments={'Path: B',}},
    hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
    neck="Fotia Gorget",
    waist="Sailfi belt +1",
    left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250',}},
    right_ear={ name="Boii Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+12','Mag. Acc.+12','Crit.hit rate+4',}},
    left_ring="Epaminondas's Ring",
    right_ring="Rajas Ring",
    back="Vespid Mantle"
  }

  --Stat Modifier: 	30% STR / 30% MND   Sleep Weaponskill
  sets.Shockwave = {
    ammo="Pemphredo Tathlum",
    head="Sakpata's Helm",
    body="Nyame Mail",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Sakpata's Leggings",
    neck="Null loop",
    waist="Null belt",
    left_ear="Digni. Earring",
    right_ear="Gwati Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back="Engulfer Cape +1"
  }

  --magic WS
  sets.HercSlash = {
    ammo="Pemphredo Tathlum",
    head="Sakpata's Helm",
    body="Crepuscular Mail",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Sakpata's Leggings",
    neck="Fotia Gorget",
    waist="Orpheus's sash",
    left_ear="Digni. Earring",
    right_ear="Gwati Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back="Engulfer Cape +1"
  }

	--Weapon Sets--
	sets.weapon = {}
	sets.weapon.index = {'NagShield','CrepShield'}
	weapon_ind = 1

	sets.weapon.NagShield = {
		main="Naegling",
		sub="Blurred shield +1"
	}
	
	sets.weapon.CrepShield = {
		main="Crepuscular knife",
		sub="Blurred shield +1"
	}  

end


function precast(spell,abil)

	-- Dancer Abilities --
  if string.find(spell.english, 'Waltz') then
	equip(sets.JA.Waltz)
  end	
  
 
  if spell.skill == 'Enhancing Magic' then
	equip(sets.Fastcast)
  end
  if spell.action_type == 'Magic' then
    equip(sets.Fastcast)
  end
  
  
  if spell.name == 'Resolution' then
    equip(sets.Resolution)
  end
  if spell.name == 'Dimidiation' or spell.name == 'Spinning Slash' or spell.name == 'Savage Blade' then
    equip(sets.Single)
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
