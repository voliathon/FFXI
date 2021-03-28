function get_sets()
-- Set macro book/set --
    send_command('input /macro book 7;wait .1;input /macro set 1')
	
    sets.weapons = {main="Ragnarok"}
    sets.precast = {}
    --sets.precast.Boost = {hands="Hes. Gloves +1"}
    --sets.precast.Chakra = {body="Anchorite's Cyclas +1",hands="Hes. Gloves +1"}
    --sets.precast.Counterstance = {feet="Hes. Gaiters +1"}
    --sets.precast.Focus = {head="Anchorite's Crown +1"}
    --sets.precast.Dodge = {feet="Anchorite's Gaiters +1"}
    --sets.precast.Mantra = {feet="Hes. Gaiters +1"}
    --sets.precast.Footwork = {feet="Anchorite's gaiters +1"}
	--sets.precast.Impetus={body="Bhikku Cyclas +1"}
    --sets.precast['Hundred Fists'] = {legs="Hes. Hose +1"}
    --sets.Waltz = {head="Mummu bonnet+2"}
    
    --One WS Set to Rule them all. Fuck it...for now...
    sets.WS = {
		main="Ragnarok",
		sub="Utu Grip",
		ammo="Knobkierrie",
		head={ name="Valorous Mask", augments={'VIT+9','Magic dmg. taken -2%','Weapon skill damage +8%','Accuracy+20 Attack+20'}},
		body="Valorous Mail",
		hands={ name="Valorous Mitts", augments={'Rng.Atk.+11','Pet: STR+5','Weapon skill damage +6%','Accuracy+15 Attack+15','Mag. Acc.+17 "Mag.Atk.Bns."+17'}},
		legs={ name="Valor. Hose", augments={'Accuracy+30','Weapon skill damage +3%','AGI+9','Attack+7'}},
		feet={ name="Valorous Greaves", augments={'Mag. Acc.+20','"Store TP"+1','Weapon skill damage +9%'}},
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Thrud Earring",
		right_ear="Ishvara Earring",
		left_ring="Regal Ring",
		right_ring="Epaminondas's Ring",
		back={ name="Mecisto. Mantle", augments={'Cap. Point+47%','"Mag.Atk.Bns."+3','DEF+12'}}
    }
    
    sets.TP = {
		main="Ragnarok",
		sub="Utu Grip",
		ammo="Ginsen",
		head="Flam. Zucchetto +2",
		body={ name="Argosy Hauberk +1", augments={'STR+12','Attack+20','"Store TP"+6'}},
		hands={ name="Argosy Mufflers +1", augments={'STR+20','"Dbl.Atk."+3','Haste+3%'}},
		legs={ name="Argosy Breeches +1", augments={'STR+12','Attack+25','"Store TP"+6'}},
		feet="Flam. Gambieras +2",
		neck="Lissome Necklace",
		waist="Sailfi belt +1",
		left_ear="Telos Earring",
		right_ear="Brutal Earring",
		left_ring="Flamma Ring",
		right_ring="Niqmaddu Ring",
		back={ name="Mecisto. Mantle", augments={'Cap. Point+47%','"Mag.Atk.Bns."+3','DEF+12',}}
    }
    
    sets.status = {}
    sets.status.Engaged = sets.TP
    
--    sets.status.Idle = {
--		main="Spharai",
--		ammo="Staunch tathlum +1",
--		head="Genmei Kabuto",
--		body="Ashura harness",
--		hands="Kendatsuba tekko +1",
--		legs="Kendatsuba hakama +1",
--		feet="Kendatsuba suna-ate +1",
--		neck="Twilight torque",
--		waist="Moonbow Belt",
--		left_ear="Infused Earring",
--		right_ear="Genmei Earring",
--		left_ring="Fortified Ring",
--		right_ring="Defending Ring",
--		back="Moonbeam cape"
--   }

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