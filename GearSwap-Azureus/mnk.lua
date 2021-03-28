function get_sets()
-- Set macro book/set --
--    send_command('input /macro book 15;wait .1;input /macro set 1')
	
    sets.weapons = {main="Denouements"}
    sets.precast = {}
    sets.precast.Boost = {hands="Hes. Gloves +1"}
    sets.precast.Chakra = {body="Anchorite's Cyclas +1",hands="Hes. Gloves +1"}
    sets.precast.Counterstance = {feet="Hes. Gaiters +1"}
    sets.precast.Focus = {head="Anchorite's Crown +1"}
    sets.precast.Dodge = {feet="Anchorite's Gaiters +1"}
    sets.precast.Mantra = {feet="Hes. Gaiters +1"}
    sets.precast.Footwork = {feet="Anchorite's gaiters +1"}
	sets.precast.Impetus={body="Bhikku Cyclas +1"}
    sets.precast['Hundred Fists'] = {legs="Hes. Hose +1"}
    sets.Waltz = {head="Mummu bonnet+1"}
    
    --One WS Set to Rule them all. Fuck it...for now...
    sets.WS = {
		ammo="Honed Tathlum",
		head={ name="Adhemar Bonnet +1", augments={'STR+12','DEX+12','Attack+20',}},
		body={ name="Rao Togi +1", augments={'Attack+20','"Subtle Blow"+8','Phys. dmg. taken -4',}},
		hands="Mummu Wrists +2",
		legs="Mummu Kecks +2",
		feet={ name="Herculean Boots", augments={'Attack+15','"Triple Atk."+3','DEX+6','Accuracy+10',}},
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Terminus Earring",
		right_ear="Brutal Earring",
		left_ring="Endorsement Ring",
		right_ring="Capacity Ring",
		back="Mecisto. Mantle"

    }
    
    sets.TP = {
		ammo="Honed Tathlum",
		head={ name="Adhemar Bonnet +1", augments={'STR+12','DEX+12','Attack+20',}},
		body={ name="Rao Togi +1", augments={'Attack+20','"Subtle Blow"+8','Phys. dmg. taken -4',}},
		hands="Mummu Wrists +2",
		legs="Mummu Kecks +2",
		feet={ name="Herculean Boots", augments={'Attack+15','"Triple Atk."+3','DEX+6','Accuracy+10',}},
		neck="Clotharius Torque",
		waist="Moonbow Belt",
		left_ear="Terminus Earring",
		right_ear="Brutal Earring",
		left_ring="Endorsement Ring",
		right_ring="Capacity Ring",
		back="Mecisto. Mantle"
    }
    
    sets.status = {}
    sets.status.Engaged = sets.TP
    
    sets.status.Idle = {
		ammo="Honed Tathlum",
		head={ name="Adhemar Bonnet +1", augments={'STR+12','DEX+12','Attack+20',}},
		body={ name="Rao Togi +1", augments={'Attack+20','"Subtle Blow"+8','Phys. dmg. taken -4',}},
		hands="Mummu Wrists +2",
		legs="Mummu Kecks +2",
		feet={ name="Herculean Boots", augments={'Attack+15','"Triple Atk."+3','DEX+6','Accuracy+10',}},
		neck="Clotharius Torque",
		waist="Moonbow Belt",
		left_ear="Terminus Earring",
		right_ear="Brutal Earring",
		left_ring="Endorsement Ring",
		right_ring="Capacity Ring",
		back="Mecisto. Mantle"
    }

end

function precast(spell) 
    if spell.english == 'Tornado Kick' and buffactive.Footwork then
        equip(sets.WS)
		equip({feet="Anchorite's gaiters +1"})
    elseif spell.type=="WeaponSkill" then
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