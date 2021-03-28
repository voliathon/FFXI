-------------------------------------------------------------------------------------------------------------------
-- Setup functions for this job.  Generally should not be modified.
-------------------------------------------------------------------------------------------------------------------

-- Initialization function for this job file.
function get_sets()
  mote_include_version = 2

  -- Load and initialize the include file.
  include('Mote-Include.lua')
  include('organizer-lib')
end

-- Setup vars that are user-independent.  state.Buff vars initialized here will automatically be tracked.
function job_setup()
  state.Buff['Afflatus Solace'] = buffactive['Afflatus Solace'] or false
  state.Buff['Afflatus Misery'] = buffactive['Afflatus Misery'] or false
end

-------------------------------------------------------------------------------------------------------------------
-- User setup functions for this job.  Recommend that these be overridden in a sidecar file.
-------------------------------------------------------------------------------------------------------------------

-- Setup vars that are user-dependent.  Can override this function in a sidecar file.
function user_setup()
  state.OffenseMode:options('None', 'Normal')
  state.CastingMode:options('Normal', 'Resistant')
  state.IdleMode:options('Normal', 'PDT')

  select_default_macro_book()
end

-- Define sets and vars used by this job file.
function init_gear_sets()
  --------------------------------------
  -- Start defining the sets
  --------------------------------------

  -- Precast Sets

  -- Fast cast sets for spells
  sets.precast.FC = {
    ammo="Sapience Orb",
    head="Haruspex Hat",
    hands="Repartie Gloves",
    body="Ebers Bliaud",
    legs="Assiduity Pants",
    feet="Regal Pumps",
    waist="Witful Belt",
    left_ring="Prolix Ring",
    back="Swith Cape",
  }

  sets.precast.FC['Enhancing Magic'] = set_combine(sets.precast.FC, {
    --waist="Siegel Sash"
    })

  sets.precast.FC.Stoneskin = set_combine(sets.precast.FC['Enhancing Magic'])



  sets.precast.FC.Cure = set_combine(sets.precast.FC, {
    main="Ababinili",
    sub="Dominie's Grip",
    body="Nefer Kalasiris",
    legs="Orsn. Pantaln. +1",
    feet="Hygieia Clogs",
    left_ear="Nourish. Earring +1",
  })

  sets.precast.FC['Healing Magic'] = set_combine(sets.precast.FC.Cure, { })

  sets.precast.FC.StatusRemoval = sets.precast.FC['Healing Magic']

  sets.precast.FC.Curaga = sets.precast.FC.Cure
  sets.precast.FC.CureSolace = sets.precast.FC.Cure
  -- CureMelee spell map should default back to Healing Magic.

  -- Precast sets to enhance JAs
  sets.precast.JA.Benediction = {   }

  -- Waltz set (chr and vit)
  sets.precast.Waltz = { }


  -- Weaponskill sets
  sets.precast.WS = { }


  -- Cure sets
  sets.midcast.Cure = {  }

  sets.midcast.CureSolace = sets.midcast.Cure
  sets.midcast.Curaga = sets.midcast.Cure

  sets.midcast.CureMelee = sets.midcast.Cure

  sets.midcast.Cursna = set_combine(sets.precast.FC, {Neck="Malison Medallion", left_ring="Ephedra Ring", right_ring="Ephedra Ring"})

  sets.midcast.StatusRemoval = sets.precast.FC

  -- 110 total Enhancing Magic Skill; caps even without Light Arts
  sets.midcast['Enhancing Magic'] = { }

  sets.midcast.Stoneskin = { }

  sets.midcast.Auspice = { }

  sets.midcast.BarElement = { }

  sets.midcast.Regen = { }

  sets.midcast.Protectra = { }

  sets.midcast.Shellra = { }


  sets.midcast['Divine Magic'] = { }

  sets.midcast['Dark Magic'] = { }

  -- Custom spell classes
  sets.midcast.MndEnfeebles = { }

  sets.midcast.IntEnfeebles = { }


  -- Sets to return to when not performing an action.

  -- Resting sets
  sets.resting = { }


  -- Idle sets (default idle set not needed since the other three are defined, but leaving for testing purposes)
  sets.idle = {
    main="Ababinili",
    sub="Shamatha Grip",
    ammo="Sapience Orb",
    head="Ebers Cap",
    body="Ebers Bliaud",
    hands="Wayfarer Cuffs",
    legs="Assiduity Pants",
    feet="Herald's Gaiters",
    neck="Nuna Gorget",
    waist="Witful Belt",
    left_ear="Nourish. Earring +1",
    right_ear="Roundel Earring",
    left_ring="Tamas Ring",
    right_ring="Warp Ring",
    back="Swith Cape",
  }

  sets.idle.PDT = sets.idle

  sets.idle.Town = sets.idle

  sets.idle.Weak = sets.idle

  -- Defense sets

  sets.defense.PDT = { }

  sets.defense.MDT = { }

  sets.Kiting = {feet="Herald's Gaiters"}

  sets.latent_refresh = { }

  -- Engaged sets

  -- Variations for TP weapon and (optional) offense/defense modes.  Code will fall back on previous
  -- sets if more refined versions aren't defined.
  -- If you create a set with both offense and defense modes, the offense mode should be first.
  -- EG: sets.engaged.Dagger.Accuracy.Evasion

  -- Basic set for if no TP weapon is defined.
  sets.engaged = { }


  -- Buff sets: Gear that needs to be worn to actively enhance a current player buff.
  sets.buff['Divine Caress'] = {
    --hands="Orison Mitts +2",back="Mending Cape"
    }
