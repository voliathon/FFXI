function get_sets()
-- Set macro book/set --
    send_command('input /macro book 6;wait .1;input /macro set 1')
	
    sets.precast = {}
    --sets.precast.Utsusemi = {}
    sets.Waltz = {head="Mummu bonnet+1", legs="Dashing subligar"}
    
	
	--Blade: Ten
	--Stat Mod: STR30/DEX30 --Stick WSD on this shit
	--Skillchain Gravitation
	
	--Blade: Hi
	--Stat Mod: AGI80 --CRIT is a modifier for this guy
	--Skillchain: Darkness / Gravitation
	
	--Blade: Shun
	--Stat Mod: DEX73~85 --Attack Attack Attack on this duder
	--Skillchain: Light / Fusion / Impaction
	
		
	
    --One WS Set to Rule them all. Fuck it...for now...
    sets.WS = {
		ammo="Yetshila +1",
		head={ name="Adhemar Bonnet +1", augments={'STR+12','DEX+12','Attack+20'}},
		body="Ken. Samue +1",
		hands="Ken. Tekko +1",
		legs="Hiza. Hizayoroi +2",
		feet="Ken. Sune-Ate +1",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250'}},
		right_ear="Ishvara Earring",
		left_ring="Chirich Ring +1",
		right_ring="Epaminondas's Ring",
		back="Andartia's Mantle"
    }
    
    sets.TP = {
		ammo="Ginsen",
		head="Ken. Jinpachi +1",
		body="Ken. Samue +1",
		hands="Ken. Tekko +1",
		legs="Ken. Hakama +1",
		feet="Ken. Sune-Ate +1",
		neck="Moonlight Nodowa",
		waist="Sinew belt",
		left_ear="Brutal Earring",
		right_ear="Digni. Earring",
		left_ring="Chirich Ring +1",
		right_ring="Chirich Ring +1",
		back="Andartia's Mantle"
    }
    
	sets.NUKE = {
		ammo="Pemphredo Tathlum",
		head={ name="Herculean Helm", augments={'Magic burst dmg.+7%','STR+7','Mag. Acc.+10','"Mag.Atk.Bns."+11'}},
		body={ name="Herculean Vest", augments={'Accuracy+24','Magic burst dmg.+7%','"Mag.Atk.Bns."+15'}},
		hands={ name="Herculean Gloves", augments={'Accuracy+9','Magic burst dmg.+7%','"Mag.Atk.Bns."+4'}},
		legs={ name="Herculean Trousers", augments={'Magic burst dmg.+7%','Mag. Acc.+12','"Mag.Atk.Bns."+10'}},
		feet={ name="Adhe. Gamashes +1", augments={'AGI+12','Rng.Acc.+20','Rng.Atk.+20'}},
		neck="Sanctity Necklace",
		waist="Fotia Belt",
		left_ear="Hecate's Earring",
		right_ear="Friomisi Earring",
		left_ring="Fenrir Ring +1",
		right_ring="Stikini Ring",
		back="Andartia's Mantle"
	}

	sets.MACC = {
	
	
	}


    sets.status = {}
    sets.status.Engaged = sets.TP
    
    sets.status.Idle = {
		ammo="Ginsen",
		head="Ken. Jinpachi +1",
		body="Ken. Samue +1",
		hands="Ken. Tekko +1",
		legs="Ken. Hakama +1",
		feet="Ken. Sune-Ate +1",
		neck="Moonlight Nodowa",
		waist="Grunfeld Rope",
		left_ear="Brutal Earring",
		right_ear="Digni. Earring",
		left_ring="Chirich Ring +1",
		right_ring="Chirich Ring +1",
		back="Andartia's Mantle"
    }

end

function precast(spell) 
    if spell.type=="WeaponSkill" then
        equip(sets.WS)		
    elseif sets.precast[spell.english] then
        equip(sets.precast[spell.english])
    elseif string.find(spell.english,'Waltz') then
        equip(sets.Waltz)
    end
end

--function midcast(spell)
--	if sets.midcast[spell.english] then
--		equip(sets.midcast[spell.english])
--	end
--end

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