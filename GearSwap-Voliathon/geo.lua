-------------------------------------------------------------------------------------------------------------------
-- Bullshit functions that are needed for this fucking thing to work
-------------------------------------------------------------------------------------------------------------------

-- Initialization function for this job file.
function get_sets()
--This needs to be version 2.  The reason is version 1 is deprecated and there is no version 3.
--Mote is a fucking scumbag and never made shit even easier.
    mote_include_version = 2

    -- Load and initialize the include file.
	--The mote-Include has other fucking includes inside of it such as rules, states, classes, sets
	--bullshit proprietary stuff specifically for ffxi.
    include('Mote-Include.lua')
end

-- Setup vars that are user-independent.  state.Buff vars initialized here will automatically be tracked.
function job_setup()
    indi_timer = ''
    indi_duration = 180
end

-------------------------------------------------------------------------------------------------------------------
-- User setup functions for this job.  Recommend that these be overridden in a sidecar file<-LOL @ this bullshit template name.
-------------------------------------------------------------------------------------------------------------------

-- Setup vars that are user-dependent.  Can override this function in a sidecar file.
function user_setup()
    state.OffenseMode:options('None', 'Normal')
    state.CastingMode:options('Normal', 'Resistant')
    state.IdleMode:options('Normal', 'PDT')

    gear.default.weaponskill_waist = "Fotia Belt"

    select_default_macro_book()
end


