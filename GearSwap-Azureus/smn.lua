----- Credit: Krystela of Asura | Last Update: 27 november 2016 ---->
---- .:: This was entirely created by me, it does not use Motes files ::. ---->
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
	send_command('bind ^f1 gs c C1') -- Press CTRL + F1 for auto elemental siphon --
	send_command('bind ^f9 gs c C9')
    send_command('bind ^f10 gs c C10')
	send_command('bind ^f11 gs c C11')
  --[[ Special commands to put in macros for bloodpacts: 
        /console Gs c CBP --Cure bloodpacts
		/console Gs c CgaBP -- Curaga Bloodpacts
		/console Gs c OffBP -- Offense Bloodpacts
		/console Gs c DefBP -- Defense Bloodpacts
		/console Gs c SpeBP -- Special Bloodbacts ward
		/console Gs c DebBP -- Debuffs Bloodpacts
		/console Gs c SleepBP -- Sleepga Bloodpacts
		/console Gs c 10BPR -- T2 nukes Bloodpacts
		/console Gs c 60BPR -- T4 nukes Bloodpacts
		/console Gs c 70BPR -- lvl 70 Bloopacts
		/console Gs c 75BPR -- Merit Bloodpacts
		/console Gs c 99BP -- lvl 99 Bloodpacts
		/console Gs c SP -- 2hr Bloodpacts		
	]]--			
  -- Auto Functions --
	AutoRemedy = 'ON' -- Set to ON if you want to auto use remedies if silenced or Paralyzed, otherwise set to OFF --		
-- Modes --
    PetIndex = 1
    PetArray = {"Normal","TP","PDT"} -- Press ctrl + F9 to circle through Pet modes TP/PDT --
	WeaponLock = 'OFF' -- Press ctrl + F10 for Weapon Lock--
	Capacity = 'OFF' -- Press Ctrl + F11 to have Capacity cape locked on while Idle, Change the cape at line 42 --
-- Gears --
    gear = {}
	gear.Capacity_Cape = {name="Mecisto. Mantle"} -- The cape you use for capacity --
	gear.Carbuncle_Mitts = {} -- Add Carby hands if you want to use it, it not leave {} empty --
	gear.Refresh_Head = {name="Amalric Hood"} -- Add Refresh + effect head if you want to use it, it not leave {} empty --
-- Macro --	
    send_command('input /macro book 8;wait .1;input /macro set 1') -- set macro book/set here --	
-- Spellmaps --	
    Buff = S{"Healing Ruby", "Shining Ruby", "Glittering Ruby", "Healing Ruby II", "Soothing Ruby", "Pacifying Ruby", "Frost Armor", "Crystal Blessing",
	          "Aerial Armor", "Whispering Wind", "Hastega", "Fleet Wind", "Hastega II", "Rolling Thunder", "Lightning Armor", "Spring Water", "Soothing Current",
			  "Crimson Howl", "Inferno Howl", "Altana's Favor", "Raise II", "Reraise  III","Earthen Ward", "Earthen Armor", "Ecliptic Growl", "Ecliptic Howl", 
			  "Heavenward Howl", "Noctoshield", "Dream Shroud", "Chronoshift", "Perfect Defense"}
	Debuff = S{"Poison Nails", "Sleepga", "Diamond Storm",  "Mountain Buster", "Shock Squall", "Shock Strike", "Slowga","Tidal Roar", "Tail Whip", "Lunar Cry",
	            "Mewing Lullaby", "Eerie Eye", "Lunar Roar", "Moonlit Charge", "Crescent Fang", "Somnolence", "Pavor Nocturnus", "Deconstruction", "Zentetsuken"}
	Magic = S{"Searing Light", "Meteorite", "Holy Mist", "Diamond Dust", "Blizzard II", "Heavenly Strike", "Aerial Blast", "Aero II", "Aero IV", "Wind Blade",
	          "Earthen Fury", "Stone II", "Stone IV", "Geocrush", "Judgment Bolt", "Thunder II", "Thunderspark", "Thunder IV", "Thunderstorm", "Tidal Wave",
			  "Water II", "Water IV", "Grand Fall", "Inferno", "Fire II", "Fire IV", "Meteor Strike", "Conflag Strike", "Level ? Holy", "Howling Moon", 
			  "Lunar Bay", "Impact", "Nightmare", "Ruinous Omen", "Night Terror"}
	Physical = S{"Axe Kick", "Double Slap", "Rush", "Claw", "Predator Claws",  "Rock Throw", "Megalith Throw", "Crag Throw", "Chaotic Strike", "Volt Strike", 
	             "Barracuda Dive", "Spinning Dive", "Punch", "Double Punch", "Regal Scratch", "Regal Gash", "Eclipse Bite", "Camisado","Blindside"} 
	Hybrid = S{"Burning Strike", "Flaming Crush", "Nether Blast"}
