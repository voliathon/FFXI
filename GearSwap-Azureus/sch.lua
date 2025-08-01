              -- ,                                                    
            -- /'/                                                    
          -- /' /                                                     
       -- ,/'  /   ____             ____     ____              ____   
      -- /`--,/   '  _/'/'    /   )'    )--/'    )  /'    /  /'    )--
    -- /'    /    _/' /'    /'  /'       /(___,/' /'    /'  '---,     
-- (,/'     (_,_/'__,(___,/(__/'        (________(___,/(__(___,/      
           -- _                                                       
         -- /' `\              /'                /'                   
       -- /'   ._)           /'                /'                     
      -- (____    ____     /'__     ____     /' ____      ____        
           -- ) /'    )--/'    )  /'    )--/' /'    )   )'    )--     
         -- /'/'       /'    /' /'    /' /' /'    /'  /'              
-- (_____,/' (___,/  /'    /(__(___,/'  (__(___,/(__/'                
                                                                   
                                                                   
                                                                   
-- Created by Voliathon
-- Level 1

    -- Liquefaction: Stone > Fire, or Thunder > Fire.
    -- Scission: Fire > Stone, or Aero > Stone.
    -- Reverberation: Stone > Water, or Luminohelix > Water.
    -- Detonation: Stone > Aero, or Thunder > Wind.
    -- Induration: Water > Blizzard.
    -- Impaction: Water > Thunder, or Blizzard > Thunder.
    -- Transfixion: Noctohelix > Luminohelix.
    -- Compression: Blizzard > Noctohelix.

-- Level 2

    -- Fragmentation: Blizzard > Water
    -- Fusion: Fire > Thunder
    -- Gravitation: Aero > Noctohelix
    -- Distortion: Luminohelix > Stone

-- How it looks in a Macro

    -- Here is an example of what an Immanence macro should look like:

        -- /ja “Immanence” <me> <wait1>
        -- /ma “Fire” <t> <wait5>
        -- /ja “Immanence” <me> <wait1>
        -- /ma “Thunder” <t>

    -- Using a standard macro, this leaves 2 lines open for announcing "Opening" and "Closing".
    -- In cases when opening with a Helix, set the wait period to 7 seconds.

function get_sets()
	-- Set macro book/set --
    send_command('input /macro book 8;wait .1;input /macro set 1')
	
	bonus = 0
	
	-- Binds for switching boomstick modes
    send_command('bind !f8 gs c toggle boomstick set')
	send_command('bind ^f8 gs c reverse boomstick set')
	
	-- Toggle fight sets button, change if you want; currently ALT+F9 toggles forward, CTRL+F9 toggles backwards
    send_command('bind !f9 gs c toggle fight set')
	send_command('bind ^f9 gs c reverse fight set')
	
	-- Toggle Burst Mode
	send_command('bind ^f10 gs c C10')
	-- Default Disabled Burst unless set with F10
	Burst = 'Disabled'	
	
    -- Job Abilities for Scholar --
    sets.Immanence = {hands="Arbatel Bracers +3"}
    sets.Celerity = {feet="Pedagogy Loafers +3"}
    sets.Alacrity = {feet="Pedagogy Loafers +3"}
    sets.Stormsurge = {feet={ name="Peda. Loafers +3", augments={'Enhances "Stormsurge" effect'}},}

    -- Fast Cast for Scholar --
    sets.FastCast = {
		ammo="Pemphredo Tathlum",
		head="Amalric coif +1",
		body="Zendik Robe",
		hands={ name="Gende. Gages +1", augments={'Phys. dmg. taken -4%','Song spellcasting time -4%'}},
		legs="Pinga Pants",
		feet="Acad. loafers +4",
		neck="Baetyl pendant",
		waist="Embla Sash",
		left_ear="Malignance Earring",
		right_ear="Loquac. Earring",
		left_ring={name="Stikini Ring +1", bag="Wardrobe 3"},
		right_ring={name="Stikini Ring +1", bag="Wardrobe 5"},	
		back="Perimede Cape"
	}
	
	sets.FastCastGrimoire = set_combine(sets.FastCast,  {
		head="Pedagogy Mortarboard +3",
		feet="Acad. loafers +4"
	})

	--Sublimation gear gears called from an equipset in the game...

	sets.Duration = {
		main="Musa",
		sub="Khonsu",
		ammo="Pemphredo Tathlum",
		head={ name="Telchine Cap", augments={'"Conserve MP"+5','Enh. Mag. eff. dur. +10'}},
		body="Pedagogy Gown +3",
		hands={ name="Telchine Gloves", augments={'Accuracy+15','"Conserve MP"+5','Enh. Mag. eff. dur. +10'}},
		legs={ name="Telchine Braconi", augments={'Accuracy+15 Attack+15','"Conserve MP"+5','Enh. Mag. eff. dur. +10'}},
		feet={ name="Telchine Pigaches", augments={'Accuracy+5 Attack+5','"Conserve MP"+5','Enh. Mag. eff. dur. +10'}},
		neck="Incanter's Torque",
		waist="Embla Sash",
		left_ear="Mendi. Earring",
		right_ear="Magnetic Earring",
		left_ring={name="Stikini Ring +1", bag="Wardrobe 3"},
		right_ring={name="Stikini Ring +1", bag="Wardrobe 5"}
	}
	
    sets.Klimaform = set_combine(sets.Duration,  {
		feet="Arbatel Loafers +3"
	})
	
	-- Stoneskin
	sets.Stoneskin = set_combine(sets.Duration,  {
		hands="Carapacho Cuffs",
		legs="Doyen Pants",
		neck="Nodens Gorget",
		waist="Siegel Sash",
	})
	
	-- Hitting the Duration set due to longer enhancing duration gear
	sets.Aquaveil = set_combine(sets.Duration,  {
		head={ name="Amalric Coif +1", augments={'INT+12','Mag. Acc.+25','Enmity-6'}},
		hands="Regal Cuffs",
		waist="Emphatikos Rope",
	})
	
    sets.Cure = set_combine(sets.FastCast,  {
	    main="Daybreak",
		ammo="Pemphredo Tathlum",
		head={ name="Kaykaus Mitra", augments={'MP+60','MND+10','Mag. Acc.+15'}},
		body="Vanya robe",
		hands="Pedagogy Bracers +3",
		legs="Pinga Pants",
		feet="Pedagogy Loafers +3",
		neck="Incanter's Torque",
		waist="Luminary sash",
		left_ear="Mendi. Earring",
		right_ear="Magnetic Earring",
		left_ring="Mephitas's ring +1",
		right_ring={name="Stikini Ring +1", bag="Wardrobe 5"},	
		back="Pahtli Cape"
	})

	--Regen Max Duration
	sets.Regen = set_combine(sets.Duration,  {
		main="Musa",
		sub="Khonsu",
		head="Arbatel Bonnet +3",
		hands="Arbatel Bracers +3",
		back={ name="Bookworm's Cape", augments={'INT+2','MND+2','Helix eff. dur. +15','"Regen" potency+10'}}	
	})

  	-- Elemental Magic sets...  When shit needs to die, this is the set to make it happen
	sets.ElementalMagic = {
		ammo="Ghastly Tathlum +1",
		head="Agwu's Cap",
		body="Agwu's robe",
		hands="Agwu's gages",
		legs="Arbatel pants +3",
		feet="Arbatel Loafers +3",
		neck="Argute stole +2",
		waist="Eschan stone",
		left_ear="Malignance Earring",
		right_ear="Arbatel Earring +1",
		left_ring={name="Stikini Ring +1", bag="Wardrobe 3"},
		right_ring="Metamorph Ring +1",	
		back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}}
	}
	
	sets.BurstMagic = set_combine(sets.ElementalMagic,  {
		hands="Arbatel bracers +3",
		left_ring="Mujin Band",
		right_ring="Locus Ring"
	})
	
	sets.Kaustra = {
		ammo="Ghastly Tathlum +1",
	    head="Pixie Hairpin +1", -- Dark magic damage
		body="Agwu's Robe", -- Magic accuracy and damage
		hands="Agwu's Gages", -- Magic accuracy and damage
		legs="Arbatel pants +3", -- Magic accuracy and damage
		feet="Arbatel Loafers +3", -- Magic accuracy and damage
		neck="Argute Stole +2", -- Magic skill and damage
		waist="Null belt",
		left_ear="Malignance Earring",
		right_ear="Halasz Earring",
		left_ring="Mujin Band",
		right_ring="Metamorph Ring +1",	
		back="Null shawl"
	}
	
    sets.DrainAspir = {
		ammo="Pemphredo Tathlum",
		head={ name="Chironic Hat", augments={'DEX+3','"Drain" and "Aspir" potency +5','Weapon skill damage +8%',}},
		body="Arbatel Gown +3",
		hands={ name="Amalric Gages", augments={'INT+10','Elem. magic skill +15','Dark magic skill +15',}},
		legs={ name="Peda. Pants +3", augments={'Enhances "Tabula Rasa" effect',}},
		feet="Agwu's Pigaches",
		neck={ name="Argute Stole +2", augments={'Path: A',}},
		waist="Fucho-no-Obi",
		left_ear="Malignance Earring",
		right_ear={ name="Arbatel Earring +1", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+13','Enmity-3',}},
		left_ring="Excelsis Ring",
		right_ring="Evanescence Ring",
		back="Null shawl"
	}
	
	sets.Cursna = {
		ammo="Pemphredo Tathlum",
		head="Arbatel Bonnet +3",
		body="Arbatel Gown +3",
		hands="Arbatel Bracers +3",
		legs="Arbatel pants +3",
		feet={ name="Vanya Clogs", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
		neck="Malison Medallion",
		waist="Null belt",
		left_ear="Crep. Earring",
		right_ear="Malignance Earring",
		left_ring="Ephedra Ring",
		right_ring="Menelaus's Ring",
		back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}}
	}	
	
    sets.MagicAccuracy = {
		main="Musa",
		sub="Khonsu",
		ammo="Pemphredo Tathlum",
		head="Arbatel Bonnet +3",
		body="Arbatel Gown +3",
		hands="Arbatel Bracers +3",
		legs="Arbatel pants +3",
		feet="Arbatel Loafers +3",
		neck="Null loop",
		waist="Null belt",
		left_ear="Crep. Earring",
		right_ear="Malignance Earring",
		left_ring={name="Stikini Ring +1", bag="Wardrobe 3"},
		right_ring={name="Stikini Ring +1", bag="Wardrobe 5"},	
		back="Null shawl"
	}	
	
	sets.Helix = {
		main="Bunzi's Rod", -- High magic damage and skill
		sub="Culminus Shield", -- Magic accuracy and skill
		ammo="Ghastly Tathlum +1",
		head="Agwu's Cap", -- Magic accuracy and damage
		body="Arbatel gown +3",
		hands="Arbatel Bracers +3",
		legs="Arbatel pants +3",
		feet="Arbatel Loafers +3",
		feet="Arbatel Loafers +3", -- Magic accuracy and damage
		neck="Argute Stole +2", -- Magic skill and damage
		waist="Eschan stone",
		left_ear="Malignance Earring", -- Magic accuracy and damage
		right_ear="Arbatel Earring +1",
		left_ring="Mujin Band",
		right_ring="Locus Ring",
		back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}}
	}


    sets.Enfeebling = set_combine(sets.FastCast,  {
		ammo="Pemphredo Tathlum",
		head="Arbatel Bonnet +3",
		body="Arbatel Gown +3",
		hands="Arbatel Bracers +3",
		legs="Arbatel pants +3",
		feet="Agwu's Pigaches",
		neck={ name="Argute Stole +2", augments={'Path: A',}},
		waist="Null belt",
		left_ear="Crep. Earring",
		right_ear="Malignance Earring",
		left_ring={name="Stikini Ring +1", bag="Wardrobe 3"},
		right_ring={name="Stikini Ring +1", bag="Wardrobe 5"},	
		back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}}
	})


	-- Impact ugh mutha-fucka
    sets.Impact = set_combine(sets.Kaustra,  {  
      body="Twilight Cloak"
	})

	sets.TP = set_combine(sets.PDT,  {
		ammo="Crepuscular Pebble",
		head="Null masque",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck="Null loop",
		waist="Windbuffet Belt +1",
		left_ear="Crep. Earring",
		right_ear="Telos Earring",
		left_ring={name="Chirich Ring +1", bag="Wardrobe 3"},
		right_ring={name="Chirich Ring +1", bag="Wardrobe 4"},
		back="Null shawl"	
	})

	-- PDT Set
    sets.PDT = {
		ammo="Staunch Tathlum +1",
		head="Null masque",
		body="Arbatel Gown +3",
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs="Arbatel pants +3",
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Null loop",
		waist="Null belt",
		left_ear="Infused Earring",
		right_ear="Hearty Earring",
		left_ring={name="Stikini Ring +1", bag="Wardrobe 3"},
		right_ring="Fortified Ring",	
		back="Null shawl"
	}

	-- When I gotta kite shite, I put on my Sandals and shit...
    sets.Kiting = set_combine(sets.PDT,  {
		left_ring="Shneddick ring"
	})

    
	sets.Refresh = set_combine(sets.PDT,  {
		ammo="Staunch Tathlum +1",
		head={ name="Chironic Hat", augments={'AGI+9','CHR+8','"Refresh"+2','Accuracy+3 Attack+3','Mag. Acc.+19 "Mag.Atk.Bns."+19',}},
		body="Arbatel Gown +3",
		hands={ name="Chironic Gloves", augments={'"Fast Cast"+1','Pet: "Mag.Atk.Bns."+10','"Refresh"+2','Accuracy+12 Attack+12',}},
		legs={ name="Merlinic Shalwar", augments={'Accuracy+19','Pet: INT+5','"Refresh"+2',}},
		feet={ name="Chironic Slippers", augments={'Phys. dmg. taken -1%','Pet: Attack+9 Pet: Rng.Atk.+9','"Refresh"+2','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
		neck="Null loop",
		waist="Fucho-no-Obi",
		left_ear="Infused Earring",
		right_ear="Hearty Earring",
		left_ring={name="Stikini Ring +1", bag="Wardrobe 3"},
		right_ring={name="Stikini Ring +1", bag="Wardrobe 5"},	
		back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}}
	})
	
	
    ------------------------------------------------------------------------------------------------------------------
    -- Weaponskill sets
    ------------------------------------------------------------------------------------------------------------------

	-- All Weaponskills for Scholar unless explicitly defined below sets.precast.WS 
	sets.WSD = {
		ammo="Crepuscular Pebble",
		head="Nyame helm",
		body="Nyame Mail",
		hands="Nyame gauntlets",
		legs="Nyame flanchard",
		feet={ name="Chironic Slippers", augments={'Phys. dmg. taken -2%','"Store TP"+6','Weapon skill damage +10%','Accuracy+17 Attack+17',}},
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Ishvara Earring",
		left_ring="Epaminondas's Ring",
		right_ring="Chirich Ring +1",
		back="Null shawl"
	}
	
	sets.Cataclysm = {
		ammo="Pemphredo Tathlum",
		head="Pixie Hairpin +1",
		body="Nyame Mail",
		hands="Nyame gauntlets",
		legs="Nyame flanchard",
		feet={ name="Chironic Slippers", augments={'Phys. dmg. taken -2%','"Store TP"+6','Weapon skill damage +10%','Accuracy+17 Attack+17',}},
		neck={ name="Argute Stole +2", augments={'Path: A',}},
		waist="Orpheus's Sash",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Friomisi Earring",
		left_ring="Epaminondas's Ring",
		right_ring="Hetairoi Ring",
		back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}}	
	}
	
	 --Max MP WS.. equip mp gear noob
	sets.Myrkr = {
		head="Pixie Hairpin +1",
		body="Arbatel Gown +3",
		hands="Regal Cuffs",
		legs={ name="Amalric Slops +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		feet="Skaoi Boots",
		neck="Sanctity necklace",
		waist="Mujin Obi",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Halasz Earring",
		left_ring="Sangoma Ring",
		right_ring="Mephitas's Ring +1",
		back="Pahtli cape"
	} 

	-- fight Sets Toggle--
	sets.fight = {}
	sets.fight.index = {'TP', 'Movement', 'Tank', 'Refresh'}
	fight_ind = 1  	 
	 
	sets.fight.TP = set_combine(sets.TP, {}) 
	sets.fight.Movement = set_combine(sets.Kiting, {})
	sets.fight.Tank = set_combine(sets.PDT, {})
	sets.fight.Refresh = set_combine(sets.Refresh, {})
	 
	--boomstick Sets--
	sets.boomstick = {}
	sets.boomstick.index = {'Musa','DaybreakShield','Bunzi','MarinStaff'}
	boomstick_ind = 1
	
	sets.boomstick.Musa = {
		main="Musa",
		sub="Khonsu"
	}
	sets.boomstick.DaybreakShield = {
		main="Daybreak",
		sub="Ammurapi Shield"
	}
	sets.boomstick.Bunzi = {
		main="Bunzi's rod",
		sub="Ammurapi Shield"
	}	
	sets.boomstick.MarinStaff = {
		main="Marin staff +1",
		sub="Enki strap"
	}	 
	 
end

-- Scholar Job Abilities where equip needs to be used upon activation.
-- Weaponskills
-- Hitting Grimoire equipment as a clean up. Should always be in a form of Light Arts and Dark Arts on Scholar
function precast(spell,abil)
	--if spell.skill == 'Elemental Magic' then
		--equip(sets.ElementalMagic)
		--get_obi(spell)
	--else
	if (spell.type == "WhiteMagic" and (buffactive["Light Arts"] or buffactive["Addendum: White"])) or
        (spell.type == "BlackMagic" and (buffactive["Dark Arts"] or buffactive["Addendum: Black"])) then
			equip(sets.FastCastGrimoire)
			get_obi(spell)
			--send_command('@input /echo yeah we hit this shit in precast.')	
	end 
	
	if spell.name == 'Immanence' then
		equip(sets.Immanence)
	elseif spell.name == 'Penury'  or spell.name == 'Parsimony' then
		equip({legs="Arbatel pants +3"})
	elseif spell.name == 'Celerity' or spell.name == 'Alacrity' or spell.name == 'Stormsurge' then
		equip({feet="Pedagogy loafers +3"})
	elseif spell.name == 'Stun' then
		equip(sets.MagicAccuracy)
	elseif spell.name == "Hexa Strike" or spell.name == "Savage Blade" then
		equip(sets.WSD)
	elseif spell.name == "Rock Crusher" then
		equip(sets.WSD)
	elseif spell.name == "Earth Crusher" then
		equip(sets.WSD)
	elseif spell.name == "Starburst" then
		equip(sets.WSD)
	elseif spell.name == "Sunburst" then
		equip(sets.WSD)
	elseif spell.name == "Shell Crusher" then
		equip(sets.WSD)
	elseif spell.name == "Full Swing" then
		equip(sets.WSD)
	elseif spell.name == "Spirit Taker" then
		equip(sets.WSD)
	elseif spell.name == "Retribution" then
		equip(sets.WSD)
	elseif spell.name == "Omniscience" then
		equip(sets.WSD)
	elseif spell.name == "Cataclysm" then
		equip(sets.Cataclysm)
	elseif spell.name == "Myrkr" then
		equip(sets.Myrkr)
	elseif spell.name == "Shattersoul" then
		equip(sets.WSD)
	end
	
end

function midcast(spell)

	if spell.name == 'Klimaform' then
		equip(sets.Klimaform)
	end
	
	if string.find(spell.english,'storm') then 
		equip(sets.Duration)
	end
	if spell.name == 'Adloquium' or spell.name == 'Embrava' or string.find(spell.english,'Animus') then 
		equip(sets.Duration)
	end

	if string.find(spell.english,'Aspir') or string.find(spell.english,'Drain') then 
		equip(sets.DrainAspir)
	end

	if string.find(spell.english,'Cur') then 
		equip(sets.Cure)
	end
	if spell.name == 'Stoneskin' then
		equip(sets.Stoneskin)
	end
	if string.find(spell.english,'Regen') then 
		equip(sets.Regen)
	end
	if spell.name == 'Aquaveil' then
		equip(sets.Aquaveil)
	end
	if spell.name == 'Cursna' then
		equip(sets.Cursna)
	end
	if spell.name == "Dispel" then
		equip(sets.Enfeebling)
	end
	
	
	if string.find(spell.english,'Kaustra') then
		send_command('@input /echo Bonus in midcast is: '..bonus..'%')	
		equip(sets.Kaustra)
		if bonus > 0 then
			equip({waist = "Hachirin-no-obi"})
		end
	elseif string.find(spell.english,'helix') then 
		send_command('@input /echo Bonus in midcast is: '..bonus..'%')
		equip(sets.Helix)
		if bonus > 0 then
			equip({waist = "Hachirin-no-obi"})
		end
	elseif spell.skill == 'Elemental Magic' then
			send_command('@input /echo Bonus in midcast is: '..bonus..'%')
		if Burst == 'Disabled' then 
			equip(sets.ElementalMagic)
		else
			equip(sets.BurstMagic)
		end
		if bonus > 0 then
			equip({waist = "Hachirin-no-obi"})
		end		
	end
	
	
	if spell.skill == 'Enfeebling Magic' then
		equip(sets.Enfeebling)
	end	
	
	if buffactive["Rapture"] or buffactive["Ebullience"] then
	--send_command('@input /echo Fuck yeah Bonnet is equipped!')
		equip({head="Arbatel Bonnet +3"})
	end
	if buffactive["Perpetuance"] then
	--send_command('@input /echo Fuck yeah Bracers are equipped!')
		equip({hands="Arbatel Bracers +3"})
	end
	
end

--We need to do some thinking and testing for this set...
function aftercast(spell)
	equip_current()
end


--This function should only get kicked off when you're engaging.  
--If I want a manual 'Refresh' set or 'PDT' set I can do that in game with equipsets.  
--But I don't want to fuck myself by ignoring the fight check.
--I'm also deciding not to use a Binding Key to put my in a PDT,Refresh Set.
--I dunno, I'm just against hitting Ctrl+f# all the time for that shit
function equip_current()
	equip(sets.boomstick[sets.boomstick.index[boomstick_ind]]) 
	equip(sets.fight[sets.fight.index[fight_ind]]) 
end


--Function use for Changing the fight Set.  Ctrl+F9 is your meal ticket
--123 is a red color for the text output
--158 is a green color for the text output
function self_command(command)
	if command =='toggle boomstick set' then
		boomstick_ind = boomstick_ind -1
		if boomstick_ind == 0 then boomstick_ind = #sets.boomstick.index end
		send_command('@input /echo <----- Weapon changed to '..sets.boomstick.index[boomstick_ind]..' ----->')
		equip_current()	
	elseif command == 'reverse boomstick set' then
		boomstick_ind = boomstick_ind +1
		if boomstick_ind > #sets.boomstick.index then boomstick_ind = 1 end
		send_command('@input /echo <----- Weapon changed to '..sets.boomstick.index[boomstick_ind]..' ----->')
		equip_current()
	elseif command == 'toggle fight set' then
		fight_ind = fight_ind -1
		if fight_ind == 0 then fight_ind = #sets.fight.index end
		send_command('@input /echo <----- Gear Set changed to '..sets.fight.index[fight_ind]..' ----->')
		equip_current()	
	elseif command == 'reverse fight set' then
		fight_ind = fight_ind +1
		if fight_ind > #sets.fight.index then fight_ind = 1 end
		send_command('@input /echo <----- Gear Set changed to '..sets.fight.index[fight_ind]..' ----->')
		equip_current()
	elseif command == 'C10' then
		if Burst == 'Disabled' then 
			Burst = 'Enabled'
		else
			Burst = 'Disabled'
		end
		send_command('@input /echo <----- Burst Mode changed to '..Burst..' ----->')
	end	   
end


-- Send tell to self if I died --
windower.register_event('status change', function()
	if player.status == 'Dead' then
		send_command('@input /tell <me> We shall live forever!!!  It is time to get back up and try again')
	end
end)


-- 10% bonus for magic of the day
-- 10% bonus for magic matching single weather
-- 20% bonus for magic matching single weather and day
-- 25% bonus for magic matching double weather
-- 35% bonus for magic matching double weather and day
-- Will also gain an equivalent negative bonuses during opposing day/weather 

-- Call this function in precast to see if you have any storm effects.
-- Function to check if the user has a storm effect
function has_storm_effect()
    local storm_effects = {
        "Firestorm", "Hailstorm", "Windstorm", "Sandstorm",
        "Thunderstorm", "Rainstorm", "Aurorastorm", "Voidstorm"
    }

    for _, effect in ipairs(storm_effects) do
        if buffactive[effect] then
            return true
        end
    end

    return false
end

-- Function to check if the Hachirin-no-Obi should be used
-- This returns a true or false
function use_hachirin_no_obi(spell)
    bonus = 0
	-- Define the opposing elements
	local opposing_elements = {
		Fire = "Ice",
		Ice = "Fire",
		Wind = "Earth",
		Earth = "Wind",
		Lightning = "Water",
		Water = "Lightning",
		Light = "Dark",
		Dark = "Light"
	}
	
	-- Define the weather intensity values
	local weather_to_intensity = {
		["Clear"] = 0,
		["Sunshine"] = 0,
		["Cloudy"] = 0,
		["Fog"] = 0,
		["Fine patches"] = 0,
		["Hot spells"] = 10,
		["Heat waves"] = 25,
		["Snow"] = 10,
		["Blizzards"] = 25,
		["Winds"] = 10,
		["Gales"] = 25,
		["Dust storms"] = 10,
		["Sand storms"] = 25,
		["Thunder"] = 10,
		["Thunderstorms"] = 25,
		["Rain"] = 10,
		["Squalls"] = 25,
		["Auroras"] = 10,
		["Stellar glare"] = 25,
		["Gloom"] = 10,
		["Darkness"] = 25
	}

	-- Debug: Spell Element Check
	--send_command('@input /echo Spell Element: ' .. spell.element)
	-- Debug: Day Element Check
	--send_command('@input /echo Day Element: ' .. world.day_element)
    
	-- Check if the spell element matches the current day
    if spell.element == world.day_element then
        bonus = bonus + 10
    elseif spell.element == opposing_elements[world.day_element] then
        bonus = bonus - 10
    end

	-- Debug: This returns the weather name found in weather_to_intensity example: Rain
	--send_command('@input /echo Self Weather Type: ' .. world.weather) 
	-- Debug: This returns back the weather of the zone or the storm.  
	--        Storm weather will come back first. Zone weather returns if there is no storm.
	--send_command('@input /echo Weather Type: ' .. world.weather_element)
	
    -- Check if a storm spell is up.
	if has_storm_effect() then
	    -- check if the spell and storm weather is the same.
		--send_command('@input /echo spell.element: ' .. spell.element)
		--send_command('@input /echo world.weather: ' .. world.weather)
		--send_command('@input /echo world.weather_element: ' .. world.weather_element)
		if spell.element == world.weather_element then
			bonus = bonus + weather_to_intensity[world.weather]
		-- check if the spell and storm weather are NOT the same.
		elseif spell.element == opposing_elements[world.weather_element] then
			bonus = bonus - weather_to_intensity[world.weather]
		end
	-- check if the spell and zone weather is the same.
	elseif spell.element == world.weather_element then
		bonus = bonus + weather_to_intensity[world.weather]
	-- check if the spell and zone weather are NOT the same.
	elseif spell.element == opposing_elements[world.weather_element] then
		bonus = bonus - weather_to_intensity[world.weather]
	end
	
	--Debug
	--send_command('@input /echo Bonus Amount: ' .. bonus.. '%')       
	-- Determine if the Hachirin-no-Obi should be used
    if bonus > 0 then
        return true
    else
        return false
    end
end

-- Function to get the appropriate obi
function get_obi(spell)
    if use_hachirin_no_obi(spell) then
		--Debug
		--send_command('@input /echo Waist: Hachirin-no-Obi')
        --return { equip({waist = "Hachirin-no-obi"}) }
		return true
    else
		--Debug
		--send_command('@input /echo Waist: Tengu-no-Obi')	
        --return { equip({waist = "Eschan Stone"}) }
		return false
    end
end