-- Define sets and vars used by this job file.
function init_gear_sets()

    ------------------------------------------------------------------------------------------------------------------
    -- Precast sets
    ------------------------------------------------------------------------------------------------------------------

    -- Job Abilities for Geomancer --
    sets.precast.JA.Bolster = {body="Bagua Tunic +1"}
    sets.precast.JA['Life cycle'] = {body="Geomancy Tunic +1", back="Nantosuelta's Cape"}
    sets.precast.JA['Full Circle'] = {head="Azimuth Hood +1"}
    sets.precast.JA['Curative Recantation'] = {hands="Bagua Mitaines +1"}
    sets.precast.JA['Mending Halation'] = {legs="Bagua Pants +1"}
    sets.precast.JA['Radial Arcana'] = {feet="Bagua Sandals +1"}

    -- Fast Cast for Geomancer --
    sets.precast.FC = {
		main="Idris",
		sub="Genmei Shield",	
		range="Dunna",
		head="Merlinic Hood",
		body="Shango Robe",
		hands="Amalric gages",
		legs="Geo. Pants +1",
		feet="Merlinic Crackows",
		waist="Witful Belt",
		left_ear="Loquac. Earring",
		right_ear="Magnetic earring",
		left_ring="Venficium ring",
		back="Lifestream Cape"
	}


    sets.precast.FC.Cure = set_combine(sets.precast.FC, {
		main="Idris",
		sub="Genmei Shield",
		body="Heka's Kalasiris",
		back="Pahtli Cape",
		legs="Geomncy Pants +1",
		feet="Vanya Clogs"
	})

    sets.precast.FC['Elemental Magic'] = set_combine(sets.precast.FC, {hands="Bagua Mitaines +1",ear1="Barkarole earring"})

    -- sets.precast.FC.Impact = set_combine(sets.precast.FC, {head=empty,body="Twilight Cloak"})


	sets.precast.Geomancy = sets.midcast.Geomancy
	
    ------------------------------------------------------------------------------------------------------------------
    -- Midcasting Sets
    ------------------------------------------------------------------------------------------------------------------

	-- Geomancer Spells
    sets.midcast.Geomancy = {
		main="Idris",
		sub="Genmei Shield",
		range="Dunna",
        head="Azimuth Hood +1",
		left_ear="Magnetic Earring",
		right_ear="Gifted Earring",
        body="Bagua Tunic +1",
		hands="Geomancy Mitaines +1",
        back="Lifestream Cape",
		waist="Austerity Belt +1",
		legs="Geomancy Pants +1",
		feet="Azimuth Gaiters +1"
	}

	-- Enhancing Spells \\Generalized//
    sets.midcast['Enhancing Magic'] = {
		main="Idris",
		sub="Genmei Shield",
		ammo="Clarus stone",
		head="Befouled Crown",
		body="Shango Robe",
		hands="Bagua Mitaines +1",
		legs="Geomancy pants +1",
		feet="Regal pumps +1",
		waist="Austerity Belt +1",
		left_ear="Magnetic Earring",
		right_ear="Loquacious Earring",
		left_ring="Veneficium Ring",
		right_ring="Stikini Ring",
		back="Perimede Cape"
	}
	
	sets.midcast.Stoneskin = {
		main="Idris",
		sub="Genmei Shield",
		ammo="Clarus stone",
		head="Umuthi Hat",
		body="Shango Robe",
		hands="Carapacho Cuffs",
		legs="Geomancy pants +1",
		feet="Regal pumps +1",
		waist="Austerity Belt +1",
		left_ear="Magnetic Earring",
		right_ear="Earthcry Earring",
		left_ring="Veneficium Ring",
		right_ring="Stikini Ring",
		back="Perimede Cape"	
	}

	-- Haste
    sets.midcast.Haste = sets.midcast['Enhancing Magic']

	-- Flurry
    sets.midcast.Flurry = sets.midcast['Enhancing Magic']


	sets.midcast.Geomancy.Indi = {
		main="Idris",
		sub="Genmei Shield",	
		range="Dunna",
        head="Azimuth Hood +1",
		left_ear="Magnetic Earring",
		right_ear="Gifted Earring",
        body="Bagua Tunic +1",
		hands="Geomancy Mitaines +1",
        back={ name="Nantosuelta's Cape", augments={'INT+19','Mag. Acc+20 /Mag. Dmg.+20','INT+1','"Mag.Atk.Bns."+10',}},
		waist="Austerity Belt +1",
		legs="Bagua Pants +1",
		feet="Azimuth Gaiters +1"
	}

	-- We gota cure the shit out of people. I'm making the cures count.  Fuck that half ass cure shit.
    sets.midcast.Cure = {
		main="Idris",
		sub="Genmei Shield",
        head="Vanya Hood",
		body="Heka's Kalasiris",
		hands="Telchine gloves",
		ring1="Stikini Ring",
		ring2="Veneficium Ring", 
		waist="Austerity belt+1", 
		back="Pahtli Cape",
		legs="Geomancy pants +1",
		feet="Vanya Clogs"
	}

	-- Curaga the mother fuckers
    sets.midcast.Curaga = sets.midcast.Cure

	-- Protecting the party
    sets.midcast.Protectra = {
		ring1="Sheltered Ring"
	}

	-- MDF the party
    sets.midcast.Shellra = {
		ring1="Sheltered Ring"
	}

  	-- Elemental Magic sets...  When shit needs to die, this is the set to make it happen
	sets.midcast['Elemental Magic'] = {
		main="Idris",
		sub="Genmei Shield",	
		ammo="Dosis Tathlum",
		head="Merlinic Hood",
		body="Merlinic Jubbah",
		hands="Merlinic Dastanas",
		legs="Merlinic Shalwar",
		feet="Merlinic Crackows",
		neck="Saevus pendant +1",
		waist="Aswang sash",
		left_ear="Barkaro. Earring",
		right_ear="Halasz Earring",
		left_ring="Fenrir Ring +1",
		right_ring="Stikini ring",
		back={ name="Nantosuelta's Cape", augments={'INT+19','Mag. Acc+20 /Mag. Dmg.+20','INT+1','"Mag.Atk.Bns."+10',}}
	}

	-- TODO I'm not too familiar with this .Resistance stuff.  Need to look into it sometime.  Pack on the fucking MACC and Elemental skill if shit resists.
    -- sets.midcast['Elemental Magic'].Resistant = {
		-- main="Idris",
		-- sub="Ammurapi Shield",
		-- ammo="Pemphredo Tathlum",
		-- head={ name="Merlinic Hood", augments={'"Mag.Atk.Bns."+27','Magic burst mdg.+11%','INT+8','Mag. Acc.+15',}},
		-- body={ name="Merlinic Jubbah", augments={'Mag. Acc.+25 "Mag.Atk.Bns."+25','Magic burst mdg.+10%','CHR+3','"Mag.Atk.Bns."+14',}},
		-- hands={ name="Amalric Gages", augments={'MP+60','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
		-- legs={ name="Merlinic Shalwar", augments={'"Mag.Atk.Bns."+28','Magic burst mdg.+11%','Mag. Acc.+4',}},
		-- feet={ name="Merlinic Crackows", augments={'Mag. Acc.+21 "Mag.Atk.Bns."+21','Magic burst mdg.+9%','INT+5','Mag. Acc.+2','"Mag.Atk.Bns."+4',}},
		-- neck="Mizu. Kubikazari",
		-- waist="Refoccilation Stone",
		-- left_ear="Barkaro. Earring",
		-- right_ear="Friomisi Earring",
		-- left_ring="Shiva Ring",
		-- right_ring="Mujin Band",
		-- back={ name="Nantosuelta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
	-- }

    -- sets.midcast['Elemental Magic'].HighTierNuke = set_combine(sets.midcast['Elemental Magic'], {sub="Wizzan Grip"})
    -- sets.midcast['Elemental Magic'].HighTierNuke.Resistant = set_combine(sets.midcast['Elemental Magic'], {sub="Wizzan Grip"})

	
	-- Dark Magic for Impact, Drain, Aspir... Shit like that
    sets.midcast['Dark Magic'] = {
		main="Idris",
		sub="Genmei Shield",	
		range="Dunna",
		head="Bagua Galero +1",
		body="Geo. Tunic +1",
		hands="Merlinic Dastanas",
		legs="Merlinic Shalwar",
		feet="Merlinic Crackows",
		neck="Saevus Pendant +1",
		waist="Aswang Sash",
		left_ear="Barkaro. Earring",
		right_ear="Gwati Earring",
		left_ring="Stikini Ring",
		right_ring="Fenrir Ring +1",
		back={ name="Nantosuelta's Cape", augments={'INT+19','Mag. Acc+20 /Mag. Dmg.+20','INT+1','"Mag.Atk.Bns."+10',}}
	}

	-- Enfeelbling the fuck out of things is the name of the game sometimes...  
	--This set allows for better odds when people don't want to fucking play the game
    sets.midcast['Enfeebling Magic'] = {
		main="Idris",
		sub="Genmei Shield",	
		range="Dunna",
		head="Befouled Crown",
		body="Ischemia Chasu.",
		hands="Merlinic Dastanas",
		legs="Merlinic Shalwar",
		feet="Bagua Sandals +1",
		neck="Sanctity Necklace",
		waist="Aswang Sash",
		left_ear="Barkaro. Earring",
		right_ear="Gwati Earring",
		left_ring="Stikini Ring",
		right_ring="Fenrir Ring +1",
		back={ name="Nantosuelta's Cape", augments={'INT+19','Mag. Acc+20 /Mag. Dmg.+20','INT+1','"Mag.Atk.Bns."+10',}}
	}

	-- Drain Set and Aspir
    sets.midcast.Drain = {
		main="Idris",
		sub="Genmei Shield",	
		range="Dunna",
		head="Bagua Galero +1",
		body="Shango Robe",
		hands="Merlinic Dastanas",
		legs="Merlinic Shalwar",
		feet="Merlinic Crackows",
		neck="Saevus Pendant +1",
		waist="Aswang Sash",
		left_ear="Barkaro. Earring",
		right_ear="Gwati Earring",
		left_ring="Stikini Ring",
		right_ring="Fenrir Ring +1",
		back={ name="Nantosuelta's Cape", augments={'INT+19','Mag. Acc+20 /Mag. Dmg.+20','INT+1','"Mag.Atk.Bns."+10',}}
	}

	-- Aspir uses the same Drain set
    sets.midcast.Aspir = sets.midcast.Drain
	

	-- TODO - I don't know if this is needed. It might be some hacky shit cause the fuck was too lazy to add Aspir III to the list of 
	-- known FFXI spells that reside in MOTE-Spells or some shit like that. Fuck I don't want to even look. A bullshit comment like this
	-- takes longer to come up with than to just fucking look.
    sets.midcast['Aspir III'] = sets.midcast.Drain


	-- Impact whenever the fuck I get the damn cloak
    sets.midcast.Impact = {    
      body="Twilight Cloak",
	}


    -- /heal the damn MP/HP up.
    sets.resting = {
		range="Dunna",
		head="Befouled Crown",
		body="Shamash Robe",
		hands="Merlinic Dastanas",
		legs="Assid. Pants +1",
		feet="Bagua Sandals +1",
		neck="Sanctity Necklace",
		waist="Austerity Belt +1",
		left_ear="Barkaro. Earring",
		right_ear="Gwati Earring",
		left_ring="Sheltered Ring",
		right_ring="Paguroidea Ring",
		back="Felicitas cape +1"
	}


    -- When idled, I jump into this set... Maybe...
    sets.idle = {
		main="Idris",
		sub="Genmei Shield",	
		range="Dunna",
		head="Befouled Crown",
		body="Jhakri Robe +2",
		hands="Bagua Mitaines +1",
		legs="Assid. Pants +1",
		feet="Azimuth Gaiters +1",
		neck="Loricate torque +1",
		waist="Isa Belt",
		left_ear="Genmei Earring",
		right_ear="Magnetic Earring",
		left_ring="Patricius Ring",
		right_ring="Defending Ring",
		back="Repulse Mantle"
	}

	-- PDT Set
    sets.idle.PDT = {
		main="Idris",
		sub="Genmei Shield",	
		range="Dunna",
		head="Befouled Crown",
		body="Jhakri Robe +2",
		hands="Bagua Mitaines +1",
		legs="Assid. Pants +1",
		feet="Azimuth Gaiters +1",
		neck="Loricate torque +1",
		waist="Isa Belt",
		left_ear="Genmei Earring",
		right_ear="Magnetic Earring",
		left_ring="Patricius Ring",
		right_ring="Defending Ring",
		back="Repulse Mantle"
	}

    -- .Pet sets are for when Luopan is present.
    sets.idle.Pet = {
		main="Idris",
		sub="Genmei Shield",	
		range="Dunna",
		head="Azimuth Hood +1",
		body="Geo. Tunic +1",
		hands="Geo. Mitaines +1",
		legs="Assid. Pants +1",
		feet="Bagua Sandals +1",
		neck="Loricate torque +1",
		waist="Isa Belt",
		left_ear="Genmei Earring",
		right_ear="Magnetic Earring",
		left_ring="Yacuruna Ring",
		right_ring="Defending Ring",
		back={ name="Nantosuelta's Cape", augments={'Pet: "Regen"+10',}}
	}

	-- Pet specific PDT Set
    sets.idle.PDT.Pet = {
		main="Idris",
		sub="Genmei Shield",	
		range="Dunna",
		head="Azimuth Hood +1",
		body="Geo. Tunic +1",
		hands="Geo. Mitaines +1",
		legs="Assid. Pants +1",
		feet="Bagua Sandals +1",
		neck="Loricate torque +1",
		waist="Isa Belt",
		left_ear="Genmei Earring",
		right_ear="Magnetic Earring",
		left_ring="Yacuruna Ring",
		right_ring="Defending Ring",
		back={ name="Nantosuelta's Cape", augments={'Pet: "Regen"+10',}}
	}        

    -- PDT Set
    sets.defense.PDT = {
		main="Idris",
		sub="Genmei Shield",	
		range="Dunna",
		head="Befouled Crown",
		body="Jhakri Robe +2",
		hands="Bagua Mitaines +1",
		legs="Assid. Pants +1",
		feet="Azimuth Gaiters +1",
		neck="Loricate torque +1",
		waist="Isa Belt",
		left_ear="Genmei Earring",
		right_ear="Magnetic Earring",
		left_ring="Patricius Ring",
		right_ring="Defending Ring",
		back="Repulse Mantle"
	}

	-- Magic Defense and Magic Defense Set
    sets.defense.MDT = {
		main="Idris",
		sub="Genmei Shield",
		range="Dunna",
		head="Befouled Crown",
		body="Bagua Tunic +1",
		hands="Bagua Mitaines +1",
		legs="Assid. Pants +1",
		feet="Azimuth Gaiters +1",
		neck="Loricate torque +1",
		waist="Slipor Sash",
		left_ear="Genmei Earring",
		right_ear="Magnetic Earring",
		left_ring="Yacuruna Ring",
		right_ring="Defending Ring",
		back="Mubvumbamiri Mantle"
	}

		
	-- When I gotta kite shite, I put on my Sandals and shit...
    sets.Kiting = {feet="Geomancy Sandals +1"}

    
	-- Latent Refresh Bullshit
	--sets.latent_refresh = {waist="Fucho-no-obi"}


    --------------------------------------
    -- Engaged sets
    --------------------------------------

    -- Variations for TP weapon and (optional) offense/defense modes.  Code will fall back on previous
    -- sets if more refined versions aren't defined.
    -- If you create a set with both offense and defense modes, the offense mode should be first.
    -- EG: sets.engaged.Dagger.Accuracy.Evasion

	
    -- When Voliathon is engaged in battle, this set kicks in...
    sets.engaged = {
		main="Idris",
		sub="Genmei Shield",
		ammo="Staunch Tathlum",
		head="Jhakri Coronal +1",
		body="Jhakri Robe +2",
		hands="Jhakri Cuffs +1",
		legs="Jhakri Slops +1",
		feet="Jhakri Pigaches +1",
		neck="Loricate torque +1",
		waist="Grunfeld Rope",
		left_ear="Dudgeon Earring",
		right_ear="Heartseeker Earring",
		left_ring="Patricius Ring",
		right_ring="Defending Ring"
	}

    ------------------------------------------------------------------------------------------------------------------
    -- Weaponskill sets
    ------------------------------------------------------------------------------------------------------------------

	-- All Weaponskills for Geomancer unless explicitly defined below sets.precast.WS 
     sets.precast.WS = {
		main="Idris",
		sub="Genmei Shield",
		ammo="Amar Cluster",
		head="Jhakri Coronal +1",
		body="Jhakri Robe +2",
		hands="Jhakri Cuffs +1",
		legs="Jhakri Slops +1",
		feet="Jhakri Pigaches +1",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Steelflash Earring",
		right_ear="Bladeborn Earring",
		left_ring="K'ayres Ring",
		right_ring="Karieyh Ring"
	 }

    -- Flash Nova Weaponskill
    -- sets.precast.WS['Flash Nova'] = {
		-- ammo="Dosis Tathlum",
        -- head="Hagondes Hat",
		-- neck="Eddy Necklace",
		-- ear1="Friomisi Earring",
		-- ear2="Crematio Earring",
        -- body="Hagondes Coat",
		-- hands="Yaoyotl Gloves",
		-- ring1="Acumen Ring",
		-- ring2="Strendu Ring",
        -- back="Toro Cape",
		-- waist="Snow Belt",
		-- legs="Hagondes Pants",
		-- feet="Hagondes Sabots"
	-- }

end

-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks for standard casting events.
-------------------------------------------------------------------------------------------------------------------

function job_aftercast(spell, action, spellMap, eventArgs)
    if not spell.interrupted then
        if spell.english:startswith('Indi') then
            if not classes.CustomIdleGroups:contains('Indi') then
                classes.CustomIdleGroups:append('Indi')
            end
            send_command('@timers d "'..indi_timer..'"')
            indi_timer = spell.english
            send_command('@timers c "'..indi_timer..'" '..indi_duration..' down spells/00136.png')
        elseif spell.english == 'Sleep' or spell.english == 'Sleepga' then
            send_command('@timers c "'..spell.english..' ['..spell.target.name..']" 60 down spells/00220.png')
        elseif spell.english == 'Sleep II' or spell.english == 'Sleepga II' then
            send_command('@timers c "'..spell.english..' ['..spell.target.name..']" 90 down spells/00220.png')
        end
    elseif not player.indi then
        classes.CustomIdleGroups:clear()
    end
end


-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks for non-casting events.
-------------------------------------------------------------------------------------------------------------------

-- Called when a player gains or loses a buff.
-- buff == buff gained or lost
-- gain == true if the buff was gained, false if it was lost.
function job_buff_change(buff, gain)
    if player.indi and not classes.CustomIdleGroups:contains('Indi')then
        classes.CustomIdleGroups:append('Indi')
        handle_equipping_gear(player.status)
    elseif classes.CustomIdleGroups:contains('Indi') and not player.indi then
        classes.CustomIdleGroups:clear()
        handle_equipping_gear(player.status)
    end
end

function job_state_change(stateField, newValue, oldValue)
    if stateField == 'Offense Mode' then
        if newValue == 'Normal' then
            disable('main','sub','range')
        else
            enable('main','sub','range')
        end
    end
end

-------------------------------------------------------------------------------------------------------------------
-- User code that supplements standard library decisions.
-------------------------------------------------------------------------------------------------------------------

function job_get_spell_map(spell, default_spell_map)
    if spell.action_type == 'Magic' then
        if spell.skill == 'Enfeebling Magic' then
            if spell.type == 'WhiteMagic' then
                return 'MndEnfeebles'
            else
                return 'IntEnfeebles'
            end
        elseif spell.skill == 'Geomancy' then
            if spell.english:startswith('Indi') then
                return 'Indi'
            end
        end
    end
end

function customize_idle_set(idleSet)
    if player.mpp < 51 then
        idleSet = set_combine(idleSet, sets.latent_refresh)
    end
    return idleSet
end

-- Called by the 'update' self-command.
function job_update(cmdParams, eventArgs)
    classes.CustomIdleGroups:clear()
    if player.indi then
        classes.CustomIdleGroups:append('Indi')
    end
end

-- Function to display the current relevant user state when doing an update.
function display_current_job_state(eventArgs)
    display_current_caster_state()
    eventArgs.handled = true
end

-------------------------------------------------------------------------------------------------------------------
-- Utility functions specific to this job.
-------------------------------------------------------------------------------------------------------------------
--Fuck this thing below.  Stupid to say, oh hey, I'm in this fucking macro pallette located in such and such.  It's pretty tarded.

 --Select default macro book on initial load or subjob change.
 function select_default_macro_book()
     set_macro_page(1, 19)
 end