-- Area mapping --	
    Town = S{"Ru'Lude Gardens","Upper Jeuno","Lower Jeuno","Port Jeuno","Port Windurst","Windurst Waters","Windurst Woods","Windurst Walls","Heavens Tower",
	         "Port San d'Oria","Northern San d'Oria","Southern San d'Oria","Port Bastok","Bastok Markets","Bastok Mines","Metalworks","Aht Urhgan Whitegate",
	         "Tavnazian Safehold","Nashmau","Selbina","Mhaura","Norg","Eastern Adoulin","Western Adoulin","Kazham","Heavens Tower"}	
---- Precast ----			 
    sets.precast = {}
	-- Base set --
	sets.precast.FC = {
	    main={ name="Grioavolr", augments={'"Fast Cast"+5','MND+14','"Mag.Atk.Bns."+2','Magic Damage +7',}},
		sub="Clerisy Strap +1",
        head="Amalric Coif",
        neck="Voltsurge Torque",
        ear1="Loquac. Earring",
        ear2="Enchntr. Earring +1",
        body={ name="Merlinic Jubbah", augments={'"Fast Cast"+6',}},
        hands={ name="Merlinic Dastanas", augments={'"Fast Cast"+6','DEX+10','Accuracy+19 Attack+19','Mag. Acc.+11 "Mag.Atk.Bns."+11',}},
        ring1="Prolix Ring",
		ring2="Lebeche Ring",
        back="Perimede Cape",
        waist="Witful Belt",
		legs="Psycloth Lappas",
        feet={ name="Merlinic Crackows", augments={'Mag. Acc.+10','"Fast Cast"+5','INT+1','"Mag.Atk.Bns."+7',}}}
	-- Healing Magic --	
	sets.precast.Cure = set_combine(sets.precast.FC, {main="Serenity",body="Heka's Kalasiris", hands="Vanya Cuffs"})
	-- Enhancing Magic --
	sets.precast.Enhancing = set_combine(sets.precast.FC, {})
	sets.precast['Stoneskin'] = set_combine(sets.precast.FC, {})
	-- Elemental Magic --
	sets.precast.Elemental = set_combine(sets.precast.FC, {})
	sets.precast['Impact'] = set_combine(sets.precast.FC, { -- Make sure to leave the head empty --
        head=empty,
        body="Twilight Cloak"})	
	-- Bloodpacts --	
    sets.precast.BP = {
	    main="Espiritus",
		ammo="Sancus Sachet",
		head="Psycloth Tiara",
	    ear1="Andoaa Earring",
		ear2="Evans Earring",
		body="Apogee Dalmatica",
		hands="Inyanga Dastanas +1",
		ring1="Evoker's Ring",
		ring2="Globidonta Ring",
		back="Samanisi Cape",
		waist="Lucidity Sash",
		legs="Glyphic Spats +1"}
	-- Job Abilities --
	sets.JA = {}
    sets.JA['Astral Flow'] = {}
    sets.JA['Mana Cede'] = {}
    sets.JA['Elemental Siphon'] = {
        main="Espiritus",
		head="Psycloth Tiara",		
        neck="Incanter's Torque",
        ear1="Andoaa Earring",
		body="Ahnur Robe",
		hands="Inyanga Dastanas +1",
		ring1="Evoker's Ring",
		ring2="Globidonta Ring",
		waist="Lucidity Sash",
		legs="Ngen Seraweels"}
	-- Weaponskills --	
	sets.WS = {} -- Your base set for ws's --
    sets.WS['Myrkr'] = set_combine(sets.WS, {})
	sets.WS['Shattersoul'] = set_combine(sets.WS, {})
	sets.WS['Garland of Bliss'] = set_combine(sets.WS, {})
	sets.WS['Gate of Tartarus'] = set_combine(sets.WS, {})
