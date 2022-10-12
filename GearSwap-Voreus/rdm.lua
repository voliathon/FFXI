function get_sets()
	-- Set macro book/set --
    send_command('input /macro book 1;wait .1;input /macro set 1')
	
	-- Toggle Engaged sets button, change if you want; currently ALT+F9 toggles forward, CTRL+F9 toggles backwards
    send_command('bind !f9 gs c toggle Engaged set')
	send_command('bind ^f9 gs c reverse Engaged set')
	
    -- Job Abilities for Red Mage --
    sets.Chainspell = {body="Bagua Tunic +1"}
    sets.Stymie = {body="Geomancy Tunic +3", back="Nantosuelta's Cape"}
    sets.Spontaneity = {head="Azimuth Hood +1"}
    sets.Composure = {hands="Bagua Mitaines +1"}


    -- Fast Cast for Red Mage --
    sets.FastCast = {
		ammo="Regal Gem",
		head="Atrophy Chapeau +3",
		body="Vitiation tabard +1",
		hands="Leyline Gloves",
		legs="Aya. Cosciales +2",
		feet="Malignance Boots",
		neck="Incanter's Torque",
		waist="Embla Sash",
		left_ear="Snotra Earring",
		right_ear="Lethargy Earring",
		left_ring="Kishar Ring",
		right_ring="Freke Ring",
		back={ name="Sucellos's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10'}}
	}


	-- Enhancing Spells \\Generalized//
    sets.Enhancing = {
		ammo="Pemphredo Tathlum",
		head={ name="Telchine Cap", augments={'Enh. Mag. eff. dur. +9'}},
		body={ name="Telchine Chas.", augments={'Enh. Mag. eff. dur. +10'}},
		hands="Atrophy Gloves +3",
		legs="Atrophy Tights +3",
		feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +10'}},
		neck={ name="Dls. Torque +2", augments={'Path: A'}},
		waist="Embla Sash",
		left_ear="Mimir Earring",
		right_ear="Lethargy Earring",
		left_ring="Stikini Ring",
		right_ring="Stikini Ring",
		back="Fi follet cape +1"
	}

	-- Stoneskin
	sets.Stoneskin = set_combine(sets.FastCast,  {

	})
	
	sets.TP = {
		range="Ullr",
		head="Aya. Zucchetto +2",
		body="Ayanmo Corazza +2",
		hands="Aya. Manopolas +2",
		legs="Carmine Cuisses +1",
		feet="Malignance boots",
		neck="Anu Torque",
		waist={ name="Sailfi Belt +1", augments={'Path: A'}},
		left_ear="Sherida Earring",
		right_ear="Telos Earring",
		left_ring="Ilabrat Ring",
		right_ring="Hetairoi Ring",
		back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dual Wield"+10'}}	
	}
	

    sets.Cure = set_combine(sets.FastCast,  {
		head={ name="Vanya Hood", augments={'MND+10','Spell interruption rate down +15%','"Conserve MP"+6'}},
		body={ name="Vanya Robe", augments={'MP+50','"Cure" potency +7%','Enmity-6',}},
		hands={ name="Vanya Cuffs", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3'}},
		legs="Atrophy Tights +3",
		feet={ name="Vanya Clogs", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6'}},
		neck="Phalaina locket",
		waist="Embla Sash",
		left_ear="Meili Earring",
		right_ear="Mendi. Earring",
		left_ring="Kishar Ring",
		right_ring="Lebeche Ring",
		back={ name="Sucellos's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10'}}
	})


	-- Protecting the party
    sets.Protect = set_combine(sets.FastCast,  {
		ring1="Sheltered Ring"
	})

	-- MDF the party
    sets.Shell = set_combine(sets.FastCast,  {
		ring1="Sheltered Ring"
	})

  	-- Elemental Magic sets...  When shit needs to die, this is the set to make it happen
	sets.ElementalMagic = {
		ammo="Dosis Tathlum",
		head="Merlinic Hood",
		body="Shamash robe",
		hands="Merlinic Dastanas",
		legs="Ea slops +1",
		feet="Merlinic Crackows",
		neck="Saevus pendant +1",
		waist="Refoccilation stone",
		left_ear="Barkaro. Earring",
		right_ear="Halasz Earring",
		left_ring="Stikini ring +1",
		right_ring="Stikini ring +1",
		back="Seshaw cape"
	}
	
    sets.DarkMagic = {

	}

    sets.Enfeebling = set_combine(sets.FastCast,  {
		ammo="Regal Gem",
		head="Vitiation chapeau +1-",
		body="Atrophy Tabard +3",
		hands="Jhakri Cuffs +2",
		legs={ name="Chironic Hose", augments={'Attack+14','Mag. Acc.+13','"Treasure Hunter"+1','Mag. Acc.+18 "Mag.Atk.Bns."+18'}},
		feet="Vitiation Boots +1",
		neck={ name="Dls. Torque +2", augments={'Path: A'}},
		waist="Eschan Stone",
		left_ear="Snotra Earring",
		right_ear="Vor Earring",
		left_ring="Kishar Ring",
		right_ring="Stikini Ring",
		back={ name="Sucellos's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10'}}
	})


	-- Impact whenever the fuck I get the damn cloak
    sets.Impact = {    
      body="Twilight Cloak"
	}


    -- /heal the damn MP/HP up.
    sets.heal = {

	}


	-- PDT Set
    sets.PDT = {
		ammo="Homiliary",
		head="Nyame Helm",
		body="Nyame mail",
		hands="Nyame gauntlets",
		legs="Nyame flanchard",
		feet="Nyame sollerets",
		neck="Loricate Torque +1",
		waist="Slipor Sash",
		left_ear="Genmei Earring",
		right_ear="Ethereal Earring",
		left_ring="Gelatinous Ring +1",
		right_ring="Defending Ring"
	}

	-- Magic Defense and Magic Defense Set
    sets.MDT = {
		ammo="Homiliary",
		head="Nyame Helm",
		body="Nyame mail",
		hands="Nyame gauntlets",
		legs="Nyame flanchard",
		feet="Nyame sollerets",
		neck="Loricate Torque +1",
		waist="Slipor Sash",
		left_ear="Genmei Earring",
		right_ear="Ethereal Earring",
		left_ring="Gelatinous Ring +1",
		right_ring="Defending Ring"
	}

		
	-- When I gotta kite shite, I put on my Sandals and shit...
    sets.Kiting = {
		legs="Carmine cuisses +1"
	}

    
	sets.Refresh = set_combine(sets.PDT,  {
		body="Jhakri robe +2"
	})
	
	
    ------------------------------------------------------------------------------------------------------------------
    -- Weaponskill sets
    ------------------------------------------------------------------------------------------------------------------

	-- All Weaponskills for Red Mage unless explicitly defined below sets.precast.WS 
     sets.WS = {
		range="Ullr",
		head="Aya. Zucchetto +2",
		body="Ayanmo Corazza +2",
		hands="Atrophy Gloves +3",
		legs="Atrophy Tights +3",
		feet="Atro. Boots +3",
		neck="Combatant's Torque",
		waist={ name="Sailfi Belt +1", augments={'Path: A'}},
		left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250'}},
		right_ear="Sherida Earring",
		left_ring="Ilabrat Ring",
		right_ring="Hetairoi Ring",
		back={ name="Sucellos's Cape", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%'}}
	 }
	 
	 

	  -- Engaged Sets Toggle--
	sets.engaged = {}
	sets.engaged.index = {'TP', 'Movement', 'TakingLessPhysicalDamage', 'TakingLessMagicDamage', 'Accuracy', 'Refresh'}
	engaged_ind = 1  	 
	 
	sets.engaged.TP = set_combine(sets.TP, {}) 
	sets.engaged.Movement = set_combine(sets.Kiting, {})
	sets.engaged.TakingLessPhysicalDamage = set_combine(sets.PDT, {})
	sets.engaged.TakingLessMagicDamage = set_combine(sets.MDT, {})
	sets.engaged.Accuracy = {}
	sets.engaged.Refresh = set_combine(sets.Refresh, {})
	 
end

function precast(spell,abil)
--TODO DISPEL
--EN Spells
--Boost Spells
--Phalanx
--Dispel

	--Enhancing Magic Check
	if spell.skill == 'Enhancing Magic' then
		equip(sets.Enhancing)
	elseif spell.skill == 'Enfeebling Magic' then
		equip(sets.Enfeebling)
	elseif spell.action_type == 'Magic' then
		equip(sets.FastCast)
	end
		--Can add stuff here for other magic. Doesn't have to go to idle at all
	

	--WS Lookups
	if spell.name == "Hexa Strike" then
		equip(sets.WSD)
	end
	-- Add logic for Waltz
	-- Add logic for Utsusemi
  
  
end

--We need to do some thinking and testing for this set...
function aftercast(spell)
	equip_current()
end


function midcast(spell)
	if string.find(spell.english,'Cur') then 
		equip(sets.Cure)
	end
	if spell.name == 'Stoneskin' then
		equip(sets.Stoneskin)
	end
	if spell.name == 'Cursna' then
		equip(sets.Cursna)
	end
	if spell.skill == 'Elemental Magic' then
		equip(sets.ElementalMagic)
	end
	if spell.skill == 'Enfeebling Magic' then
		equip(sets.Enfeebling)
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

