function get_sets()
-- Set macro book/set --
--    send_command('input /macro book 15;wait .1;input /macro set 1')
	
    sets.weapons = {main="Kaja Sword"}
    sets.precast = {}

    
    --One WS Set to Rule them all. Fuck it...for now...
    sets.WS = {
		sub="Genmei Shield",
		range="Blurred Harp",
		head="Aya. Zucchetto +2",
		body="Ayanmo Corazza +2",
		hands="Aya. Manopolas +2",
		legs="Inyanga Shalwar +2",
		feet="Aya. Gambieras +2",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Cessance Earring",
		right_ear="Brutal Earring",
		left_ring="Trizek Ring",
		right_ring="Capacity Ring"
    }
    
    sets.TP = {
		sub="Genmei Shield",
		range="Blurred Harp",
		head="Aya. Zucchetto +2",
		body="Ayanmo Corazza +2",
		hands="Aya. Manopolas +2",
		legs="Inyanga Shalwar +2",
		feet="Aya. Gambieras +2",
		neck="Mnbw. Whistle +1",
		waist="Ninurta's Sash",
		left_ear="Cessance Earring",
		right_ear="Brutal Earring",
		left_ring="Trizek Ring",
		right_ring="Capacity Ring"
    }
    
    sets.status = {}
    sets.status.Engaged = sets.TP
    
    sets.status.Idle = {
		sub="Genmei Shield",
		range="Blurred Harp",
		head="Aya. Zucchetto +2",
		body="Ayanmo Corazza +2",
		hands="Aya. Manopolas +2",
		legs="Inyanga Shalwar +2",
		feet="Aya. Gambieras +2",
		neck="Mnbw. Whistle +1",
		waist="Ninurta's Sash",
		left_ear="Cessance Earring",
		right_ear="Brutal Earring",
		left_ring="Trizek Ring",
		right_ring="Capacity Ring"
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