---- Midcast ----	
	sets.midcast = {}
	-- Base set --
	sets.midcast.Recast = {
	    main={ name="Grioavolr", augments={'"Fast Cast"+5','MND+14','"Mag.Atk.Bns."+2','Magic Damage +7',}},
		sub="Clerisy Strap +1",
        head="Amalric Coif",
        neck="Voltsurge Torque",
        ear1="Loquac. Earring",
        ear2="Enchntr. Earring +1",
        body={ name="Merlinic Jubbah", augments={'"Fast Cast"+6',}},
        hands={ name="Merlinic Dastanas", augments={'"Fast Cast"+6','DEX+10','Accuracy+19 Attack+19','Mag. Acc.+11 "Mag.Atk.Bns."+11',}},
        ring1="Prolix Ring",
		ring2="Lebeche Ring",
        back="Perimede Cape",
        waist="Witful Belt",
		legs="Psycloth Lappas",
        feet={ name="Merlinic Crackows", augments={'Mag. Acc.+10','"Fast Cast"+5','INT+1','"Mag.Atk.Bns."+7',}}}	
	-- Healing Magic --
    sets.midcast.Cure = {
        main="Gada",
        sub="Sors Shield",
        head="Vanya Hood",
        neck="Incanter's Torque",
        ear1="Beatific Earring",
        ear2="Healing Earring",
        body="Vanya Robe",
        hands="Vanya Cuffs",
        ring1="Haoma's Ring",
        ring2="Janniston Ring",
        back="Tempered Cape +1",
        waist="Luminary Sash",
        legs="Vanya Slops",
        feet="Vanya Clogs"}
	sets.midcast.Cure.Weather = set_combine(sets.midcast.Cure, {
        main="Serenity",
		sub="Achaq Grip",
        hands="Telchine Gloves",
        back="Twilight Cape",
        waist="Hachirin-no-Obi"})	
	sets.midcast.Cure.WeaponLock = set_combine(sets.midcast.Cure, {
        body="Heka's Kalasiris",
        hands="Telchine Gloves",
        ring1="Lebeche Ring"})
    sets.midcast['Cursna'] = set_combine(sets.midcast.Recast, {
	    neck="Debilis Medallion",
		ring1="Haoma's Ring",
		ring2="Haoma's Ring",
		feet="Gende. Galosh. +1"})
	-- Enhancing Magic --
	sets.midcast.Enhancing = set_combine(sets.midcast.Recast, { -- For haste/refresh/regen/Reraise --
	    main="Oranyan",
		head="Telchine Cap",
		body="Telchine Chasuble",
		hands="Telchine Gloves",
		legs="Telchine Braconi",
		feet="Telchine Pigaches"})
	sets.midcast['Stoneskin'] = set_combine(sets.midcast.Enhancing, {})
	sets.midcast['Aquaveil'] = set_combine(sets.midcast.Enhancing, {head="Amalric Hood"})
	-- Enfeebling Magic --
	sets.midcast.Enfeebling = {
	    main={ name="Grioavolr", augments={'"Conserve MP"+1','INT+2','Mag. Acc.+30',}},
        sub="Clerisy Strap +1",
        head="Amalric Hood",
		neck="Incanter's Torque",
		ear1="Gwati Earring",
		ear2="Digni. Earring",
		body={ name="Merlinic Jubbah", augments={'Mag. Acc.+19 "Mag.Atk.Bns."+19','Mag. Acc.+15',}},
		hands="Inyan. Dastanas +1",
		ring1="Stikini Ring",
		ring2="Stikini Ring",
		waist="Luminary Sash",
		legs="Psycloth Lappas",
		feet="Skaoi Boots"}
	-- Dark Magic --
	sets.midcast.Dark = set_combine(sets.midcast.Recast, { -- For aspir/drain --
	    neck="Incanter's Torque",
		body="Vanya Robe",
		ring1="Stikini Ring",
		ring2="Stikini Ring",
		back="Perimede Cape",
		legs="Merlinic Shalwar",
		feet="Merlinic Crackows"})
	sets.midcast['Stun'] = set_combine(sets.midcast.Recast, {}) 
	-- Elemental Magic --
	sets.midcast.Elemental = {
        main={ name="Grioavolr", augments={'"Conserve MP"+3','MP+96','Mag. Acc.+19','"Mag.Atk.Bns."+30',}},
        sub="Niobid Strap",
        head="Merlinic Hood",
        neck="Mizu. Kubikazari",
        ear1="Friomisi Earring",
        ear2="Static Earring",
        body={ name="Merlinic Jubbah", augments={'"Mag.Atk.Bns."+29','Magic burst mdg.+11%','INT+7',}},
        hands={ name="Amalric Gages", augments={'INT+10','Mag. Acc.+15','"Mag.Atk.Bns."+15',}},	
        ring1="Mujin Band",
        ring2="Stikini Ring",
    	back="Seshaw Cape +1",
        waist="Refoccilation Cape",
        legs="Merlinic Shalwar",
        feet={ name="Merlinic Crackows", augments={'"Mag.Atk.Bns."+27','Magic burst mdg.+9%',}}}	
	sets.midcast['Impact'] = set_combine(sets.midcast.Elemental, {  -- Make sure to leave the head empty --
	    head=empty,
	    body="Twilight Cloak"})			
    -- Bloodpacts --	
    sets.midcast.BP = {}
    sets.midcast.BP.Buff = {
        main="Espiritus",
		head="Psycloth Tiara",		
        neck="Incanter's Torque",
        ear1="Andoaa Earring",
		body="Ahnur Robe",
		hands="Inyanga Dastanas +1",
		ring1="Evoker's Ring",
		ring2="Globidonta Ring",
		waist="Lucidity Sash",
		legs="Ngen Seraweels"}	
	sets.midcast.BP.Debuff = {
	    main={ name="Grioavolr", augments={'Blood Pact Dmg.+7','Pet: VIT+8','Pet: Mag. Acc.+14','Pet: "Mag.Atk.Bns."+13',}},
		head="Tali'ah Turban +1",
		neck="Deino Collar",
		ear1="Andoaa Earring",
		body="Ahnur Robe",
		hands="Tali'ah Gages +1",
		ring1="Globidonta Ring",
		ring2="Evoker's Ring",
		back="Campestres's Cape",
		waist="Incarnation Sash",
		legs="Tali'ah Seraweels +1",
		feet="Tali'ah Crackows +1"}	
    sets.midcast.BP.Magic = {
	    main={ name="Grioavolr", augments={'Blood Pact Dmg.+7','Pet: VIT+8','Pet: Mag. Acc.+14','Pet: "Mag.Atk.Bns."+13',}},
		head="Tali'ah Turban +1",
		neck="Deino Collar",
		ear1="Andoaa Earring",
		ear2="Gifted Earring",
		body="Apogee Dalmatica",
		hands={ name="Merlinic Dastanas", augments={'Pet: Accuracy+21 Pet: Rng. Acc.+21','Blood Pact Dmg.+10','Pet: Mag. Acc.+2','Pet: "Mag.Atk.Bns."+9',}},
		ring1="Varar Ring",
		ring2="Speaker's Ring",
		back="Campestres's Cape",
		waist="Incarnation Sash",
		legs="Apogee Slacks",
		feet="Apogee Pumps"}	
    sets.midcast.BP.Physical = set_combine(sets.midcast.BP.Magic, {	
        neck="Empath Necklace"})
	sets.midcast.BP.Hybrid = set_combine(sets.midcast.BP.Magic, {
        neck="Empath Necklace"})
