-------------------------------------------------------------------------------------------------------------------
-- Setup functions for this job.  Generally should not be modified.
-------------------------------------------------------------------------------------------------------------------
 --Modded by Voliathon cause the original shit sucks!!!!
 --
--[[
    gs c toggle LuzafRing -- Toggles use of Luzaf Ring on and off
     
    Offense mode is melee or ranged.  Used ranged offense mode if you are engaged
    for ranged weaponskills, but not actually meleeing.
     
    Weaponskill mode, if set to 'Normal', is handled separately for melee and ranged weaponskills.
--]]
 
 
-- Initialization function for this job file.
function get_sets()
    mote_include_version = 2
    include('Mote-Include.lua')
	
	-- Set macro book/set --
    send_command('input /macro book 19;wait .1;input /macro set 1')
end
 
-- Setup vars that are user-independent.  state.Buff vars initialized here will automatically be tracked.
function job_setup()
    -- Whether to use Luzaf's Ring
    state.LuzafRing = M(false, "Luzaf's Ring")
    -- Whether a warning has been given for low ammo
    state.warned = M(false)
     
        define_roll_values()
end
 
-------------------------------------------------------------------------------------------------------------------
-- User setup functions for this job.  Recommend that these be overridden in a sidecar file.
-------------------------------------------------------------------------------------------------------------------
 
-- Setup vars that are user-dependent.  Can override this function in a sidecar file.
function user_setup()
    state.OffenseMode:options('Melee', 'Ranged', 'Acc')
    state.RangedMode:options('Normal', 'Acc')
    state.WeaponskillMode:options('Normal', 'Acc', 'Att', 'Mod')
    state.CastingMode:options('Normal', 'Resistant')
    state.IdleMode:options('Normal', 'PDT', 'Refresh')
 
    gear.RAbullet = "Chrono Bullet"
    gear.DWSbullet = "Chrono Bullet"
    gear.MWSbullet = "Living Bullet"
    gear.MAbullet = "Living Bullet"
    gear.QDbullet = "Chrono Bullet"
    options.ammo_warning_limit = 15
 
    -- Additional local binds
    send_command('bind ^` input /ja "Double-up" <me>')
    send_command('bind !` input /ja "Bolter\'s Roll" <me>')

end
 
--
-- Called when this job file is unloaded (eg: job change)
function user_unload()
    send_command('unbind ^`')
    send_command('unbind !`')
end
 