end

-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks for standard casting events.
-------------------------------------------------------------------------------------------------------------------

-- Set eventArgs.handled to true if we don't want any automatic gear equipping to be done.
-- Set eventArgs.useMidcastGear to true if we want midcast gear equipped on precast.
function job_precast(spell, action, spellMap, eventArgs)
  if spell.english == "Paralyna" and buffactive.Paralyzed then
    -- no gear swaps if we're paralyzed, to avoid blinking while trying to remove it.
    eventArgs.handled = true
  end

  --if spell.skill == 'Healing Magic' then
  --   gear.default.obi_back = "Mending Cape"
  -- else
  --    gear.default.obi_back = "Toro Cape"
  --end
end


function job_post_midcast(spell, action, spellMap, eventArgs)
  -- Apply Divine Caress boosting items as highest priority over other gear, if applicable.
  if spellMap == 'StatusRemoval' and buffactive['Divine Caress'] then
    equip(sets.buff['Divine Caress'])
  end
end


-------------------------------------------------------------------------------------------------------------------
-- User code that supplements standard library decisions.
-------------------------------------------------------------------------------------------------------------------

-- Custom spell mapping.
function job_get_spell_map(spell, default_spell_map)
  if spell.action_type == 'Magic' then
    if (default_spell_map == 'Cure' or default_spell_map == 'Curaga') and player.status == 'Engaged' then
      return "CureMelee"
    elseif default_spell_map == 'Cure' and state.Buff['Afflatus Solace'] then
      return "CureSolace"
    elseif spell.skill == "Enfeebling Magic" then
      if spell.type == "WhiteMagic" then
        return "MndEnfeebles"
      else
        return "IntEnfeebles"
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
  if cmdParams[1] == 'user' and not areas.Cities:contains(world.area) then
    local needsArts =
      player.sub_job:lower() == 'sch' and
      not buffactive['Light Arts'] and
      not buffactive['Addendum: White'] and
      not buffactive['Dark Arts'] and
      not buffactive['Addendum: Black']

    if not buffactive['Afflatus Solace'] and not buffactive['Afflatus Misery'] then
      if needsArts then
        send_command('@input /ja "Afflatus Solace" <me>;wait 1.2;input /ja "Light Arts" <me>')
      else
        send_command('@input /ja "Afflatus Solace" <me>')
      end
    end
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

-- Select default macro book on initial load or subjob change.
function select_default_macro_book()
  -- Default macro set/book
  set_macro_page(2, 1)
end


function makeMoreJobPoints()
  if not buffactive.Commitment then
	send_command('@wait 1; input /item "Trizek Ring" <me>;')
	if not buffactive.Commitment then 
		send_command('@wait 1; input /item "Capacity Ring" <me>;')
    end
  end  
end