---- Aftercast ----		
	sets.aftercast = {}
	-- Idles for when no pet is out --
    sets.aftercast.Idle = { -- Your movement speed goes here, mix of PDT/Refresh --
	    main="Terra's Staff",
		sub="Oneiros Grip",
		ammo="Staunch Tathlum",
		head="Befouled Crown",
		neck="Loricate Torque +1",
		ear1="Genmei Earring",
        ear2="Etiolation Earring",		
		body="Apogee Dalmatica",
		hands={ name="Merlinic Dastanas", augments={'Pet: Mag. Acc.+24','Pet: Accuracy+5 Pet: Rng. Acc.+5','"Refresh"+2','Accuracy+11 Attack+11',}},
		ring1="Defending Ring",
		ring2="Patricius Ring",
		back="Umbra Cape",
		waist="Slipor Sash",
		legs="Assid. Pants +1",
		feet="Herald's Gaiters"}
    sets.aftercast.Refresh = set_combine(sets.aftercast.Idle, { -- Refresh gears goes here --	
	    main="Terra's Staff",
		sub="Oneiros Grip",
		ammo="Staunch Tathlum",
		head="Befouled Crown",
		neck="Loricate Torque +1",
		ear1="Moonshade Earring",
        ear2="Etiolation Earring",		
		body="Apogee Dalmatica",
		hands={ name="Merlinic Dastanas", augments={'Pet: Mag. Acc.+24','Pet: Accuracy+5 Pet: Rng. Acc.+5','"Refresh"+2','Accuracy+11 Attack+11',}},
		ring1="Defending Ring",
		ring2="Patricius Ring",
		back="Umbra Cape",
		waist="Slipor Sash",
		legs="Assid. Pants +1",
		feet="Serpentes Sabots"})
	sets.aftercast.Town = set_combine(sets.aftercast.Idle, {})	-- For town --
	sets.Resting = set_combine(sets.aftercast.Refresh, {})		
    -- Idle for when pet is out --		
    sets.aftercast.Avatar = { -- 16mp perp cost/tick --
	    main="Gridarvor",
		sub="Oneiros Grip",
		ammo="Sancus Sachet",
		head="Befouled Crown",
		neck="Loricate Torque +1",
		ear1="Moonshade Earring",
        ear2="Etiolation Earring",		
		body="Apogee Dalmatica",
		hands={ name="Merlinic Dastanas", augments={'Pet: Mag. Acc.+24','Pet: Accuracy+5 Pet: Rng. Acc.+5','"Refresh"+2','Accuracy+11 Attack+11',}},
		ring1="Defending Ring",
		ring2="Patricius Ring",
		back="Campestres's Cape",
		waist="Slipor Sash",
		legs="Assid. Pants +1",
		feet="Apogee Pumps"}
	sets.aftercast.Avatar.Favor	= set_combine(sets.aftercast.Avatar, { -- 19mp perp cost/tock when you have avatar's Favor on --
	    main="Gridarvor",
		sub="Oneiros Grip",
		ammo="Sancus Sachet",
		head="Befouled Crown",
		neck="Loricate Torque +1",
		ear1="Moonshade Earring",
        ear2="Evans Earring",		
		body="Apogee Dalmatica",
		hands={ name="Merlinic Dastanas", augments={'Pet: Mag. Acc.+24','Pet: Accuracy+5 Pet: Rng. Acc.+5','"Refresh"+2','Accuracy+11 Attack+11',}},
		ring1="Defending Ring",
		ring2="Evoker's Ring",
		back="Campestres's Cape",
		waist="Slipor Sash",
		legs="Assid. Pants +1",
		feet="Apogee Pumps"})	
	-- Idle for the TP/PDT toggle from hitting CTRL + F9 --
	sets.aftercast.Avatar.TP = set_combine(sets.aftercast.Avatar, { -- Pet: "melee" gears for DD/TP gain purposes --
	    main="Gridarvor",
		sub="Oneiros Grip",
		ammo="Sancus Sachet",
		head="Tali'ah Turban +1",
		neck="Empath Necklace",
		ear1="Moonshade Earring",
        ear2="Evans Earring",		
		body="Apogee Dalmatica",
		hands="Tali'ah Gages +1",
		ring1="Varar Ring",
		ring2="Evoker's Ring",
		back="Campestres's Cape",
		waist="Incarnation Sash",
		legs="Assid. Pants +1",
		feet="Apogee Pumps"})		
    sets.aftercast.Avatar.PDT = set_combine(sets.aftercast.Avatar, {}) -- Pet: PDT/Regen for tanking purposes --