-- Define sets and vars used by this job file.
function init_gear_sets()
    --------------------------------------
    -- Start defining the sets
    --------------------------------------
     
    -- Precast Sets
 
    -- Precast sets to enhance JAs
     
    sets.precast.JA['Triple Shot'] = {head="Oshosi Mask",body="Chasseur's Frac +1",hands="Carmine finger gauntlets +1",legs="Oshosi Trousers", feet="Oshosi Leggings"}
    sets.precast.JA['Snake Eye'] = {legs="Lanun Trews +3"}
    sets.precast.JA['Wild Card'] = {feet="Lanun Bottes +3"}
    sets.precast.JA['Random Deal'] = {body="Lanun Frac +3"}
     
 
     
    sets.precast.JA.CorsairRoll = {
		main={name="Rostam",bag="Wardrobe 4"},
		sub={name="Rostam",bag="Wardrobe 3"},
		range="Compensator",
		head="Lanun Tricorne +3",
		hands="Chasseur's Gants +1",
		neck="Regal Necklace",
		ring1="Barataria Ring",
		ring2="Luzaf's Ring"     
    }
     
    sets.precast.JA.CorsairRoll["Caster's Roll"] = set_combine(sets.precast.CorsairRoll, {legs="Chasseur's Culottes +1"})
    sets.precast.JA.CorsairRoll["Courser's Roll"] = set_combine(sets.precast.CorsairRoll, {feet="Chasseur's Bottes +1"})
    sets.precast.JA.CorsairRoll["Blitzer's Roll"] = set_combine(sets.precast.CorsairRoll, {head="Chasseur's Tricorne +1"})
    sets.precast.JA.CorsairRoll["Tactician's Roll"] = set_combine(sets.precast.CorsairRoll, {body="Chasseur's Frac +1"})
    sets.precast.JA.CorsairRoll["Allies' Roll"] = set_combine(sets.precast.CorsairRoll, {hands="Chasseur's Gants +1"})
     
    sets.precast.LuzafRing = {ring1="Barataria Ring",ring2="Luzaf's Ring"}
    sets.precast.FoldDoubleBust = {hands="Lanun Gants +3"}
     
    sets.precast.CorsairShot = {
		ammo=gear.QDbullet,
		main={name="Rostam",bag="Wardrobe 3"},
		sub={name="Rostam",bag="Wardrobe 4"},
		--head={ name="Herculean Helm", augments={'Mag. Acc.+14','"Mag. Atk. Bns."+22','Magic burst dmg. +2%',}},
		body="Lanun Frac +3",
		hands="Carmine Fin. Ga. +1",
		legs="Laksa. Trews +2",
		feet="Lanun Bottes +3",
		neck="Comm. Charm +2",
		left_ear="Friomisi Earring",
		right_ear="Enervating Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
        back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%','Damage taken-5%'}}
	}
     
 
    -- Waltz set (chr and vit)
    sets.precast.Waltz = {
		head="Mummu Bonnet +2",
		body="Passion jacket",
		--legs="Dashing Subligar"
		ammo="Impatiens"
	}
         
    -- Don't need any special gear for Healing Waltz.
    sets.precast.Waltz['Healing Waltz'] = {}
 
    -- Fast cast sets for spells
     
    sets.precast.FC = {
		head="Carmine mask +1",
		body="Lanun Frac +3",
		ear2="Loquacious Earring",
		hands="Leyline Gloves",
		ring1="Kishar Ring",
		ring2="Prolix ring",
		waist="Kasiri ring",
		legs="Carmina cuisses +1",
		feet="Carmine greaves +1"
	}
 
    sets.precast.FC.Utsusemi = set_combine(sets.precast.FC, {
		body="Passion jacket",
	--	neck="Magoraga Beads",
		ammo="Impatiens"
	})
 
 
    sets.precast.RA = {
		ammo=gear.RAbullet,
		main={name="Rostam",bag="Wardrobe 3"},
		sub={name="Rostam",bag="Wardrobe 4"},
		head="Chass. Tricorne +1",
		body="Laksamana's Frac +3",
		hands="Carmine Fin. Ga. +1",
		legs="Lanun Trews +3",
		feet="Meg. Jam. +2",
		neck="Comm. Charm +2",
		waist="Ponente Sash",
		left_ear="Telos Earring",
		right_ear="Enervating Earring",
		left_ring="Hajduk Ring",
		right_ring="Dingir Ring",
		back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','Rng.Acc.+10','"Mag.Atk.Bns."+10','Evasion+15'}}
	}
 
     
    -- Weaponskill sets
    -- Default set for any weaponskill that isn't any more specifically defined
     
    sets.precast.WS = {
		main={name="Rostam",bag="Wardrobe 3"},
		sub={name="Rostam",bag="Wardrobe 4"},	
		head="Pixie Hairpin +1",
		body="Lanun Frac +3",
		hands="Carmine Fin. Ga. +1",
		legs="Lanun Trews +3",
		feet="Lanun Bottes +3",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Moonshade Earring",
		right_ear="Ishvara Earring",
		left_ring="Fenrir Ring +1",
		right_ring="Dingir Ring",
		back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%','Damage taken-5%'}}
	}
     
    -- Specific weaponskill sets.  Uses the base set if an appropriate WSMod version isn't found.
 
    sets.precast.WS['Last Stand'] = {
		head="Lanun Tricorne +3",
		body="Laksa. Frac +3",
		hands="Meg. Gloves +2",
		legs="Lanun Trews +3",
		feet="Lanun Bottes +3",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Ishvara Earring",
		right_ear="Moonshade Earring",
		left_ring="Hajduk Ring",
		right_ring="Dingir Ring",
		back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%','Damage taken-5%'}}
	}
     
    sets.precast.WS['Leaden Salute'] = {
		head="Pixie Hairpin +1",
		body="Lanun Frac +3",
		hands="Carmine Fin. Ga. +1",
		legs={ name="Herculean Trousers", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Weapon skill damage +4%','CHR+5','"Mag.Atk.Bns."+7',}},
		feet="Lanun Bottes +3",
		neck="Fotia Gorget",
		waist="Hachirin-no-Obi",
		left_ear="Friomisi Earring",
		right_ear="Moonshade Earring",
		left_ring="Fenrir Ring +1",
		right_ring="Dingir Ring",
		back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%','Damage taken-5%'}}
	}
    
    sets.precast.WS['Exenterator'] = set_combine(sets.precast.WS['Requiescat'], {right_ring="Chirich Ring +1"})
     
    sets.precast.WS['Shining Blade'] = {
		ammo="Ginsen",
		head="Laksa. Tricorne +3",
		body="Lanun Frac +3",
		hands="Lanun Gants +3",
		legs="Lanun Trews +3",
		feet="Lanun Bottes +3",
		neck="Comm. Charm +2",
		waist="Fotia Belt",
		left_ear="Enervating Earring",
		right_ear="Friomisi Earring",
		left_ring="Fenrir Ring +1",
		right_ring="Dingir Ring",
		back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%','Damage taken-5%'}}
	}
 
    sets.precast.WS['Requiescat'] = {
		ammo="Ginsen",
		head="Meghanada Visor +2",
		body="Laksa. Frac +3",
		hands="Meg. Gloves +2",
		legs="Meg. Chausses +2",
		feet="Meg. Jam. +2",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Ishvara Earring",
		right_ear="Heartseeker Earring",
		left_ring="Chirich Ring +1",
		right_ring="Stikini Ring +1",
		back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%','Damage taken-5%'}}
	}
     
    sets.precast.WS['Savage Blade'] = {
		ammo="Ginsen",
		head="Meghanada Visor +2",
		body="Laksa. Frac +3",
		hands="Meg. Gloves +2",
		legs="Meg. Chausses +2",
		feet="Lanun Bottes +3",
		neck="Comm. Charm +2",
		waist="Prosililo Belt +1",
		left_ear="Ishvara Earring",
		right_ear="Telos Earring",
		left_ring="Rufescent Ring",
		right_ring="Ifrit Ring +1",
		back={ name="Camulus's Mantle", augments={'STR+20','Accuracy+20 /Attack+20','STR+10','Weapon skill damage +10%','Damage taken-5%'}}
	}
 
    sets.precast.WS['Shining Blade'] = sets.precast.WS['Savage Blade']
    sets.precast.WS['Wildfire'] = sets.precast.WS
    sets.precast.WS['Leaden Salute'] = sets.precast.WS['Wildfire']
     
     
    -- Midcast Sets
    sets.midcast.FastRecast = {
        head="Whirlpool Mask",
        body="Iuitl Vest",hands="Iuitl Wristbands",
        legs="Manibozho Brais",feet="Iuitl Gaiters +1"
	}
         
    -- Specific spells
    sets.midcast.Utsusemi = sets.midcast.FastRecast
 
    sets.midcast.CorsairShot = {
		ammo=gear.QDbullet,
		head="Laksa. Tricorne +3",
		body="Lanun Frac +3",
		hands="Carmine Fin. Ga. +1",
		legs="Laksa. Trews +2",
		feet="Laksamana Boots +3",
		neck="Comm. Charm +2",
		waist="Yemaya Belt",
		left_ear="Friomisi Earring",
		right_ear="Enervating Earring",
		left_ring="Fenrir Ring +1",
		right_ring="Dingir Ring",
		back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%','Damage taken-5%'}}
	}
 
    sets.midcast.CorsairShot.Acc = {
		ammo=gear.QDbullet,
		head="Laksa. Tricorne +3",
		body="Oshosi Vest +1",
		hands="Mummu Wrists +2",
		legs="Lanun Trews +3",
		feet="Laksamana Boots +3",
		neck="Comm. Charm +2",
		waist="Yemaya Belt",
		left_ear="Enervating Earring",
		right_ear="Enchntr. Earring +1",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Damage taken-5%'}}
	}
 
    sets.midcast.CorsairShot['Light Shot'] = sets.midcast.CorsairShot.Acc
    sets.midcast.CorsairShot['Dark Shot'] = sets.midcast.CorsairShot['Light Shot']
 
 
    -- Ranged gear
    sets.midcast.RA = {
		head="Lanun tricorne +3",
		body="Laksa. Frac +3",
		hands="Meg. Gloves +2",
		legs="Lanun Trews +3",
		feet="Meg. Jam. +2",
		neck="Iskur Gorget",
		waist="Yemaya Belt",
		left_ear="Telos Earring",
		right_ear="Enervating Earring",
		left_ring="Hajduk Ring",
		right_ring="Dingir Ring",
		back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+9','"Store TP"+10'}}
	}
 
    sets.midcast.RA.Acc = {
		head="Lanun tricorne +3",
		body="Laksa. Frac +3",
		hands="Meg. Gloves +2",
		legs="Lanun Trews +3",
		feet="Meg. Jam. +2",
		neck="Iskur Gorget",
		waist="Yemaya Belt",
		left_ear="Telos Earring",
		right_ear="Enervating Earring",
		left_ring="Hajduk Ring",
		right_ring="Dingir Ring",
		back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+9','"Store TP"+10'}}
	}
 
     
    -- Sets to return to when not performing an action.
     
    -- Resting sets
    sets.resting = {neck="Wiglen Gorget",ring1="Sheltered Ring",ring2="Paguroidea Ring"}
     
 
    -- Idle sets
    sets.idle = {
		main={name="Rostam",bag="Wardrobe 3"},
		sub={name="Rostam",bag="Wardrobe 4"},
		head="Lanun Tricorne +3",
		body="Lanun Frac +3",
		hands="Lanun Gants +3",
		legs="Carmine Cuisses",
		feet="Lanun Bottes +3",
		neck="Commodore charm +2",
		waist="Yemaya Belt",
		left_ear="Telos Earring",
		right_ear="Enervating Earring",
		left_ring="Defending Ring",
		range="Death Penalty",
		ammo="Living Bullet",
		right_ring="Paguroidea Ring"
	}
 
    sets.idle.Town = {
		main={name="Rostam",bag="Wardrobe 3"},
		sub={name="Rostam",bag="Wardrobe 4"},
		head="Lanun Tricorne +3",
		body="Lanun Frac +3",
		hands="Lanun Gants +3",
		legs="Carmine Cuisses",
		feet="Lanun Bottes +3",
		neck="Commodore charm +2",
		waist="Yemaya Belt",
		left_ear="Telos Earring",
		right_ear="Enervating Earring",
		left_ring="Defending Ring",
		range="Death Penalty",
		ammo="Living Bullet",
		right_ring="Paguroidea Ring"
	}
     
    -- Defense sets
    sets.defense.PDT = {
		main={name="Rostam",bag="Wardrobe 3"},
		sub={name="Rostam",bag="Wardrobe 4"},
		head="Lanun Tricorne +3",
		body="Lanun Frac +3",
		hands="Lanun Gants +3",
		legs="Lanun Trews +3",
		feet="Lanun Bottes +3",
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ear="Etiolation Earring",
		right_ear="Infused Earring",
		left_ring="Paguroidea Ring",
		right_ring="Defending Ring",
		back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%'}}
	}
 
    sets.defense.MDT = {
		main={name="Rostam",bag="Wardrobe 3"},
		sub={name="Rostam",bag="Wardrobe 4"},
		head="Oshosi Mask",
		body="Oshosi Vest",
		hands="Oshosi Gloves",
		legs="Oshosi Trousers",
		feet="Oshosi Leggings",
		neck="Loricate Torque +1",
		waist="Yemaya Belt",
		left_ear="Odnowa Earring +1",
		left_ear="Etiolation Earring",
		left_ring="Paguroidea Ring",
		right_ring="Defending Ring",
		back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%'}}
	}
     
 
    sets.Kiting = {legs="Carmine cuisses +1"}
 
    -- Engaged sets
 
    -- Variations for TP weapon and (optional) offense/defense modes.  Code will fall back on previous
    -- sets if more refined versions aren't defined.
    -- If you create a set with both offense and defense modes, the offense mode should be first.
    -- EG: sets.engaged.Dagger.Accuracy.Evasion
     
    -- Normal melee group
    sets.engaged.Melee = {
		main={name="Rostam",bag="Wardrobe 3"},
		sub={name="Rostam",bag="Wardrobe 4"},
		head="Meghanada visor +2",
		body="Mummu Jacket +2",
		hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20'}},
		legs="Meg. Chausses +2",
		feet="Meg. Jam. +2",
		neck="Sanctity Necklace",
		waist="Windbuffet belt +1",
		left_ear="Telos Earring",
		right_ear="Cessance Earring",
		left_ring="Chirich Ring +1",
		right_ring="Ilabrat Ring",
		back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%'}}
	}
     
    sets.engaged.Acc = {
		main={name="Rostam",bag="Wardrobe 3"},
		sub={name="Rostam",bag="Wardrobe 4"},
		head="Meghanada visor +2",
		body="Mummu Jacket +2",
		hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20'}},
		legs="Meg. Chausses +2",
		feet="Meg. Jam. +2",
		neck="Sanctity Necklace",
		waist="Windbuffet belt +1",
		left_ear="Telos Earring",
		right_ear="Cessance Earring",
		left_ring="Chirich Ring +1",
		right_ring="Ilabrat Ring",
		back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%'}}
	}
 
    sets.engaged.Melee.DW = {
		main={name="Rostam",bag="Wardrobe 3"},
		sub={name="Rostam",bag="Wardrobe 4"},
		head="Meghanada visor +2",
		body="Mummu Jacket +2",
		hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20'}},
		legs="Meg. Chausses +2",
		feet="Meg. Jam. +2",
		neck="Sanctity Necklace",
		waist="Windbuffet belt +1",
		left_ear="Telos Earring",
		right_ear="Cessance Earring",
		left_ring="Chirich Ring +1",
		right_ring="Ilabrat Ring",
		back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%'}}
	}
     
    sets.engaged.Acc.DW = {
		main={name="Rostam",bag="Wardrobe 3"},
		sub={name="Rostam",bag="Wardrobe 4"},
		head="Meghanada visor +2",
		body="Mummu Jacket +2",
		hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20'}},
		legs="Meg. Chausses +2",
		feet="Meg. Jam. +2",
		neck="Sanctity Necklace",
		waist="Windbuffet belt +1",
		left_ear="Telos Earring",
		right_ear="Cessance Earring",
		left_ring="Chirich Ring +1",
		right_ring="Ilabrat Ring",
		back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%'}}
	}
 
 
    sets.engaged.Ranged = {
		main={name="Rostam",bag="Wardrobe 3"},
		sub={name="Rostam",bag="Wardrobe 4"},
		head="Meghanada visor +2",
		body="Mummu Jacket +2",
		hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20'}},
		legs="Meg. Chausses +2",
		feet="Meg. Jam. +2",
		neck="Sanctity Necklace",
		waist="Yemaya Belt",
		left_ear="Telos Earring",
		right_ear="Cessance Earring",
		left_ring="Dingir Ring",
		right_ring="Ilabrat Ring",
		back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+9','"Store TP"+10'}}
	}

	
	end
 
-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks for standard casting events.
-------------------------------------------------------------------------------------------------------------------
 
-- Set eventArgs.handled to true if we don't want any automatic gear equipping to be done.
-- Set eventArgs.useMidcastGear to true if we want midcast gear equipped on precast.
function job_precast(spell, action, spellMap, eventArgs)
    -- Check that proper ammo is available if we're using ranged attacks or similar.
    if spell.action_type == 'Ranged Attack' or spell.type == 'WeaponSkill' or spell.type == 'CorsairShot' then
        do_bullet_checks(spell, spellMap, eventArgs)
    end
 
    -- gear sets
    if (spell.type == 'CorsairRoll' or spell.english == "Double-Up") and state.LuzafRing.value then
        equip(sets.precast.LuzafRing)
    elseif spell.type == 'CorsairShot' and state.CastingMode.value == 'Resistant' then
        classes.CustomClass = 'Acc'
    elseif spell.english == 'Fold' and buffactive['Bust'] == 2 then
        if sets.precast.FoldDoubleBust then
            equip(sets.precast.FoldDoubleBust)
            eventArgs.handled = true
        end
    end
end
 
 
-- Set eventArgs.handled to true if we don't want any automatic gear equipping to be done.
function job_aftercast(spell, action, spellMap, eventArgs)
    if spell.type == 'CorsairRoll' and not spell.interrupted then
        display_roll_info(spell)
    end
end
 
-------------------------------------------------------------------------------------------------------------------
-- User code that supplements standard library decisions.
-------------------------------------------------------------------------------------------------------------------
 
-- Return a customized weaponskill mode to use for weaponskill sets.
-- Don't return anything if you're not overriding the default value.
 
function get_custom_wsmode(spell, spellMap, default_wsmode)
    if buffactive['Transcendancy'] then
        return 'Brew'
    end
end
 
 
-- Called by the 'update' self-command, for common needs.
-- Set eventArgs.handled to true if we don't want automatic equipping of gear.
function job_update(cmdParams, eventArgs)
    if newStatus == 'Engaged' and player.equipment.main == 'Chatoyant Staff' then
        state.OffenseMode:set('Ranged')
    end
end
 
 
-- Set eventArgs.handled to true if we don't want the automatic display to be run.
function display_current_job_state(eventArgs)
    local msg = ''
     
    msg = msg .. 'Off.: '..state.OffenseMode.current
    msg = msg .. ', Rng.: '..state.RangedMode.current
    msg = msg .. ', WS.: '..state.WeaponskillMode.current
    msg = msg .. ', QD.: '..state.CastingMode.current
 
    if state.DefenseMode.value ~= 'None' then
        local defMode = state[state.DefenseMode.value ..'DefenseMode'].current
        msg = msg .. ', Defense: '..state.DefenseMode.value..' '..defMode
    end
     
    if state.Kiting.value then
        msg = msg .. ', Kiting'
    end
     
    if state.PCTargetMode.value ~= 'default' then
        msg = msg .. ', Target PC: '..state.PCTargetMode.value
    end
 
    if state.SelectNPCTargets.value then
        msg = msg .. ', Target NPCs'
    end
 
    msg = msg .. ', Roll Size: ' .. ((state.LuzafRing.value and 'Large') or 'Small')
     
    add_to_chat(122, msg)
 
    eventArgs.handled = true
end
 
 
-------------------------------------------------------------------------------------------------------------------
-- Utility functions specific to this job.
-------------------------------------------------------------------------------------------------------------------
 
function define_roll_values()
    rolls = {
        ["Corsair's Roll"]   = {lucky=5, unlucky=9, bonus="Experience Points"},
        ["Ninja Roll"]       = {lucky=4, unlucky=8, bonus="Evasion"},
        ["Hunter's Roll"]    = {lucky=4, unlucky=8, bonus="Accuracy"},
        ["Chaos Roll"]       = {lucky=4, unlucky=8, bonus="Attack"},
        ["Magus's Roll"]     = {lucky=2, unlucky=6, bonus="Magic Defense"},
        ["Healer's Roll"]    = {lucky=3, unlucky=7, bonus="Cure Potency Received"},
        ["Puppet Roll"]      = {lucky=4, unlucky=8, bonus="Pet Magic Accuracy/Attack"},
        ["Choral Roll"]      = {lucky=2, unlucky=6, bonus="Spell Interruption Rate"},
        ["Monk's Roll"]      = {lucky=3, unlucky=7, bonus="Subtle Blow"},
        ["Beast Roll"]       = {lucky=4, unlucky=8, bonus="Pet Attack"},
        ["Samurai Roll"]     = {lucky=2, unlucky=6, bonus="Store TP"},
        ["Evoker's Roll"]    = {lucky=5, unlucky=9, bonus="Refresh"},
        ["Rogue's Roll"]     = {lucky=5, unlucky=9, bonus="Critical Hit Rate"},
        ["Warlock's Roll"]   = {lucky=4, unlucky=8, bonus="Magic Accuracy"},
        ["Fighter's Roll"]   = {lucky=5, unlucky=9, bonus="Double Attack Rate"},
        ["Drachen Roll"]     = {lucky=3, unlucky=7, bonus="Pet Accuracy"},
        ["Gallant's Roll"]   = {lucky=3, unlucky=7, bonus="Defense"},
        ["Wizard's Roll"]    = {lucky=5, unlucky=9, bonus="Magic Attack"},
        ["Dancer's Roll"]    = {lucky=3, unlucky=7, bonus="Regen"},
        ["Scholar's Roll"]   = {lucky=2, unlucky=6, bonus="Conserve MP"},
        ["Bolter's Roll"]    = {lucky=3, unlucky=9, bonus="Movement Speed"},
        ["Caster's Roll"]    = {lucky=2, unlucky=7, bonus="Fast Cast"},
        ["Courser's Roll"]   = {lucky=3, unlucky=9, bonus="Snapshot"},
        ["Blitzer's Roll"]   = {lucky=4, unlucky=9, bonus="Attack Delay"},
        ["Tactician's Roll"] = {lucky=5, unlucky=8, bonus="Regain"},
        ["Allies's Roll"]    = {lucky=3, unlucky=10, bonus="Skillchain Damage"},
        ["Miser's Roll"]     = {lucky=5, unlucky=7, bonus="Save TP"},
        ["Companion's Roll"] = {lucky=2, unlucky=10, bonus="Pet Regain and Regen"},
        ["Avenger's Roll"]   = {lucky=4, unlucky=8, bonus="Counter Rate"},
    }
end
 
function display_roll_info(spell)
    rollinfo = rolls[spell.english]
    local rollsize = (state.LuzafRing.value and 'Large') or 'Small'
 
    if rollinfo then
        add_to_chat(104, spell.english..' provides a bonus to '..rollinfo.bonus..'.  Roll size: '..rollsize)
        add_to_chat(104, 'Lucky roll is '..tostring(rollinfo.lucky)..', Unlucky roll is '..tostring(rollinfo.unlucky)..'.')
    end
end
 
 
-- Determine whether we have sufficient ammo for the action being attempted.
function do_bullet_checks(spell, spellMap, eventArgs)
    local bullet_name
    local bullet_min_count = 1
     
    if spell.type == 'WeaponSkill' then
        if spell.skill == "Marksmanship" then
            if spell.element == 'None' then
                -- physical weaponskills
                bullet_name = gear.WSbullet
            else
                -- magical weaponskills
                bullet_name = gear.MAbullet
            end
        else
            -- Ignore non-ranged weaponskills
            return
        end
    elseif spell.type == 'CorsairShot' then
        bullet_name = gear.QDbullet
    elseif spell.action_type == 'Ranged Attack' then
        bullet_name = gear.RAbullet
        if buffactive['Triple Shot'] then
            bullet_min_count = 3
        end
    end
     
    if spell.action_type == 'Ranged Attack' and buffactive['Triple Shot'] 
    then sets.precast.JA['Triple Shot'] = sets.midcast.RA
    end
     
    local available_bullets = player.inventory[bullet_name] or player.wardrobe[bullet_name]
     
    -- If no ammo is available, give appropriate warning and end.
    if not available_bullets then
        if spell.type == 'CorsairShot' and player.equipment.ammo ~= 'empty' then
            add_to_chat(104, 'No Quick Draw ammo left.  Using what\'s currently equipped ('..player.equipment.ammo..').')
            return
        elseif spell.type == 'WeaponSkill' and player.equipment.ammo == gear.RAbullet then
            add_to_chat(104, 'No weaponskill ammo left.  Using what\'s currently equipped (standard ranged bullets: '..player.equipment.ammo..').')
            return
        else
            add_to_chat(104, 'No ammo ('..tostring(bullet_name)..') available for that action.')
            eventArgs.cancel = true
            return
        end
    end
     
    -- Don't allow shooting or weaponskilling with ammo reserved for quick draw.
    if spell.type ~= 'CorsairShot' and bullet_name == gear.QDbullet and available_bullets.count <= bullet_min_count then
        add_to_chat(104, 'No ammo will be left for Quick Draw.  Cancelling.')
        eventArgs.cancel = true
        return
    end
     
    -- Low ammo warning.
    if spell.type ~= 'CorsairShot' and state.warned.value == false
        and available_bullets.count > 1 and available_bullets.count <= options.ammo_warning_limit then
        local msg = '*****  LOW AMMO WARNING: '..bullet_name..' *****'
        --local border = string.repeat("*", #msg)
        local border = ""
        for i = 1, #msg do
            border = border .. "*"
        end
         
        add_to_chat(104, border)
        add_to_chat(104, msg)
        add_to_chat(104, border)
 
        state.warned:set()
    elseif available_bullets.count > options.ammo_warning_limit and state.warned then
        state.warned:reset()
    end

end
 