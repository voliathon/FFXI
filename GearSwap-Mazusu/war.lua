function get_sets()
-- Set macro book/set --
    send_command('input /macro book 15;wait .1;input /macro set 13')
	
    sets.precast = {}
    sets.precast.Berserk = {hands="Pummeler's Lorica +3--"}
    sets.precast['Mighty Strikes'] = {}
    sets.Waltz = {}
    
	--WS Chart for WAR
	--Upheavel --- 
		
	
    --One WS Set to Rule them all. Fuck it...for now...
    sets.WS = {
		sub="Utu Grip",
		ammo="Knobkierrie",
		head={ name="Valorous Mask", augments={'VIT+9','Magic dmg. taken -2%','Weapon skill damage +8%','Accuracy+20 Attack+20'}},
		body="Nzingha Cuirass",
		hands={ name="Valorous Mitts", augments={'Attack+25','Weapon skill damage +3%','STR+14','Accuracy+10'}},
		legs="Pumm. Cuisses +3",
		feet="Pumm. Calligae +3",
		neck="Fotia Gorget",
		waist="Ioskeha Belt +1",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Telos Earring",
		left_ring="Regal Ring",
		right_ring="Epaminondas's Ring",
		back={ name="Cichol's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%'}}
    }
    
    sets.TP = {
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
    
    sets.status = {}
    sets.status.Engaged = sets.TP
    
    sets.status.Idle = {
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

function aftercast(spell)
    if sets.status[player.status] then
        equip(sets.status[player.status])
    end
end

function status_change(new,old)
    if sets.status[new] then
        equip(sets.status[new])
    end
end