---- Melee ----	
	sets.engaged = { -- Just melee gear for YOU --	
		head="Tali'ah Turban +1",
		neck="Lissome Necklace",
		ear1="Cessance Earring",
        ear2="Telos Earring",		
		body="Apogee Dalmatica",
		hands="Tali'ah Gages +1",
		ring1="Hetairoi Ring",
		ring2="Rajas Ring",
		back="Campestres's Cape",
		waist="Olseni Belt",
		legs="Tali'ah Seraweels +1",
		feet="Tali'ah Crackows +1"}	
	sets.engaged.Avatar = { 		-- For when YOU are meleeing but pet is also out --
		head="Tali'ah Turban +1",
		neck="Lissome Necklace",
		ear1="Telos Earring",
        ear2="Evans Earring",		
		body="Apogee Dalmatica",
		hands="Tali'ah Gages +1",
		ring1="Hetairoi Ring",
		ring2="Evoker's Ring",
		back="Campestres's Cape",
		waist="Olseni Belt",
		legs="Assid. Pants +1",
		feet="Apogee Pumps"}
end	
---- .::Pretarget Functions::. ---->
function pretarget(spell,action)
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
---- .::Player & Pet Precast Functions::. ---->
function precast(spell)	
    if spell.action_type == 'Magic' then 
		-- Healing Magic --
        if string.find(spell.english,'Cure') or string.find(spell.english,'Cura') then
	        equip(sets.precast.Cure)	
		-- Enhancing Magic --	
        elseif spell.skill == 'Enhancing Magic' then
  	        equip(sets.precast.Enhancing) 
		-- Elemental Magic --	
		elseif spell.skill == 'Elemental Magic' then
		    if spell.english == 'Impact' then
			    equip(sets.precast[spell.english])
			else	
         	    equip(sets.precast.Elemental)
			end				
        -- Everything that have a specific name set --	
		elseif sets.precast[spell.english] then
	        equip(sets.precast[spell.english])				
		-- Everything else that doesn't have a specific set --	
		else
            equip(sets.precast.FC)	
		end	
    -- Bloodpacts --
    elseif string.find(spell.type,'BloodPact') then
        equip(sets.precast.BP)			
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
---- .::Player Midcast Functions::. ---->
function midcast(spell)
    -- For no gear change (spell related) during a bloodpact --
    if pet_midaction() then
        return
    elseif spell.action_type == 'Magic' then  
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
	    elseif string.find(spell.english, 'Haste') or string.find(spell.english, 'storm') or string.find(spell.english, 'Regen') or string.find(spell.english, 'Flurry') then
		    equip(sets.midcast.Enhancing)
        elseif string.find(spell.english, 'Refresh') then
		    equip(sets.midcast.Enhancing, {head=gear.Refresh_Head})	
		-- Enfeebling Magic --
		elseif spell.skill == 'Enfeebling Magic' then
            equip(sets.midcast.Enfeebling)
		-- Dark Magic --	
	    elseif string.find(spell.english, 'Aspir') or string.find(spell.english, 'Drain') then
		    equip(sets.midcast.Dark)
		-- Elemental Magic --	
        elseif spell.skill == 'Elemental Magic' then
		    if spell.english == 'Impact' then
			    equip(sets.midcast[spell.english])
            else				
                equip(sets.midcast.Elemental)
			end	
        -- Everything that have a specific name set --	
		elseif sets.midcast[spell.english] then
	        equip(sets.midcast[spell.english])				
		-- Everything else that doesn't have a specific set --	
        else
            equip(sets.midcast.Recast)		
        end
	end
end
---- .::Pet Midcast Functions::. ---->
function pet_midcast(spell)
    -- Bloodpacts --
    if string.find(spell.type,'BloodPact') then
        if Buff:contains(spell.english) then
            equip(sets.midcast.BP.Buff)
	    elseif	Debuff:contains(spell.english) then
            equip(sets.midcast.BP.Debuff)
	    elseif	Magic:contains(spell.english) then
            equip(sets.midcast.BP.Magic)
	    elseif	Physical:contains(spell.english) then
            equip(sets.midcast.BP.Physical)		
	    elseif	Hybrid:contains(spell.english) then
            equip(sets.midcast.BP.Hybrid)		
	    end	
	end
