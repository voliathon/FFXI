----- Credit: Krystela of Asura | Last Update: 27 november 2016 ---->
---- .:: This was entirely created by me, it's not based off anyone's file ::. ---->
---- Always visit http://pastebin.com/u/KrystelaRose to look for possible updates ---->
---- .:: Please leave credit where it's due ::. ---->
---- .:: If you have any problem contact me via ffxiah: http://www.ffxiah.com/player/Asura/Krystela ::. ---->

function user_unload()
    send_command('unbind ^f1')
    send_command('unbind ^f9')	
    send_command('unbind ^f10')
    send_command('unbind ^f11')		
end	
function get_sets()
-- Binds for modes --
    send_command('bind ^f1 gs c C1')
	send_command('bind ^f9 gs c C9')	
	send_command('bind ^f10 gs c C10')
	send_command('bind ^f11 gs c C11')	
-- Auto Functions --
    AutoSaboteur = 'ON' -- Set to ON if you want Saboteur to be automatically used for Paralyze/Slow/Distract/Frazzle --
	AutoRemedy = 'ON' -- Set to ON if you want to auto use remedies if silenced or Paralyzed, otherwise set to OFF --
-- Modes --	
	MagicBurst = 'OFF' -- Press Ctrl + F1 for MB mode on --
	Defense = 'OFF' -- Press CTRL + F9 for Idle being set as Defense full time instead of refresh --
	WeaponLock = 'OFF' -- Press ctrl + F10 for Weapon Lock--
	Capacity = 'OFF' -- Press Ctrl +F11 to have Capacity cape locked on while Idle, Change the cape at line 26 --
-- Gears --
    gear = {} -- Fill these --
	gear.Capacity_Cape = {name="Mecisto. Mantle"} -- The cape you use for capacity --
    gear.Saboteur_Hands = {} -- Add Empy hands if you want to use it, it not leave {} empty --
	gear.Refresh_Head = {name="Amalric Hood"} -- Add refresh effect + head if you want to use it, it not leave {} empty --
	gear.Refresh_Legs = {} -- Add refresh effect + pants if you want to use it, it not leave {} empty --
-- Set macro book/set --
    send_command('input /macro book 7;wait .1;input /macro set 1') -- set macro book/set here --	
-- Area mapping --	
    Town = S{"Ru'Lude Gardens","Upper Jeuno","Lower Jeuno","Port Jeuno","Port Windurst","Windurst Waters","Windurst Woods","Windurst Walls","Heavens Tower",
	         "Port San d'Oria","Northern San d'Oria","Southern San d'Oria","Port Bastok","Bastok Markets","Bastok Mines","Metalworks","Aht Urhgan Whitegate",
	         "Tavnazian Safehold","Nashmau","Selbina","Mhaura","Norg","Eastern Adoulin","Western Adoulin","Kazham","Heavens Tower"}
