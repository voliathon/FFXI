function get_sets()
-- Set macro book/set --
    send_command('input /macro book 8;wait .1;input /macro set 1')
	
	-- Binds for modes
	-- Toggle Mecistopins mantle
	send_command('bind ^f7 gs c C7')
	
	-- Toggle Instrument F8 Key
	send_command('bind !f8 gs c Toggle Instruments') 
	send_command('bind ^f8 gs c Reverse Toggle Instruments')
	
	-- Toggle Engaged sets button, change if you want; currently ALT+F9 toggles forward, CTRL+F9 toggles backwards
    send_command('bind !f9 gs c toggle Engaged set')
	send_command('bind ^f9 gs c reverse Engaged set')
	
	-- Modes --
	Capacity = 'OFF' -- Press ctrl + F7 if you want to be in Capacity mode  --	
	Marsyas = 'OFF' -- Toogle on/off the Marsyas and Gjallarhorn via ctrl + F8
	
	--Job Ability Sets--
	sets.JA = {}
	
	sets.JA.Nightingale = {feet="Bihu Slippers +1"}
    sets.JA.Troubadour = {body="Bihu Justaucorps +1"}
    sets.JA.SoulVoice = {legs="Bihu Cannions +1"}
	
	-- Dancer's Abilities --
	sets.JA.Waltz = {legs="Dashing subligar"}
	sets.JA.Step = {}
	sets.JA.Stun = {}	
  
	
 --Idle Set--
  sets.Idle = {
    head="Nyame Helm",
	body="Nyame mail",
    hands="Fili Manchettes +2",
	legs="Nyame flanchard",
	feet="Nyame sollerets",
    neck="Loricate Torque +1",
    waist="Flume Belt",
    left_ear="Genmei Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Defending Ring",
    right_ring="Woltaris ring",
    back="Moonlight Cape"
  }

  
  --Fast Cast Set--
  sets.FastCast = {
    head={ name="Vanya Hood", augments={'MP+50','"Fast Cast"+10','Haste+2%'}},
    body="Zendik Robe",
    hands={ name="Gende. Gages +1", augments={'Phys. dmg. taken -4%','Song spellcasting time -4%'}},
    legs="Aya. Cosciales +2",
    feet="Fili cothurnes +2",
    neck="Voltsurge Torque",
    waist="Embla Sash",
    left_ear="Mendi. Earring",
    right_ear="Loquac. Earring",
    left_ring="Stikini Ring +1",
    right_ring="Rahab Ring",
    back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','Haste+10','Spell interruption rate down-10%'}}
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
    back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','Haste+10','Spell interruption rate down-10%'}}  
  }
 
  --Magic Accuracy for those pesky songs that don't want to stick--
  sets.MagicAccuracy = {
    head="Fili calot +2",
    body="Brioso Justaucorps +3",
    hands="Brioso Cuffs +3",
    legs="Brioso Cannions +3",
    feet="Brioso Slippers +3",
    neck="Mnbw. Whistle +1",
    waist="Luminary Sash",
    left_ear="Musical Earring",
    right_ear="Digni. Earring",
    left_ring="Sangoma Ring",
    right_ring="Stikini Ring +1",
    back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','Haste+10','Spell interruption rate down-10%'}}
  }
  
  --Maximizing Song Potency first then duration-- 
  sets.Songs = {
    head="Fili calot +2",
    body="Fili Hongreline +2",
    hands="Fili Manchettes +2",
    legs="Inyanga Shalwar +2",
    feet="Brioso Slippers +3",
    neck="Mnbw. Whistle +1",
    waist="Kobo Obi",
    left_ear="Musical Earring",
    right_ear="Fili Earring",
    left_ring="Lebeche Ring",
    right_ring="Stikini Ring +1",
    back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','Haste+10','Spell interruption rate down-10%'}}
  }
  
  sets.Ballad = set_combine(sets.Songs, { 
	legs="Fili Rhingrave +2"
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
    neck="Nodens Gorget",
    waist="Gishdubar Sash",
    left_ear="Healing Earring",
    right_ear="Magnetic Earring",
    left_ring="Ephedra Ring",
    right_ring="Ephedra Ring",
    back="Oretan. Cape +1"  
  }

  sets.Sleep = set_combine(sets.MagicAccuracy, { 
    head="Fili calot +2",
	hands="Brioso Cuffs +3",
	body="Brioso Justaucorps +3",
	feet="Brioso Slippers +3",
	legs="Inyanga Shalwar +2",
	range="Daurdabla",
	main="Carnwenhan"
  
  })
  
  
  -- TODO
  -- Lullaby <--Atm it's hitting MagicAccuracy as of 4/26/2020
  -- Waltz
  -- Enhancing <-- I don't think we really need to do this or focus on this for BRD.  
  -- Mordant Rime  70%CHR / 30% DEX
  -- Evisceration   50% DEX  Critical Hits
  -- Rudra's Storm  80% DEX  Dmg varies with TP
  -- Exenterator  85% AGI w/ capped merits.  Duration of accuracy down varies with TP
  -- Aeolian Edge  40% DEX / 40% INT  Dmg varies with TP
  -- 

  -- Engaged Sets Toggle--
  sets.engaged = {}
  sets.engaged.index = {'TP', 'TakingLessPhysicalDamage', 'TakingLessMagicDamage', 'Accuracy', 'Refresh', 'Movement'}
  engaged_ind = 1    
  
  --TP Set--
  sets.engaged.TP = {
    head="Aya. Zucchetto +2",
    body="Ayanmo Corazza +2",
    hands="Fili Manchettes +2",
	legs="Nyame flanchard",
	feet="Nyame sollerets",
    neck="Bard's charm +2",
    waist="Sailfi Belt +1",
    left_ear="Brutal Earring",
    right_ear="Telos Earring",
    left_ring="Hetairoi Ring",
    right_ring="Chirich Ring +1",
    back={ name="Intarabus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10'}} 
  }
  
  --Accuracy Set--
  sets.engaged.Accuracy = {
    head="Fili Calot +2",
    body="Fili Hongreline +2",
    hands="Fili Manchettes +2",
    legs="Fili Rhingrave +2",
    feet="Fili Cothurnes +2",
    neck="Bard's charm +2",
    waist="Eschan Stone",
    left_ear="Dignitary's Earring",
    right_ear="Telos Earring",
    left_ring="Chirich Ring +1",
    right_ring="Chirich Ring +1",
    back={ name="Intarabus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10'}}  
  }
  
  sets.engaged.TakingLessPhysicalDamage = {
    head="Nyame helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame flanchard",
    feet="Nyame Sollerets",
    neck="Loricate Torque +1",
    waist="Flume Belt",
    left_ear="Genmei Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Defending Ring",
    right_ring="Patricius Ring",
    back="Moonlight Cape"  
  }
  
  sets.engaged.TakingLessMagicDamage = {
    head="Nyame helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame flanchard",
    feet="Nyame Sollerets",
    neck="Loricate Torque +1",
    waist="Flume Belt",
    left_ear="Genmei Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Defending Ring",
    right_ring="Fortified ring",
    back="Moonlight Cape"
  }
  
  sets.engaged.Refresh = {
    head={ name="Chironic Hat", augments={'Pet: Haste+2','Crit. hit damage +3%','"Refresh"+1','Accuracy+15 Attack+15','Mag. Acc.+17 "Mag.Atk.Bns."+17'}},
    body="Annoint. Kalasiris",
    hands={ name="Chironic Gloves", augments={'Crit.hit rate+4','Weapon Skill Acc.+4','"Refresh"+1','Accuracy+2 Attack+2','Mag. Acc.+17 "Mag.Atk.Bns."+17'}},
    legs="Assid. Pants +1",
    feet={ name="Chironic Slippers", augments={'Phys. dmg. taken -1%','Pet: Attack+9 Pet: Rng.Atk.+9','"Refresh"+2','Mag. Acc.+20 "Mag.Atk.Bns."+20'}},
    neck="Bathy Choker +1",
    waist="Fucho-no-Obi",
    left_ear="Infused Earring",
    right_ear="Genmei Earring",
    left_ring="Woltaris Ring",
    right_ring="Stikini Ring +1",
    back="Kumbira Cape"  
  }
  
  sets.engaged.Movement = set_combine(sets.engaged.TakingLessPhysicalDamage,  {
	feet="Fili cothurnes +2"
  })
  
  --Weaponskill Sets--
  sets.WS = {}

  --I got lazy about the WeaponSkill for now. Any WS will come to this set for the time being.  It's not ideal by any means.
  --It will do us justice on Savage Blade as an example
  -- 81 WSD 5/29/2021
  sets.WSD = {
    ammo="Ginsen",
    neck="Fotia Gorget", --10
    waist="Fotia Belt", --10
    left_ear="Ishvara Earring", --2
    right_ear="Moonshade Earring",
    left_ring="Hetairoi Ring",
    right_ring="Epaminondas's Ring" --5

  }
  

  -- Instrument Toggle--
  sets.instrument = {}
  sets.instrument.index = {'Gjallarhorn', 'Daurdabla', 'Marsyas'}
  instrument_ind = 1     
  
 sets.instrument.Gjallarhorn = {
	range="Gjallarhorn"
 } 
 sets.instrument.Daurdabla = {
	range="Daurdabla"
 }
 sets.instrument.Marsyas = {
	range="Marsyas"
 } 

 
end


function precast(spell,abil)
	--equips favorite Instrument if disarmed
	if player.equipment.range == "empty" or player.equipment.sub == "empty" then
		if spell.name == 'Honor March' then
			equip(sets.FastCast,{range="Marsyas",ammo="empty"})
			add_to_chat(158,'Marsyas Weapon: [ON]')
			Gjallarhorn = 'OFF'
			Marsyas = 'ON'
		else
			equip(sets.FastCast,{range="Gjallarhorn",ammo="empty"})
			add_to_chat(158,'Gjallarhorn Weapon: [ON]')
			Gjallarhorn = 'ON'
			Marsyas = 'OFF'
		end
		
	end
	if spell.type == 'BardSong' then
		if spell.name == 'Honor March' then
			equip(sets.FastCast,{range="Marsyas",ammo="empty"})
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
	if spell.name == "Rudra's Storm" or spell.name == "Evisceration" or spell.name == "Mordant Rime" or spell.name == "Savage Blade" then
		equip(sets.WSD)
	end
	-- Add logic for Waltz
	-- Add logic for Utsusemi
  
  
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
	    equip(sets.Sleep)
	  elseif string.find(spell.english,'Elegy') then
		equip(sets.MagicAccuracy)
	  else
		equip(sets.Songs)
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
end

function equip_instrument()
	equip(sets.instrument[sets.instrument.index[instrument_ind]])
end

--Function use for Changing the Engaged Set.  Ctrl+F9 is your meal ticket
--123 is a red color for the text output
--158 is a green color for the text output
function self_command(command)
	if command == 'C7' then -- Mecistopins Mantle toggle 
		if Capacity == 'OFF' then
			Capacity = 'ON'
			equip({back="Mecistopins mantle"})
            add_to_chat(158,'Capacity mantle: [ON]')
		else
			Capacity = 'OFF'
			equip_current()
   		    add_to_chat(123,'Capacity mantle: [OFF]')
		end
	elseif command == 'Toggle Instruments' then -- Gjallarhorn to Daurdabla to Marsyas --	
		instrument_ind = instrument_ind +1
		if instrument_ind > #sets.instrument.index then instrument_ind = 1 end
		send_command('@input /echo <----- Gear Set changed to '..sets.instrument.index[instrument_ind]..' ----->')
		equip_instrument()
	elseif command == 'Reverse Toggle Instruments' then -- Gjallarhorn to Daurdabla to Marsyas --
		instrument_ind = instrument_ind -1
		if instrument_ind == 0 then instrument_ind = #sets.instrument.index end
		send_command('@input /echo <----- Gear Set changed to '..sets.instrument.index[instrument_ind]..' ----->')
		equip_instrument()
	elseif command == 'toggle Engaged set' then
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


function equip_song_gear(spell)
    if spell.target.type == 'MONSTER' then
	 --Need to add another if statement for lullaby here and any other logic that we can think of for debuffing on Bard
		equip(sets.MagicAccuracy,{range="Daurdabla",ammo="empty"})
		Marsyas = 'ON'
		Gjallarhorn = 'OFF'
	else
		equip(sets.Songs)
	end
end