end	 
---- .::Player Aftercast Functions::. ---->
function aftercast(spell,action)
    if pet_midaction() then
        return
    elseif not spell.type:startswith('BloodPact') then
        status_change(player.status)
    end
end	
---- .::Pet Aftercast Functions::. ---->
function pet_aftercast(spell,action)
	status_change(player.status)
end	
---- .::Player Status Changes Functions::. ---->
function status_change(new,tab,old)
    -- Idle --
    if new == 'Idle' then
	    if Town:contains(world.zone) then
            equip(sets.aftercast.Town)	
	    elseif pet.isvalid then
	        if PetArray[PetIndex] == 'TP' then
			    if pet.name == 'Carbuncle' then 
	                equip(sets.aftercast.Avatar.TP, {hands=gear.Carbuncle_Mitts})
				else
	                equip(sets.aftercast.Avatar.TP)
                end					
	        elseif PetArray[PetIndex] == 'PDT' then
			    if pet.name == 'Carbuncle' then 
	                equip(sets.aftercast.Avatar.PDT, {hands=gear.Carbuncle_Mitts})
				else
	                equip(sets.aftercast.Avatar.PDT)
                end	
            elseif buffactive[431] then
			    if pet.name == 'Carbuncle' then 
	                equip(sets.aftercast.Avatar.Favor, {hands=gear.Carbuncle_Mitts})
				else
	                equip(sets.aftercast.Avatar.Favor)
                end	
			elseif pet.name == 'Carbuncle' then 
	            equip(sets.aftercast.Avatar, {hands=gear.Carbuncle_Mitts})				
            else
	            equip(sets.aftercast.Avatar)	
			end			
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
	    if pet.isvalid then
			if pet.name == 'Carbuncle' then 
	            equip(sets.engaged.Avatar, {hands=gear.Carbuncle_Mitts})
            else				
                equip(sets.engaged.Avatar)
            end				
        else
            equip(sets.engaged)
        end			
	end	
end	
---- .::Pet Status Changes Functions::. ---->
function pet_change(pet,gain_or_loss)
    status_change(player.status)