---- Precast ----
    sets.precast = {}
	-- Base Set --
    sets.precast.FC = { -- Rdm have 30% FC naturally, so keep that in mind --
        ammo="Impatiens",
        head="Amalric Coif",
        body={ name="Merlinic Jubbah", augments={'"Fast Cast"+6',}},
        hands={ name="Merlinic Dastanas", augments={'"Fast Cast"+6','DEX+10','Accuracy+19 Attack+19','Mag. Acc.+11 "Mag.Atk.Bns."+11',}},
        ring1="Prolix Ring",
		ring2="Lebeche Ring",
        back="Perimede Cape",
        waist="Witful Belt",
		legs="Psycloth Lappas",
        feet={ name="Merlinic Crackows", augments={'Mag. Acc.+10','"Fast Cast"+5','INT+1','"Mag.Atk.Bns."+7',}}}
	-- Healing Magic --	
	sets.precast.Cure = set_combine(sets.precast.FC, {})
	-- Enhancing Magic --
    sets.precast.Enhancing = set_combine(sets.precast.FC, {})		
    sets.precast['Stoneskin'] = set_combine(sets.precast.FC, {})
	-- Elemental Magic --
	sets.precast.Elemental = set_combine(sets.precast.FC, {})	
	sets.precast['Impact'] = set_combine(sets.precast.FC, { -- Make sure to leave the head empty --
        head=empty,
        body="Twilight Cloak"})	
    -- Job Abilities --
	sets.JA = {}
	sets.JA['Chainspell'] = {}	
	-- WS sets --
	sets.WS = {  -- Your base WS set --
	    ammo="Ginsen",
		head="Jhakri Coronal +1",
		neck="Caro Necklace",
		ear1="Ishvara Earring",
		ear2="Telos Earring",
		body="Jhakri Robe +1",
		hands="Jhakri Cuffs +1",
		ring1="Hetairoi Ring",
		ring2="Rajas Ring",
		waist="Sarissaphoroi Belt",
		legs="Carmine Cuisses +1",
		feet="Jhakri Pigaches +1"}
	sets.WS['Chant Du Cygne'] = set_combine(sets.WS, {
	    ear2="Mache Earring",
		waist="Artful Belt +1"})	
	sets.WS['Requiescat'] = set_combine(sets.WS, {
	    neck="Nuna Gorget +1",
		ring2="Stiniki Ring",
		waist="Luminary Sash"})	
	sets.WS['Salvage Blade'] = set_combine(sets.WS, {waist="Luminary Sash"})
