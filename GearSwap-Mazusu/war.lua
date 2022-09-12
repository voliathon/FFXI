function get_sets()
-- Set macro book/set --
    send_command('input /macro book 13;wait .1;input /macro set 1')
	
    sets.precast = {}
    sets.precast.Berserk = {hands="Pummeler's Lorica +3"}
    sets.precast['Mighty Strikes'] = {}
    sets.Waltz = {}
    
	 sets.Idle = {
		sub="Utu Grip",
		ammo="Staunch Tathlum",
		head="Sulevia's Mask +2",
		body="Tartarus Platemail",
		hands="Sulev. Gauntlets +2",
		legs="Sulev. Cuisses +2",
		feet="Sulev. Leggings +2",
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ear="Odnowa Earring +1",
		right_ear="Infused Earring",
		left_ring="Defending Ring",
		right_ring="Moonbeam Ring",
		back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Damage taken-5%',}}
    }
	
	--WS Chart for WAR
	--Upheavel --- 
		
	
    --One WS Set to Rule them all. Fuck it...for now...
    sets.WS = {
		sub="Utu Grip",
		ammo="Knobkierrie",
		head={ name="Valorous Mask", augments={'VIT+9','Magic dmg. taken -2%','Weapon skill damage +8%','Accuracy+20 Attack+20',}},
		body="Pumm. Lorica +3",
		hands={ name="Valorous Mitts", augments={'Rng.Atk.+11','Pet: STR+5','Weapon skill damage +6%','Accuracy+15 Attack+15','Mag. Acc.+17 "Mag.Atk.Bns."+17',}},
		legs={ name="Argosy Breeches +1", augments={'STR+12','Attack+25','"Store TP"+6',}},
		feet="Sulev. Leggings +2",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Thrud Earring",
		left_ring="Regal Ring",
		right_ring="Epaminondas's Ring",
		back={ name="Cichol's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%',}}
    }
    
	  -- Engaged Sets Toggle--
	sets.engaged = {}
	sets.engaged.index = {'TP', 'Movement', 'TakingLessPhysicalDamage', 'TakingLessMagicDamage', 'Accuracy', 'Refresh'}
	engaged_ind = 1  
    
    
    sets.engaged.TP = {
		sub="Utu Grip",
		ammo="Ginsen",
		head="Flam. Zucchetto +2",
		body={ name="Argosy Hauberk +1", augments={'STR+12','Attack+20','"Store TP"+6',}},
		hands="Flamma manopolas +2",
		legs="Pumm. Cuisses +3",
		feet="Pumm. Calligae +3",
		neck="Lissome Necklace",
		waist="Ioskeha Belt +1",
		left_ear="Cessance Earring",
		right_ear="Telos Earring",
		left_ring="Regal Ring",
		right_ring="Flamma Ring",
		back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Accuracy+2','"Dbl.Atk."+10',}}
    }
	
	
	
	  --Job Ability Sets--
  sets.JA = {}
  -- Dancer's Abilities --
  sets.JA.Waltz = {legs="Dashing subligar"}

end

function precast(spell)
	-- Dancer Abilities --
	  if string.find(spell.english, 'Waltz') then
		equip(sets.JA.Waltz)
	  end	
	if spell.type=="WeaponSkill" then
		equip(sets.WS)		
	elseif sets.precast[spell.english] then
		equip(sets.precast[spell.english])
	elseif string.find(spell.english,'Waltz') then
		equip(sets.Waltz)
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
		send_command('@input /tell <me> Wakies Wakies Voreus We hit 0 HP on accident. We shall live forever!!!')
	end
end)