end
---- .::Self Commands Functions::. ---->
function self_command(command)
    status_change(player.status)
	-- Auto elemental Siphon Handlings --
    if command == 'C1' then
        if world.day_element == "Fire" or world.day_element == "Ice" and world.weather_element == "Fire" then
	        send_command('input /ma "Fire Spirit" <me>;wait 4;input /ja "Elemental Siphon" <me>;wait 1;release')
	    elseif world.day_element == "Ice" or world.day_element == "Air" and world.weather_element == "Ice" then
	        send_command('input /ma "Ice Spirit" <me>;wait 4;input /ja "Elemental Siphon" <me>;wait 1;release')
        elseif world.day_element == "Wind" or world.day_element == "Earth" and world.weather_element == "Wind" then
	        send_command('input /ma "Air Spirit" <me>;wait 4;input /ja "Elemental Siphon" <me>;wait 1;release')
	    elseif world.day_element == "Earth" or world.day_element == "Lightning" and world.weather_element == "Earth" then
	        send_command('input /ma "Earth Spirit" <me>;wait 4;input /ja "Elemental Siphon" <me>;wait 1;release')
	    elseif world.day_element == "Lightning" or world.day_element == "Water" and world.weather_element == "Thunder" then
	        send_command('input /ma "Thunder Spirit" <me>;wait 4;input /ja "Elemental Siphon" <me>;wait 1;release')	
        elseif world.day_element == "Water" or world.day_element == "Fire" and world.weather_element == "Water" then
	        send_command('input /ma "Water Spirit" <me>;wait 4;input /ja "Elemental Siphon" <me>;wait 1;release')	
        elseif world.day_element == "Light" or world.weather_element == "Light" then
	        send_command('input /ma "Light Spirit" <me>;wait 4;input /ja "Elemental Siphon" <me>;wait 1;release')	
        elseif world.day_element == "Dark" or world.weather_element == "Dark" then
	        send_command('input /ma "Dark Spirit" <me>;wait 4;input /ja "Elemental Siphon" <me>;wait 1;release')	
	    end
	-- Pet mode --	
    elseif command == 'C9' then 
        PetIndex = (PetIndex % #PetArray) + 1
        add_to_chat(158,'Pet mode Set: ' .. PetArray[PetIndex])	
	-- Weapon Lock --	
    elseif command == 'C10' then 
        if WeaponLock == 'ON' then
            WeaponLock = 'OFF'
            add_to_chat(123,'Weapon Lock Set: [OFF]')
            enable('main', 'sub' ,'range')				
        else
            WeaponLock = 'ON'
            add_to_chat(158,'Weapon Lock Set: [ON]')
            disable('main', 'sub' ,'range')				
        end	
	-- Capacity --	
    elseif command == 'C11' then 
        if Capacity == 'ON' then
            Capacity = 'OFF'
			enable{'back'}
            add_to_chat(123,'Capacity Set: [OFF]')
        else
            Capacity = 'ON'
			equip{back=gear.Capacity_Cape}
			disable{'back'}
            add_to_chat(158,'Capacity Set: [ON]')
        end
	----! Special BP command for easier macro !-----
	-- Cure Bloodpact --
	elseif command == "CBP" then
	    if pet.name == "Carbuncle" then
		    send_command('input /ja "healing ruby" <t>')
		end
    -- Curaga Bloodpacts --
    elseif command == "CgaBP" then
        if pet.name == "Carbuncle" then
            send_command('input /ja "Healing Ruby II" <me>')
        elseif pet.name == "Garuda" then
            send_command('input /ja "Whispering Wind" <me>')	
        elseif pet.name == "Leviathan" then
            send_command('input /ja "Spring Water" <me>')
		end
    -- Offense Bloopacts --
    elseif command == "OffBP" then
        if pet.name == "Carbuncle" then
            send_command('input /ja "Glittering Ruby" <me>')
		elseif pet.name == "Ifrit" then
            send_command('input /ja "Crimson Howl" <me>')					
        elseif pet.name == "Garuda" then
            send_command('input /ja "Hastega II" <me>')	
        elseif pet.name == "Ramuh" then
            send_command('input /ja "Rolling Thunder" <me>')
        elseif pet.name == "Fenrir" then
            send_command('input /ja "Ecliptic Growl" <me>')
		end
    -- Defense Bloodpacts --
    elseif command == "DefBP" then
        if pet.name == "Carbuncle" then
            send_command('input /ja "Shining Ruby" <me>')
		elseif pet.name == "Shiva" then
            send_command('input /ja "Frost Armor" <me>')					
        elseif pet.name == "Garuda" then
            send_command('input /ja "Aerial Armor" <me>')
        elseif pet.name == "Titan" then
            send_command('input /ja "Earthen Ward" <me>')			
        elseif pet.name == "Ramuh" then
            send_command('input /ja "Lightning Armor" <me>')
        elseif pet.name == "Fenrir" then
            send_command('input /ja "Ecliptic Howl" <t>')
        elseif pet.name == "Diabolos" then
            send_command('input /ja "Noctoshield" <me>')
        elseif pet.name == "Cait Sith" then
            send_command('input /ja "Reraise II" <t>')			
		end	
    -- Special Bloodpacts --
    elseif command == "SpeBP" then
        if pet.name == "Carbuncle" then
            send_command('input /ja "Soothing Ruby" <me>')		    
        elseif pet.name == "Ifrit" then
            send_command('input /ja "Inferno Howl" <me>')					
        elseif pet.name == "Garuda" then
            send_command('input /ja "Fleet Wind" <me>')
        elseif pet.name == "Titan" then
            send_command('input /ja "Earthen Armor" <me>')			
        elseif pet.name == "Ramuh" then
            send_command('input /ja "Lightning Armor" <me>')
        elseif pet.name == "Fenrir" then
            send_command('input /ja "Heavenward" <t>')
        elseif pet.name == "Diabolos" then
            send_command('input /ja "Dream Shroud" <me>')
        elseif pet.name == "Cait Sith" then
            send_command('input /ja "Raise II" <t>')			
		end	
    -- Debuffs Bloodpacts --
    elseif command == "DebBP" then
        if pet.name == "Shiva" then
            send_command('input /ja "Diamond Storm" <t>')		    		
        elseif pet.name == "Ramuh" then
            send_command('input /ja "Shock Squall" <t>')
        elseif pet.name == "Leviathan" then
            send_command('input /ja "Slowga" <t>')			
        elseif pet.name == "Fenrir" then
            send_command('input /ja "Lunar Cry" <t>')
        elseif pet.name == "Diabolos" then
            send_command('input /ja "Somnolence" <t>')
        elseif pet.name == "Cait Sith" then
            send_command('input /ja "Eerie eye" <t>')			
		end	
    -- Sleepga Bloodpacts --
    elseif command == "SleepBP" then
        if pet.name == "Shiva" then
            send_command('input /ja "Sleepga" <t>')		    		
        elseif pet.name == "Diabolos" then
            send_command('input /ja "Nightmare" <t>')
        elseif pet.name == "Cait Sith" then
            send_command('input /ja "Mewing Lullaby" <t>')			
		end	
    -- Level 10 Nukes Bloodpacts --
    elseif command == "10BPR" then
        if pet.name == "Ifrit" then
            send_command('input /ja "Fire II" <t>')
		elseif pet.name == "Shiva" then
		    send_command('input /ja "Blizzard II" <t>')
        elseif pet.name == "Garuda" then
            send_command('input /ja "Aero II" <t>')
        elseif pet.name == "Titan" then
            send_command('input /ja "Stone II" <t>')			
        elseif pet.name == "Ramuh" then
            send_command('input /ja "Thunder II" <t>')
        elseif pet.name == "Leviathan" then
            send_command('input /ja "Water II" <t>')		
		end		
    -- Level 60 Nukes Bloodpacts --
    elseif command == "60BPR" then
        if pet.name == "Ifrit" then
            send_command('input /ja "Fire IV" <t>')
		elseif pet.name == "Shiva" then
		    send_command('input /ja "Blizzard IV" <t>')
        elseif pet.name == "Garuda" then
            send_command('input /ja "Aero IV" <t>')
        elseif pet.name == "Titan" then
            send_command('input /ja "Stone IV" <t>')			
        elseif pet.name == "Ramuh" then
            send_command('input /ja "Thunder IV" <t>')
        elseif pet.name == "Leviathan" then
            send_command('input /ja "Water IV" <t>')		
		end	
   -- Level 70 Bloodpacts --
    elseif command == "70BPR" then
	    if pet.name == "Carbuncle" then
		    send_command('input /ja "Meteorite" <t>')
        elseif pet.name == "Ifrit" then
            send_command('input /ja "Flaming Crush" <t>')
		elseif pet.name == "Shiva" then
		    send_command('input /ja "Rush" <t>')
        elseif pet.name == "Garuda" then
            send_command('input /ja "Predator Claws" <t>')
        elseif pet.name == "Titan" then
            send_command('input /ja "Mountain Buster" <t>')			
        elseif pet.name == "Ramuh" then
            send_command('input /ja "Chaotic Strike" <t>')
        elseif pet.name == "Leviathan" then
            send_command('input /ja "Spinning Dive" <t>')	
        elseif pet.name == "Fenrir" then
            send_command('input /ja "Ecliptic Bite" <t>')
        elseif pet.name == "Diabolos" then
            send_command('input /ja "Nether Blast" <t>')	
        elseif pet.name == "Cait Sit" then
            send_command('input /ja "Regal Scratch" <t>')			
		end	
   -- Level 75 Merit Bloodpacts --
    elseif command == "75BPR" then
        if pet.name == "Carbuncle" then
            send_command('input /ja "Holy Mist" <t>')	
        elseif pet.name == "Ifrit" then
            send_command('input /ja "Meteor Strike" <t>')
		elseif pet.name == "Shiva" then
		    send_command('input /ja "Heavenly Strike" <t>')
        elseif pet.name == "Garuda" then
            send_command('input /ja "Wind Blade" <t>')
        elseif pet.name == "Titan" then
            send_command('input /ja "Geocrush" <t>')			
        elseif pet.name == "Ramuh" then
            send_command('input /ja "Thunderstorm" <t>')
        elseif pet.name == "Leviathan" then
            send_command('input /ja "Grand Fall" <t>')	
        elseif pet.name == "Fenrir" then
            send_command('input /ja "Lunar Bay" <t>')
        elseif pet.name == "Diabolos" then
            send_command('input /ja "Night Terror" <t>')	
        elseif pet.name == "Cait Sit" then
            send_command('input /ja "Level ? Holy" <t>')			
		end	
   -- level 99 Bloodpacts --
    elseif command == "99BPR" then
        if pet.name == "Ifrit" then
            send_command('input /ja "Conflag Strike" <t>')
        elseif pet.name == "Titan" then
            send_command('input /ja "Crag Throw" <t>')			
        elseif pet.name == "Ramuh" then
            send_command('input /ja "Volt Strike" <t>')
        elseif pet.name == "Cait Sith" then
            send_command('input /ja "Regal Gash" <t>')
        elseif pet.name == "Diabolos" then
            send_command('input /ja "Blindside" <t>')				
		end	
   -- 2hr Bloodpacts --
    elseif command == "SP" then
        if pet.name == "Carbuncle" then
            send_command('input /ja "Searing Light" <t>')	
        elseif pet.name == "Ifrit" then
            send_command('input /ja "Inferno" <t>')
		elseif pet.name == "Shiva" then
		    send_command('input /ja "Diamond Dust" <t>')
        elseif pet.name == "Garuda" then
            send_command('input /ja "Aerial Blast" <t>')
        elseif pet.name == "Titan" then
            send_command('input /ja "Earthen Fury" <t>')			
        elseif pet.name == "Ramuh" then
            send_command('input /ja "Judgment Bolt" <t>')
        elseif pet.name == "Leviathan" then
            send_command('input /ja "Tidal Wave" <t>')	
        elseif pet.name == "Fenrir" then
            send_command('input /ja "Howling Moon" <t>')
        elseif pet.name == "Diabolos" then
            send_command('input /ja "Ruinous Omen" <t>')				
		end
	end	        	
end	
 -- Automatically changes Idle gears if you zone in or out of town --
windower.register_event('zone change', function()
	if Town:contains(world.zone) then
        status_change(player.status)	
        equip(sets.aftercast.Town)
    else
        equip(sets.aftercast.Idle)
    end	
end)
-- Will make gears change the seconds you use avatar Favor --
function buff_change(buff,gain)
    if pet_midaction() or midaction() then
        return
	else	
        status_change(player.status)
    end		
end