---- Midcast ----	
    sets.midcast = {}	
    -- Base Set --
    sets.midcast.Recast = {
	    main="Sequence",
		sub="Thuellaic Ecu +1",
        head="Amalric Coif",
        body={ name="Merlinic Jubbah", augments={'"Fast Cast"+6',}},
        hands={ name="Merlinic Dastanas", augments={'"Fast Cast"+6','DEX+10','Accuracy+19 Attack+19','Mag. Acc.+11 "Mag.Atk.Bns."+11',}},
        ring1="Prolix Ring",
        waist="Witful Belt",
		legs="Psycloth Lappas",
        feet={ name="Merlinic Crackows", augments={'Mag. Acc.+10','"Fast Cast"+5','INT+1','"Mag.Atk.Bns."+7',}}}	
    -- Healing Magic --
    sets.midcast.Cure = {
	    main="Serenity",
		sub="Achaq Grip",	
		ammo="Pemphredro Tathlum",
		head="Kaykaus Mitra +1",
        neck="Incanter's Torque",
		ear1="Healing Earring",
        ear2="Beatific Earring",		
        body="Kaykaus Bliaut +1",
        hands="Kaykaus Cuffs +1",
        ring1="Haoma's Ring",
        ring2="Janniston Ring",
        back="Tempered Cape +1",
        waist="Luminary Sash",
        legs="Vanya Slops",
        feet="Kaykaus Boots +1"}
	sets.midcast.Cure.Weather = set_combine(sets.midcast.Cure, {
	    main="Chatoyant Staff",
        back="Twilight Cape",
        waist="Hachirin-no-Obi",
        legs="Chironic Hose"})
	sets.midcast.Cure.WeaponLock = set_combine(sets.midcast.Cure, { -- For when weapon is locked --
        ring1="Lebeche Ring",
        legs="Chironic Hose"})	
    sets.midcast['Cursna'] = set_combine(sets.midcast.Recast, {  -- for doom removal gears --	
	    main={ name="Grioavolr", augments={'"Fast Cast"+5','MND+14','"Mag.Atk.Bns."+2','Magic Damage +7',}},
		sub="Clerisy Strap +1",
		ammo="Sapience Orb",
		neck="Debilis Medallion",
		ear1="Loquac. Earring",
		ear2="Enchntr. Earring +1",
		ring1="Haoma's Ring",
		ring2="Haoma's Ring",
		back="Sucellos's Cape",
		feet="Gende. Galosh. +1"})
    -- Enhancing Magic --		
    sets.midcast.Enhancing = { -- Gain spells/Barspells who caps at 500 skills --
	    main="Oranyan",	
		sub="Clerisy Strap +1",
		ammo="Sapience Orb",
	    head="Befouled Crown",
		neck="Incanter's Torque",
		ear1="Loquac. Earring",
		ear2="Enchntr. Earring +1",
		body="Telchine Chasuble",
		hands="Atrophy Gloves +1",
		ring1="Stikini Ring",
		ring2="Stikini Ring",
        back="Sucellos's Cape",		
		legs="Telchine Braconi",
		feet="Telchine Pigaches"}	
	sets.midcast.Enhancing.DurationPlayer = set_combine(sets.midcast.Recast, { -- For haste/Regen/Refresh/Flurry on others --
	    main="Oranyan",	
		sub="Clerisy Strap +1",
		ammo="Sapience Orb",
	    head="Telchine Cap",
		neck="Voltsurge Torque",
		ear1="Loquac. Earring",
		ear2="Enchntr. Earring +1",		
		body="Telchine Chasuble",
		hands="Atrophy Gloves +1",
        back="Sucellos's Cape",		
		legs="Telchine Braconi",
		feet="Telchine Pigaches"})
	sets.midcast.Enhancing.DurationSelf = set_combine(sets.midcast.Enhancing.DurationPlayer, {}) -- For Haste/Regen/Refresh/Flurry/Storms/Reraise on yourself --
    sets.midcast['Phalanx'] = set_combine(sets.midcast.Enhancing, {}) -- For Phalanx Specific gears and 500 skill --
    sets.midcast.Temper = set_combine(sets.midcast.Enhancing, { -- Stack as much enhancing as you can, cap for temper is unknown but it is not 500 skill --
	    main="Serenity",
		ear1="Andoaa Earring",
		ear2="Augmenting Earring",
		hands="Chironic Gloves",
		back="Perimede Cape",
		legs="Carmine Cuisses +1",
		feet="Kaykaus Boots +1"})
    sets.midcast['Stoneskin'] = set_combine(sets.midcast.Enhancing.DurationSelf, {}) -- For Stoneskin specific gears, doesnt need skill at all --
    sets.midcast['Aquaveil'] = set_combine(sets.midcast.Enhancing.DurationSelf, {head="Amalric Coif"}) -- For Aquaveil specific gears, need at least 355 skills --	
    -- Enfeebling Magic --	
    sets.midcast.Enfeebling = { -- Full 610 skill set for frazzle/distract/Poison --
	    main={ name="Grioavolr", augments={'"Conserve MP"+1','INT+2','Mag. Acc.+30',}}	,
        sub="Clerisy Strap +1",
        ammo="Pemphredo Tathlum",
	    head="Befouled Crown",		
        neck="Incanter's Torque",			
	    ear1="Dignitary's Earring",
	    ear2="Gwati Earring",
        body="Vanya Robe",
        hands="Kaykaus Cuffs +1",
	    ring1="Stikini Ring",
	    ring2="Stikini Ring",
        back="Sucellos's Cape",
	    waist="Luminairy Sash",
		legs="Psycloth Lappas",
	    feet="Skaoi Boots"}
	sets.midcast.Enfeebling.Macc = set_combine(sets.midcast.Enfeebling, { -- For Silence/Dispel/Inundation/Sleep/Break that arent affect by full enfeeb set or effect + gears --
	    head="Amalric Coif",
		body="Chironic Doublet",
		legs="Chironic Hose"})
	sets.midcast.Gravity = set_combine(sets.midcast.Enfeebling, { -- For Gravity who gains alot from effect + gears --
	    head="Amalric Coif",
		body="Chironic Doublet",
		legs="Chironic Hose"})
	sets.midcast.Enfeebling.MND = set_combine(sets.midcast.Enfeebling, { -- For Paralyze/Slow/Addle who's potency/macc is enhanced by MND --
	    head="Chironic Hat",
		body="Chironic Doublet",
		legs="Chironic Hose"})	
	sets.midcast.Enfeebling.INT = set_combine(sets.midcast.Enfeebling, { -- For Blind/Bind who's Macc is enhanced by INT --
	    head="Amalric Coif",
		body={ name="Merlinic Jubbah", augments={'Mag. Acc.+19 "Mag.Atk.Bns."+19','Mag. Acc.+15',}},
        waist="Porous Rope",
        legs="Chironic Hose"})		
    -- Dark Magic --
    sets.midcast.Bio = set_combine(sets.midcast.Recast, { -- For Bio, you want a full Dark magic skill set for potency --
	    neck="Incanter's Torque",
		body="Vanya Robe",
		ring1="Stikini Ring",
		ring2="Stikini Ring",
		back="Perimede Cape"})
    sets.midcast.Dark = set_combine(sets.midcast.Recast, { -- For Aspir/Drain --
	    neck="Incanter's Torque",
		body="Vanya Robe",
		ring1="Stikini Ring",
		ring2="Stikini Ring",
		back="Perimede Cape",
		legs="Merlinic Shalwar",
		feet="Merlinic Crackows"})
    sets.midcast['Stun'] = set_combine(sets.midcast.Recast, {
	    main={ name="Grioavolr", augments={'"Conserve MP"+1','INT+2','Mag. Acc.+30',}},
        sub="Clerisy Strap +1",
        ammo="Sapience Orb",
		neck="Voltsurge Torque",
		ear1="Dignitary's Earring",
		ear2="Enchntr. Earring +1",
		body={ name="Merlinic Jubbah", augments={'Mag. Acc.+19 "Mag.Atk.Bns."+19','Mag. Acc.+15',}},
		hands="Kaykaus Cuffs +1",
	    ring2="Stikini Ring",
		back="Sucellos's Cape",
		feet="Skaoi Boots"})
    -- Elemental Magic --
    sets.midcast.Elemental = { -- Normal Nukes --
        main={ name="Grioavolr", augments={'"Conserve MP"+3','MP+96','Mag. Acc.+19','"Mag.Atk.Bns."+30',}},
	    sub="Niobid Strap",
        ammo="Pemphredo Tathlum",		
	    head="Merlinic Head",	
	    neck="Mizukage-no-Kubikazari",
	    ear1="Barkarole Earring",
	    ear2="Friomisi Earring",
	    body={ name="Merlinic Jubbah", augments={'"Mag.Atk.Bns."+29','Magic burst mdg.+11%','INT+7',}},		
	    hands={ name="Amalric Gages", augments={'INT+10','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},
		ring1="Stikini Ring",
		ring2="Stikini Ring",
	    back="Sucellos's Cape",
	    waist="Refoccilation Stone",
	    legs="Merlinic Shalwar",
	    feet={ name="Merlinic Crackows", augments={'"Mag.Atk.Bns."+27','Magic burst mdg.+9%',}}}	
    sets.midcast.Elemental.MB = set_combine(sets.midcast.Elemental, { -- For when MB mode is turned on --
	    ear2="Static Earring",
		ring1="Locus Ring",
		ring2="Mujin Band"})		
    sets.midcast.Elemental.Weather = set_combine(sets.midcast.Elemental, { -- For normal nukes with weather on/appropriate day --
		back="Twilight Cape",
		waist="Hachirin-no-Obi"})	
    sets.midcast.Elemental.MB.Weather = set_combine(sets.midcast.Elemental.MB, { -- For MB nukes with weather on/appropriate day --
		back="Twilight Cape",
		waist="Hachirin-no-Obi"})			
	sets.midcast['Impact'] = set_combine(sets.midcast.Elemental, {  -- Make sure to leave the head empty --
	    head=empty,
	    body="Twilight Cloak"})	
---- Aftercast ----
    sets.aftercast = {}
    sets.aftercast.Idle = { -- Your movement speed goes here, mix of PDT/Refresh --
	    main="Terra's Staff",
	    sub="Oneiros Grip",
		ammo="Staunch Tathlum",
	    head="Befouled Crown",			
        neck="Loricate Torque +1",
	    ear1="Etiolation Earring",
        ear2="Genmei Earring",
        body="Kaykaus Bliaut +1",
        hands="Chironic Gloves",
        ring1="Defending Ring",
        ring2="Patricius Ring",		
	    back="Umbra Cape",
	    waist="Slipor Sash",
	    legs="Carmine Cuisses +1",
		feet="Gende. Galosh. +1"}
    sets.aftercast.Refresh = set_combine(sets.aftercast.Idle, { -- Refresh gears goes here --	
		ammo="Homiliary",
	    ear1="Moonshade Earring",
	    legs="Lengo Pants",
	    feet="Serpentes Sabots"})	
    sets.aftercast.Defense = set_combine(sets.aftercast.Refresh, { -- For when you want you idle as full time PDT --
	    ammo="Staunch Tathlum",	
	    ear1="Etiolation Earring",
		feet="Gende. Galosh. +1"})			
    sets.aftercast.Town = set_combine(sets.aftercast.Idle, { -- For town --
	    main="Sequence",
		sub="Genmei Shield",
	    ammo="Staunch Tathlum",		
	    head="Kaykaus Mitra +1",
		body="kaykaus Bliaut +1",
        hands="Kaykaus Cuffs +1",		
	    feet="kaykaus Boots +1"})
	sets.Resting = set_combine(sets.aftercast.Refresh, {})
---- Melee ----
    sets.engaged = { 
	    ammo="Ginsen",
		head="Jhakri Coronal +1",
		neck="Lissome Necklace",
		ear1="Cessance Earring",
		ear2="Telos Earring",
		body="Jhakri Robe +1",
		hands="Jhakri Cuffs +1",
		ring1="Rajas Ring",
		ring2="Hetairoi Ring",
		waist="Sarissapho. Belt",
		legs="Carmine Cuisses +1",
		feet="Jhakri Pigaches +1"}
    sets.engaged.DualWield = {	-- for dnc/nin sub --	
	    ammo="Ginsen",
		head="Jhakri Coronal +1",
		neck="Lissome Necklace",
		ear1="Cessance Earring",
		ear2="Telos Earring",
		body="Jhakri Robe +1",
		hands="Jhakri Cuffs +1",
		ring1="Rajas Ring",
		ring2="Hetairoi Ring",
		waist="Reiki Yotai",
		legs="Carmine Cuisses +1",
		feet="Jhakri Pigaches +1"}	
end	
---- .::Pretarget Functions::. ---->
function pretarget(spell,action)
    -- Auto Saboteur if was set to ON --		
    if AutoSaboteur == 'ON' then	
	    if string.find(spell.english, 'Paralyze') or string.find(spell.english, 'Slow') or string.find(spell.english, 'Distract') or string.find(spell.english, 'Frazzle') then
            if windower.ffxi.get_ability_recasts()[36] < 1 and not buffactive[16] then 	
		        cancel_spell()
			    send_command('input /ja "Saboteur" <me>;wait 1.7;input /ma "'..spell.english..'" '..spell.target.name)
			end	
		end	
	end	
    -- Auto Remedy --
	if AutoRemedy == 'ON' then
        if buffactive['Silence'] or buffactive['Paralysis'] then
            if spell.action_type == 'Magic' or spell.type == 'JobAbility' then 	
                cancel_spell()
                send_command('input /item "Remedy" <me>')
            end				
		end	
	end
end	
---- .::Precast Functions::. ---->
function precast(spell)	
    if spell.action_type == 'Magic' then
		-- Healing Magic --
	    if string.find(spell.english, 'Cure') or string.find(spell.english, 'Cura') then
		    equip(sets.precast.Cure)
		-- Enhancing Magic --	
		elseif spell.skill == 'Enhancing Magic' then
         	equip(sets.precast.Enhancing)
		-- Elemental Magic --	
		elseif spell.skill == 'Elemental Magic' then
		    if spell.english == 'Impact' then
			    equip(sets.midcast[spell.english])
			else			
         	    equip(sets.precast.Elemental)	
			end	
        -- Everything that have a specific name set --	
		elseif sets.precast[spell.english] then	
	        equip(sets.precast[spell.english])			
        -- Everything else that doesn't have a specific set for it --			
        else
            equip(sets.precast.FC)
		end	
	-- Job Abilities --	
    elseif spell.type == 'JobAbility' then
        equip(sets.JA[spell.english])	
    -- Weaponskills --
    elseif spell.type == 'WeaponSkill' then
        if sets.WS[spell.english] then	
            equip(sets.WS[spell.english])
	    else
		    equip(sets.WS)
		end	
    end		
end	
---- .::Midcast Functions::. ---->
function midcast(spell)
    if spell.action_type == 'Magic' then
		-- Healing Magic --
	    if string.find(spell.english, 'Cure') or string.find(spell.english, 'Cura') then
		    if WeaponLock == 'ON' then
			    equip(sets.midcast.Cure.WeaponLock)
	        elseif spell.element == world.weather_element or spell.element == world.day_element then
                equip(sets.midcast.Cure.Weather)	
			else
                equip(sets.midcast.Cure)
			end
		-- Enhancing Magic --	
	    elseif string.find(spell.english, 'Bar') or string.find(spell.english, 'Gain') then	
            equip(sets.midcast.Enhancing)
	    elseif string.find(spell.english, 'Haste') or string.find(spell.english, 'storm') or string.find(spell.english, 'Reraise') or string.find(spell.english, 'Flurry') or string.find(spell.english, 'Regen') then
            if spell.target.type == 'PLAYER' then		
                equip(sets.midcast.Enhancing.DurationPlayer)
            else
                equip(sets.midcast.Enhancing.DurationSelf)
			end
        elseif string.find(spell.english, 'Refresh') then
             if spell.target.type == 'PLAYER' then		
                equip(sets.midcast.Enhancing.DurationPlayer, {head=gear.Refresh_Head})
            else
                equip(sets.midcast.Enhancing.DurationSelf, {head=gear.Refresh_Head, legs=gear.Refresh_Legs})
			end          		
		elseif string.find(spell.english, 'Temper') then
            equip(sets.midcast.Temper)	
        -- Enfeebling Magic --			
	    elseif string.find(spell.english, 'Frazzle') or string.find(spell.english, 'Distract') or string.find(spell.english, 'Poison') then
		    if buffactive[454] then
                equip(sets.midcast.Enfeebling, {hands=gear.Saboteur_Hands})	
            else				
                equip(sets.midcast.Enfeebling)
            end				
	    elseif string.find(spell.english, 'Dispel') or string.find(spell.english, 'Silence') or string.find(spell.english, 'Inundation') or string.find(spell.english, 'Sleep') or string.find(spell.english, 'Break') then
            equip(sets.midcast.Enfeebling.Macc)	
	    elseif string.find(spell.english, 'Paralyze') or string.find(spell.english, 'Slow') or string.find(spell.english, 'Addle') then
		    if buffactive[454] then		
                equip(sets.midcast.Enfeebling.MND, {hands=gear.Saboteur_Hands})
			else
                equip(sets.midcast.Enfeebling.MND)
            end				
		elseif string.find(spell.english, 'Gravity') then
            equip(sets.midcast.Gravity)
		elseif string.find(spell.english, 'Blind') or spell.english == 'Bind' then
            equip(sets.midcast.Enfeebling.INT)
		-- Dark Magic --	
		elseif string.find(spell.english, 'Bio') then
            equip(sets.midcast.Bio)				
	    elseif string.find(spell.english, 'Aspir') or string.find(spell.english, 'Drain') then
            equip(sets.midcast.Dark)
        -- Elemental Magic --			
        elseif spell.skill == 'Elemental Magic' then
		    if spell.english == 'Impact' then
			    equip(sets.midcast[spell.english])
            elseif MagicBurst == 'ON' then
	            if spell.element == world.weather_element or spell.element == world.day_element then  			
                    equip(sets.midcast.Elemental.MB.Weather)
                else
                    equip(sets.midcast.Elemental.MB)
                end
	        elseif spell.element == world.weather_element or spell.element == world.day_element then  
                equip(sets.midcast.Elemental.Weather)
            else
                equip(sets.midcast.Elemental)
			end
        -- Everything that have a specific name set --	
		elseif sets.midcast[spell.english] then
	        equip(sets.midcast[spell.english])				
		-- Everything else that doesn't have a specific set for it --
        else
            equip(sets.midcast.Recast)		
		end
	end	
end	
---- .::Aftercast Functions::. ---->
function aftercast(spell,action)
	status_change(player.status)	
end	
---- .::Status Changes Functions::. ---->
function status_change(new,tab,old)
    -- Idle --
    if new == 'Idle' then
        if Defense == 'ON' then
            equip(sets.aftercast.Defense)
        elseif Town:contains(world.zone) then	
            equip(sets.aftercast.Town)
        elseif player.mpp <70 then
            equip(sets.aftercast.Refresh)
        else
            equip(sets.aftercast.Idle)
        end
	-- Resting --	
	elseif new == 'Resting' then
        equip(sets.Resting)	
    -- Engaged --		
    elseif new == 'Engaged' then
	    if player.sub_job == 'DNC' or player.sub_job == 'NIN' then
            equip(sets.engaged.DualWield)	
		else	
            equip(sets.engaged)	
		end	
    end		
end  
--- ..::Self Commands functions::.. --->
function self_command(command)
    status_change(player.status)	
	-- Magic burst --
    if command == 'C1' then
        if MagicBurst == 'ON' then
            MagicBurst = 'OFF'			
            add_to_chat(123,'Magic Burst Set: [OFF]')
        else
            MagicBurst = 'ON'		
            add_to_chat(158,'Magic Burst Set: [ON]')
        end
	-- Defense --	
    elseif command == 'C9' then
        if Defense == 'ON' then
            Defense = 'OFF'				
            add_to_chat(123,'Defense Idle Set: [OFF]')
        else
            Defense = 'ON'	
            equip(sets.aftercast.Defense)			
            add_to_chat(158,'Defense Idle Set: [ON]')
        end	
    -- Weapon Lock --		
    elseif command == 'C10' then
        if WeaponLock == 'ON' then
            WeaponLock = 'OFF'
            enable('main', 'sub' ,'range')				
            add_to_chat(123,'Weapon Lock Set: [OFF]')
        else
            WeaponLock = 'ON'
            disable('main', 'sub' ,'range')			
            add_to_chat(158,'Weapon Lock Set: [ON]')
        end	
    -- Capacity --		
    elseif command == 'C11' then
        if Capacity == 'ON' then
            Capacity = 'OFF'
            enable('back')				
            add_to_chat(123,'Capacity Cape Set: [OFF]')
        else
            Capacity = 'ON'
			equip({back=gear.Capacity_Cape})
			disable('back')
            add_to_chat(158,'Capacity Cape Set: [ON]')
        end
	end	
end	 
-- Automatically changes Idle gears if you zone in or out of town --
windower.register_event('zone change', function()
	status_change(player.status)
	if Town:contains(world.zone) then	
        equip(sets.aftercast.Town)
    else
        equip(sets.aftercast.Idle)		
    end	
end)