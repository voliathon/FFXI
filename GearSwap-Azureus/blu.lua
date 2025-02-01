-- Blue Mage LUA Script made by Voliathon for BabyBear
-- I'm gonna call this the "Get GUD or Get REKT Script" because I'm not adding super detailed logic for every scenario.
-- I want Blue Mage fun and straight to the point for all conditions that we use.

-- Rosmerta Cape function for tracking what I've got on Mazusu for Blue Mage
function RosmertaCapes()
    Rosmerta = {}
    Rosmerta.TP = { name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%'}}
    Rosmerta.WSD = { name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%'}}
	Rosmerta.MagicDMG = {name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10'}}
end

--User Event Function called once on load.  It's used to define variables, and specifically "sets"
function get_sets()

	-- Set macro book/set --
    send_command('input /macro book 13;wait .1;input /macro set 1')
	
	-- Binds for switching weapon modes
    send_command('bind !f8 gs c toggle weapon set')
	send_command('bind ^f8 gs c reverse weapon set')
	
	-- Binds for switching gear sets
    send_command('bind !f9 gs c toggle engage set')
	send_command('bind ^f9 gs c reverse engage set')
	
	-- Let's also initialize any Rosmerta Capes that we need to use 
	RosmertaCapes()
	-- Initialize the BlueMageMappers so that we can reference this in our BlueMageLocic function
	--BlueMageMappers()

	--Job Ability Sets--
	sets.JA = {}
    sets.JA.BurstAffinity = {legs="Assimilator's shalwar +2",feet="Hashishin basmak +3"} 
    sets.JA.ChainAffinity = {feet="Assimilator's Charuqs +2", head="Hashishin kavuk +3"}
    sets.JA.Diffusion = {}
    sets.JA.Enchainment = {body="Luhlaza Jubbah +1"}
    sets.JA.Efflux = {back=Rosmerta.WSD, legs="Hashishin Tayt +3"}
	sets.JA.AzureLore = {}
	sets.JA.Assimilation = {}
	
	--Fast Cast
	sets.FastCast = {
		ammo="Pemphredo Tathlum",
		head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4'}},
		body="Pinga Tunic",
		hands={ name="Rawhide Gloves", augments={'Mag. Acc.+15','INT+7','MND+7'}},
		legs="Pinga Pants",
		feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20'}},
		neck="Voltsurge Torque",
		waist="Witful Belt",
		left_ear="Loquac. Earring",
		right_ear="Enchntr. Earring +1",
		left_ring="Stikini Ring +1",
		right_ring="Rahab Ring",
		back="Perimede Cape"
    }
	
	-- Enhancing
    sets.Enhancing =  {
 --TODO - Might need this but might not.  I'm abit unsure...
    }

	-- Magic Accuracy
    sets.MagicAccuracy = {
		ammo="Pemphredo Tathlum",
		head="Hashishin kavuk +3",
		body="Hashishin mintan +3",
		hands="Hashishin Bazubands +3",
		legs="Hashishin Tayt +3",
		feet="Hashishin basmak +3",
		neck="Mirage Stole +2",
		waist="Null belt",
		left_ear="Digni. Earring",
		right_ear="Hashishin Earring +1",
		left_ring={name="Stikini Ring +1", bag="Wardrobe 3"},
		right_ring={name="Stikini Ring +1", bag="Wardrobe 5"},
		back="Null shawl"
    }	
	
	--Engaged Sets--
	sets.engaged = {}
--				    	    1		     2             					 3 		   		4 			5 			     6			
	sets.engaged.index = {'TP', 'TakingLessPhysicalDamage', 'TakingLessMagicDamage', 'Accuracy', 'Refresh', 'MovementEvasion'}
	engaged_ind = 1 	
	
    sets.engaged.TP = {
		ammo="Coiste Bodhar",
		head={ name="Dampening Tam", augments={'DEX+10','Accuracy+15','Mag. Acc.+15','Quadruple Attack +3',}},
		body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20',}},
		hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		legs={ name="Herculean Trousers", augments={'Attack+20','"Triple Atk."+3','STR+3','Accuracy+9',}},
		feet={ name="Herculean Boots", augments={'Rng.Atk.+24','Attack+30','"Store TP"+10','Accuracy+20 Attack+20',}},
		neck="Mirage Stole +2",
		waist="Windbuffet Belt +1",
		left_ear="Suppanomimi",
		right_ear="Hashishin Earring +1",
		left_ring="Epona's Ring",
		right_ring="Hetairoi Ring",
		back=Rosmerta.TP
    }
	
	-- Let's Turtle Yo!
    sets.engaged.TakingLessPhysicalDamage = {
		ammo="Crepuscular Pebble",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body="Hashishin Mintan +3",
		hands="Hashishin Bazubands +3",
		legs="Hashishin Tayt +3",
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Null loop",
		waist="Null belt",
		left_ear="Brutal Earring",
		right_ear={ name="Hashi. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+12','Mag. Acc.+12','"Dbl.Atk."+4',}},
		left_ring={name="Chirich Ring +1", bag="Wardrobe 3"},
		right_ring={name="Chirich Ring +1", bag="Wardrobe 4"},
		back=Rosmerta.TP
    }

	-- Fuck taking Magic Damage
	sets.engaged.TakingLessMagicDamage = {
		ammo="Staunch Tathlum +1",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body="Hashishin Mintan +3",
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs="Hashishin Tayt +3",
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Null loop",
		waist="Null belt",
		left_ear="Hearty Earring",
		right_ear="Sanare Earring",
		left_ring="Chirich Ring +1",
		right_ring="Fortified Ring",
		back=Rosmerta.TP	
	}
	
	sets.engaged.Accuracy = {
		ammo="Falcon Eye",
		head="Hashishin kavuk +3",
		body="Hashishin mintan +3",
		hands="Malignance Gloves",
		legs="Hashishin Tayt +3",
		feet="Malignance Boots",
		neck="Mirage Stole +2",
		waist="Null belt",
		left_ear="Digni. Earring",
		right_ear="Hashishin Earring +1",
		left_ring={name="Chirich Ring +1", bag="Wardrobe 3"},
		right_ring={name="Chirich Ring +1", bag="Wardrobe 4"},
		back="Null shawl"	
	}
	
	sets.engaged.Refresh = set_combine(sets.engaged.TakingLessPhysicalDamage,  {
		head="Rawhide mask",
		body="Hashishin mintan +3",
		neck="Null loop",
		legs="Rawhide trousers",
		waist="Fucho-no-Obi",
		left_ear="Infused Earring",
		left_ring={name="Stikini Ring +1", bag="Wardrobe 3"},
		right_ring={name="Stikini Ring +1", bag="Wardrobe 5"},
	})
	
	-- If you're not first, you're last
    sets.engaged.MovementEvasion = {
		ammo="Staunch Tathlum +1",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body="Hashishin Mintan +3",
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Bathy Choker +1",
		waist="Null belt",
		left_ear="Eabani Earring",
		right_ear="Infused Earring",
		left_ring="Shneddick Ring",
		right_ring="Chirich Ring +1",
		back="Null shawl"	
	}
	
	-- Blue Mage Skill
    sets.BlueMagicSkill = {
        neck="Mirage Stole +2",
        body="Assimilator's Jubbah +3",
		hands="Hashishin Bazubands +3",
		legs="Hashishin Tayt +3",
		back={ name="Cornflower Cape", augments={'MP+16','DEX+2','Accuracy+2','Blue Magic skill +10'}},
		right_ear="Hashishin Earring +1"
    }
	
	sets.CruelJoke = {
		ammo="Pemphredo Tathlum",
		head="Hashishin kavuk +3",
		body="Hashishin mintan +3",
		hands="Hashishin Bazubands +3",
		legs="Hashishin Tayt +3",
		feet="Hashishin basmak +3",
		neck="Mirage Stole +2",
		waist="Null belt",
		left_ear="Digni. Earring",
		right_ear="Hashishin Earring +1",
		left_ring={name="Stikini Ring +1", bag="Wardrobe 3"},
		right_ring={name="Stikini Ring +1", bag="Wardrobe 5"},
		back="Null shawl"
	}

    -- Custom Physical Magic --
	-- This one atm is STR/Attack based
    sets.BlueMagicPhysical = {
		ammo="Ginsen",
		head="Malignance Chapeau",
		body="Assim. Jubbah +3",
		hands="Hashishin Bazubands +3",
		legs="Hashishin Tayt +3",
		feet="Malignance Boots",
		neck="Mirage Stole +2",
		waist="Grunfeld Rope",
		left_ear="Digni. Earring",
		right_ear="Telos Earring",
		left_ring={name="Chirich Ring +1", bag="Wardrobe 3"},
		right_ring={name="Chirich Ring +1", bag="Wardrobe 4"},
		back=Rosmerta.TP
    }

	-- Only Heavy Strike will hit this set
    sets.BlueMagicPhysicalAcc = set_combine(sets.BlueMagicPhysical,{})
	-- STR Physical modifier
    sets.BlueMagicPhysicalStr = set_combine(sets.BlueMagicPhysical,{
        ring2="Ifrit Ring +1"
    })
	-- DEX Physical modifier
    sets.BlueMagicPhysicalDex = set_combine(sets.BlueMagicPhysical,{})
	
	-- VIT Physical modifier
    sets.BlueMagicPhysicalVit = set_combine(sets.BlueMagicPhysical,{})
	
	-- AGI Physical modifier
	sets.BlueMagicPhysicalAgi = set_combine(sets.BlueMagicPhysical,{})
	
	-- INT Physical modifier
	sets.BlueMagicPhysicalInt = set_combine(sets.BlueMagicPhysical,{})
	
	-- MND Physical modifier
	sets.BlueMagicPhysicalMnd = set_combine(sets.BlueMagicPhysical,{})
	
	-- CHR Physical modifier
	sets.BlueMagicPhysicalChr = set_combine(sets.BlueMagicPhysical,{})
	
	-- HP Physical modifier
	sets.BlueMagicPhysicalHP = set_combine(sets.BlueMagicPhysical,{})


    -- Magical Spells --
    sets.BlueMagicMagical = {
		ammo="Pemphredo Tathlum",
		head="Hashishin kavuk +3",
		body="Hashishin mintan +3",
		hands="Hashishin Bazubands +3",
		legs="Hashishin Tayt +3",
		feet="Hashishin basmak +3",
		neck="Mirage Stole +2",
		waist="Orpheus's sash",
		left_ear="Choleric Earring",
		right_ear="Friomisi Earring",
		left_ring={name="Stikini Ring +1", bag="Wardrobe 3"},
		right_ring={name="Stikini Ring +1", bag="Wardrobe 5"},		
		back=Rosmerta.MagicDMG
    }
	
    sets.BlueMagicMagicalResistant = set_combine(sets.BlueMagicMagical,{})
    sets.BlueMagicMagicalLight = set_combine(sets.BlueMagicMagical,{})
	sets.BlueMagicMagicalAgi = set_combine(sets.BlueMagicMagical,{})
	sets.BlueMagicMagicalMnd = set_combine(sets.BlueMagicMagical,{})
    sets.BlueMagicMagicalChr = set_combine(sets.BlueMagicMagical,{})
	sets.BlueMagicMagicalVit = set_combine(sets.BlueMagicMagical,{})
    sets.BlueMagicMagicalDex = set_combine(sets.BlueMagicMagical,{})

    -- Breath Spells --
    sets.BreathSpells =  set_combine(sets.BlueMagicMagical,{
		head="Luh. Keffiyeh +3",
    })

	-- Stun Gun
    sets.Stun = set_combine(sets.FastCast,{})
        
    sets.TenebralCrush = set_combine(sets.BlueMagicMagical,{
        head="Pixie Hairpin +1", left_ring="Archon ring", right_ring="Metamorph ring +1", waist="Orpheus's sash"
     })

	-- Cure spells
    sets.BlueMageCures = {
		ammo="Pemphredo Tathlum",
		head={ name="Amalric Coif +1", augments={'INT+12','Mag. Acc.+25','Enmity-6'}},
		body="Pinga Tunic",
		hands={ name="Telchine Gloves", augments={'Accuracy+15','Song spellcasting time -5%','Enh. Mag. eff. dur. +10'}},
		legs="Pinga Pants",
		feet="Skaoi Boots",
		neck="Incanter's Torque",
		waist="Witful Belt",
		left_ear="Mendi. Earring",
		right_ear="Magnetic Earring",
		left_ring="Stikini Ring +1",
		right_ring="Lebeche Ring",
		back={ name="Cornflower Cape", augments={'MP+16','DEX+2','Accuracy+2','Blue Magic skill +10'}}	
    }

	
    -- Weaponskill sets
    -- Default set for any weaponskill that isn't any more specifically defined
	-- WSD covers Savage Blade and Expiacion
    sets.WSD = {
		ammo="Coiste Bodhar",
		head="Hashishin kavuk +3",
		body="Assim. Jubbah +3",
		hands="Nyame Gauntlets",
		legs="Luhlaza Shalwar +3",
		feet="Nyame sollerets",
		neck="Mirage Stole +2",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250'}},
		right_ear="Ishvara Earring",
		left_ring="Epaminondas's Ring",
		right_ring="Hetairoi Ring",
		back=Rosmerta.WSD
    }

    sets.ChantduCygne = {
		ammo="Coiste Bodhar",
		head="Hashishin kavuk +3",
		body="Abnoba Kaftan",
		hands="Nyame Gauntlets",
		legs={name="Herculean Trousers", augments={'Attack+20','"Triple Atk."+3','STR+3','Accuracy+9'}},
		feet="Nyame sollerets",
		neck="Mirage Stole +2",
		waist="Fotia Belt",
		left_ear="Mache Earring +1",
		right_ear="Mache Earring +1",
		left_ring="Epaminondas's Ring",
		right_ring="Epona's Ring",
		back=Rosmerta.WSD		
	}
	
	sets.Requiescat = set_combine(sets.WSD,{
	
	})

	-- MAB effects this, 50% MND 30% STR
	-- 1000 TP 50% Drained
	-- 2000 TP 100% Drained
    sets.SanguineBlade = set_combine(sets.BlueMagicMagical,{
		head="Pixie Hairpin +1", lring="Archon ring", waist="Orpheus's sash"
	})

	--Weapon Sets--
	sets.weapon = {}
	sets.weapon.index = {'TizonaNaegling','TizonaThibron','TizonaBunzi','NaeglingThibron','MaxentiusBunzi'}
	weapon_ind = 1
	
	sets.weapon.TizonaNaegling = {
		main="Tizona",
		sub="Naegling"
	}

	sets.weapon.TizonaThibron = {
		main="Tizona",
		sub="Thibron"
	}
	
	sets.weapon.TizonaBunzi = {
		main="Tizona",
		sub="Bunzi's Rod"
	}
	
	sets.weapon.MaxentiusBunzi = {
		main="Maxentius",
		sub="Bunzi's Rod"
	}

	sets.weapon.NaeglingThibron = {
		main="Naegling",
		sub="Thibron"
	}

end


function precast(spell,abil)
	if spell.skill == 'Blue Magic' then
		equip(sets.FastCast)
	end

	--WS Lookups
	if spell.name == "Savage Blade" or spell.name == "Expiacion" then
		equip(sets.WSD)
	end
	
	if spell.name == "Sanguine Blade" then
		equip(sets.SanguineBlade)
	end
	
	if spell.name == "Chant du Cygne" then
		equip(sets.ChantduCygne)
	end
	
	if spell.name == "Requiescat" then
		equip(sets.Requiescat)
	end
	
	--JA Lookups
	if spell.name == "Diffusion" then
		equip(sets.Diffusion)
	end
	
	if spell.name == "Chain Affinity" then
		equip(sets.ChainAffinity)
	end
	
	if spell.name == "Burst Affinity" then
		equip(sets.BurstAffinity)
	end
	
	if spell.name == "Efflux" then
		equip(sets.Efflux)
	end
	
	
end


--Should NOT put Job Abilities here.  Ony Magic Fren!  Fren is Doggo Speak for Friend
function midcast(spell,act,arg)
	if spell.skill == 'Blue Magic' then
		BlueMageSpellLogic(spell)
	end

end


function aftercast(spell)
  equip_current()
end


--This function should only get kicked off when you're engaging.  
--If I want a manual 'Refresh' set or 'MDT' or 'DT' set I can do that in game with equipsets.  
--But I don't want to fuck myself by ignoring the engaged check.
--I'm also deciding not to use a Binding Key to put my in a MDT, PDT, DT, Refresh Set.
--I dunno, I'm just against hitting Ctrl+f# all the time for that shit
function equip_current()
	equip(sets.weapon[sets.weapon.index[weapon_ind]]) 
	equip(sets.engaged[sets.engaged.index[engaged_ind]]) 
end

--Function use for Changing the Weapon Set.  Ctrl+F8 is your meal ticket
--123 is a red color for the text output
--158 is a green color for the text output
--Function use for Changing the TP Set.  Ctrl+F9 is your meal ticket
--123 is a red color for the text output
--158 is a green color for the text output
function self_command(command)
	if command =='toggle weapon set' then
		weapon_ind = weapon_ind -1
		if weapon_ind == 0 then weapon_ind = #sets.weapon.index end
		send_command('@input /echo <----- Gear Set changed to '..sets.weapon.index[weapon_ind]..' ----->')
		equip_current()	
	elseif command == 'reverse weapon set' then
		weapon_ind = weapon_ind +1
		if weapon_ind > #sets.weapon.index then weapon_ind = 1 end
		send_command('@input /echo <----- Gear Set changed to '..sets.weapon.index[weapon_ind]..' ----->')
		equip_current()
	elseif command == 'toggle engage set' then
		engaged_ind = engaged_ind -1
		if engaged_ind == 0 then engaged_ind = #sets.engaged.index end
		send_command('@input /echo <----- Gear Set changed to '..sets.engaged.index[engaged_ind]..' ----->')
		equip_current()	
	elseif command == 'reverse engage set' then
		engaged_ind = engaged_ind +1
		if engaged_ind > #sets.engaged.index then engaged_ind = 1 end
		send_command('@input /echo <----- Gear Set changed to '..sets.engaged.index[engaged_ind]..' ----->')
		equip_current()
	end
end


-- Send tell to self if I died --
windower.register_event('status change', function()
	if player.status == 'Dead' then
		send_command('@input /tell <me> Wakies Mazusu. We hit 0 HP on accident. We shall live forever!!!')
	end
end)


function BlueMageSpellLogic(spell)

	if spell.name == 'Cruel Joke' then
		equip(sets.CruelJoke)
	end

    -- Physical spells with no particular (or known) stat mods //sets.BlueMagicPhysical
    if spell.name == 'Bilgestorm' then
		equip(sets.BlueMagicPhysical)
	end

    -- Spells with heavy accuracy penalties, that need to prioritize accuracy first. //sets.BlueMagicPhysicalAcc
    if spell.name == 'Heavy Strike' then
		equip(sets.BlueMagicPhysicalAcc)
	end

    -- Physical spells with Str stat mod //sets.BlueMagicPhysicalStr
    if spell.name == 'Battle Dance' or spell.name == 'Bloodrake' or spell.name == 'Death Scissors' or 
		spell.name == 'Dimensional Death' or spell.name == 'Empty Thrash' or spell.name == 'Quadrastrike' or 
		spell.name == 'Sinker Drill' or spell.name == 'Spinal Cleave' or spell.name == 'Uppercut' or 
		spell.name == 'Vertical Cleave' or spell.name == 'Quadratic Continuum' then
			equip(sets.BlueMagicPhysicalStr)
	end
        
    -- Physical spells with Dex stat mod //sets.BlueMagicPhysicalDex
    if spell.name == 'Amorphic Spikes' or spell.name == 'Asuran Claws' or spell.name == 'Barbed Crescent' or 
		spell.name == 'Claw Cyclone' or spell.name == 'Disseverment' or spell.name == 'Foot Kick' or 
		spell.name == 'Frenetic Rip' or spell.name == 'Goblin Rush' or spell.name == 'Hysteric Barrage' or 
		spell.name == 'Paralyzing Triad' or spell.name == 'Seedspray' or spell.name == 'Sickle Slash' or 
		spell.name == 'Smite of Rage' or spell.name == 'Terror Touch' or spell.name == 'Thrashing Assault' or 
		spell.name == 'Vanity Dive' then
			equip(sets.BlueMagicPhysicalDex)
	end
    
        
    -- Physical spells with Vit stat mod  //sets.BlueMagicPhysicalVit
	if spell.name == 'Body Slam' or spell.name == 'Cannonball' or spell.name == 'Delta Thrust' or 
		spell.name == 'Glutinous Dart' or spell.name == 'Grand Slam' or spell.name == 'Power Attack' or 
		spell.name == 'Quad. Continuum' or spell.name == 'Sprout Smack' or spell.name == 'Sub-zero Smash' or 
		spell.name == 'Sweeping Gouge' then
			equip(sets.BlueMagicPhysicalVit)
	end
        
    -- Physical spells with Agi stat mod  //sets.BlueMagicPhysicalAgi
	if spell.name == 'Benthic Typhoon' or spell.name == 'Feather Storm' or spell.name == 'Helldive' or 
		spell.name == 'Hydro Shot' or spell.name == 'Jet Stream' or spell.name == 'Pinecone Bomb' or 
		spell.name == 'Spiral Spin' or spell.name == 'Wild Oats' then
			equip(sets.BlueMagicPhysicalAgi)
	end
    

    -- Physical spells with Int stat mod  //sets.BlueMagicPhysicalInt
	if spell.name == 'Mandibular Bite' or spell.name == 'Queasyshroom' then
		equip(sets.BlueMagicPhysicalInt)
	end

    -- Physical spells with Mnd stat mod  //sets.BlueMagicPhysicalMnd
	if spell.name == 'Ram Charge' or spell.name == 'Screwdriver' or spell.name == 'Tourbillion' then
		equip(sets.BlueMagicPhysicalMnd)
	end

    -- Physical spells with Chr stat mod  //sets.BlueMagicPhysicalChr
    if spell.name == 'Bludgeon' then
		equip(sets.BlueMagicPhysicalChr)
	end
	
    -- Physical spells with HP stat mod  //sets.BlueMagicPhysicalHP
    if spell.name == 'Final Sting' then
    	equip(sets.BlueMagicPhysicalHP)
	end

    -- Magical Spells --
    -- Magical spells with the typical Int mod
    if spell.name == 'Blastbomb' or spell.name == 'Blazing Bound' or spell.name == 'Bomb Toss' or 
		spell.name == 'Cursed Sphere' or spell.name == 'Dark Orb' or spell.name == 'Death Ray' or 
		spell.name == 'Diffusion Ray' or spell.name == 'Droning Whirlwind' or spell.name == 'Embalming Earth' or 
		spell.name == 'Firespit' or spell.name == 'Foul Waters' or spell.name == 'Ice Break' or 
		spell.name == 'Leafstorm' or spell.name == 'Maelstrom' or spell.name == 'Rail Cannon' or 
		spell.name == 'Regurgitation' or spell.name == 'Rending Deluge' or spell.name == 'Retinal Glare' or 
		spell.name == 'Subduction' or spell.name == 'Tem. Upheaval' or spell.name == 'Water Bomb' or 
		spell.name == 'Spectral Floe' or spell.name == 'Molting Plumage' or spell.name == 'Searing Tempest' then
			equip(sets.BlueMagicMagical)
	end
	
	--Hell Darkness my Old Friend....
	if spell.name == 'Tenebral Crush' then
		equip(sets.TenebralCrush)
	end
	
	if spell.name == 'Blinding Fulgor' then
		equip(sets.BlueMagicMagicalLight)
	end

    -- Magical spells with a primary Mnd mod
	if spell.name == 'Acrid Stream' or spell.name == 'Evryone. Grudge' or spell.name == 'Magic Hammer' or 
		spell.name == 'Mind Blast' or spell.name == 'Scouring Spate' then
			equip(sets.BlueMagicMagicalMnd)
	end
    

    -- Magical spells with a primary Chr mod
    if spell.name == 'Eyes On Me' or spell.name == 'Mysterious Light' then
		equip(sets.BlueMagicMagicalChr)
	end

    -- Magical spells with a Vit stat mod (on top of Int)
    if spell.name == 'Thermal Pulse' or spell.name == 'Entomb' then
		equip(sets.BlueMagicMagicalVit)
	end

    if spell.name == 'Silent Storm' then
		equip(sets.BlueMagicMagicalAgi)
	end

    -- Magical spells with a Dex stat mod (on top of Int)
    if spell.name == 'Charged Whisker' or spell.name == 'Gates of Hades' or spell.name == 'Anvil Lightning' then
		equip(sets.BlueMagicMagicalDex)
	end
            
    -- Magical spells (generally debuffs) that we want to focus on magic accuracy over damage.
    -- Add Int for damage where available, though.
	if spell.name == '1000 Needles' or spell.name == 'Absolute Terror' or spell.name == 'Actinic Burst' or 
		spell.name == 'Auroral Drape' or spell.name == 'Awful Eye' or spell.name == 'Blank Gaze' or 
		spell.name == 'Blistering Roar' or spell.name == 'Blood Drain' or spell.name == 'Blood Saber' or 
		spell.name == 'Chaotic Eye' or spell.name == 'Cimicine Discharge' or spell.name == 'Cold Wave' or 
		spell.name == 'Corrosive Ooze' or spell.name == 'Demoralizing Roar' or spell.name == 'Digest' or 
		spell.name == 'Dream Flower' or spell.name == 'Enervation' or spell.name == 'Feather Tickle' or 
		spell.name == 'Filamented Hold' or spell.name == 'Frightful Roar' or spell.name == 'Geist Wall' or 
		spell.name == 'Hecatomb Wave' or spell.name == 'Infrasonics' or spell.name == 'Jettatura' or 
		spell.name == 'Light of Penance' or spell.name == 'Lowing' or spell.name == 'Mind Blast' or 
		spell.name == 'Mortal Ray' or spell.name == 'MP Drainkiss' or spell.name == 'Osmosis' or 
		spell.name == 'Reaving Wind' or spell.name == 'Sandspin' or spell.name == 'Sandspray' or 
		spell.name == 'Sheep Song' or spell.name == 'Soporific' or spell.name == 'Sound Blast' or 
		spell.name == 'Stinking Gas' or spell.name == 'Sub-zero Smash' or spell.name == 'Venom Shell' or 
		spell.name == 'Voracious Trunk' or spell.name == 'Yawn' then
			equip(sets.MagicAccuracy)
	end
        
    -- Breath-based spells
    if spell.name == 'Bad Breath' or spell.name == 'Flying Hip Press' or spell.name == 'Frost Breath' or 
		spell.name == 'Heat Breath' or spell.name == 'Hecatomb Wave' or spell.name == 'Magnetite Cloud' or 
		spell.name == 'Poison Breath' or spell.name == 'Radiant Breath' or spell.name == 'Self-Destruct' or 
		spell.name == 'Thunder Breath' or spell.name == 'Vapor Spray' or spell.name == 'Wind Breath' then
			equip(sets.BreathSpells)
	end
    

    -- Stun spells
	if spell.name == 'Blitzstrahl' or spell.name == 'Frypan' or spell.name == 'Head Butt' or 
		spell.name == 'Sudden Lunge' or spell.name == 'Tail slap' or spell.name == 'Temporal Shift' or 
		spell.name == 'Thunderbolt' or spell.name == 'Whirl of Rage' then
			equip(sets.Stun)
	end
        
    -- Healing spells
	if spell.name == 'Healing Breeze' or spell.name == 'Magic Fruit' or spell.name == 'Plenilune Embrace' or 
		spell.name == 'Pollen' or spell.name == 'Restoral' or spell.name == 'White Wind' or spell.name == 'Wild Carrot' then
			equip(sets.BlueMageCures)
	end
    
    -- Buffs that depend on blue magic skill
	if spell.name == 'Barrier Tusk' or spell.name == 'Diamondhide' or spell.name == 'Magic Barrier' or 
		spell.name == 'Metallic Body' or spell.name == 'Plasma Charge' or spell.name == 'Pyric Bulwark' or 
		spell.name == 'Reactor Cool' or spell.name == 'Nat. Meditation' then
			equip(sets.BlueMagicSkill)
	end

    -- Other general buffs
    if spell.name == 'Amplification' or spell.name == 'Animating Wail' or spell.name == 'Battery Charge' or 
		spell.name == 'Carcharian Verve' or spell.name == 'Cocoon' or spell.name == 'Erratic Flutter' or 
		spell.name == 'Exuviation' or spell.name == 'Fantod' or spell.name == 'Feather Barrier' or 
		spell.name == 'Harden Shell' or spell.name == 'Memento Mori' or spell.name == 'Nat. Meditation' or 
		spell.name == 'Occultation' or spell.name == 'Orcish Counterstance' or spell.name == 'Refueling' or 
		spell.name == 'Regeneration' or spell.name == 'Saline Coat' or spell.name == 'Triumphant Roar' or 
		spell.name == 'Warm-Up' or spell.name == 'Winds of Promyvion' or spell.name == 'Zephyr Mantle' then
			equip(sets.BlueMagicSkill)
	end
        
    -- Spells that require Unbridled Learning to cast.
    if spell.name == 'Absolute Terror' or spell.name == 'Bilgestorm' or spell.name == 'Blistering Roar' or 
		spell.name == 'Bloodrake' or spell.name == 'Carcharian Verve' or spell.name == 'Crashing Thunder' or 
		spell.name == 'Droning Whirlwind' or spell.name == 'Gates of Hades' or spell.name == 'Harden Shell' or 
		spell.name == 'Polar Roar' or spell.name == 'Pyric Bulwark' or spell.name == 'Thunderbolt' or 
		spell.name == 'Uproot' then
			equip(sets.BlueMagicSkill)
	end

	
end
