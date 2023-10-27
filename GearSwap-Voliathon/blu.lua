-- Blue Mage LUA Script made by Voliathon.
-- I'm gonna call this the "Get GUD or Get REKT Script" because I'm not adding super detailed logic for every scenario.
-- I want Blue Mage fun and straight to the point for all conditions that we use.

-- Herculean Gear Function for tracking what I could use on Blue Mage
function HerculeanGear()
    HercHead = {}
	HercBody = {}
    HercHands = {}
    HercLegs = {}
    HercFeet = {}
	
	--Commenting out any Herculean sets that we don't use in this script.  It makes it easier to track what all we have vs what we use.
     --HercHead.MAB = {name="Herculean Helm", augments={'Mag. Acc.+19 "Mag.Atk.Bns."+19','Weapon skill damage +3%','INT+1','Mag. Acc.+3','"Mag.Atk.Bns."+8',}}
    --HercHead.TP = { name="Herculean Helm", augments={'Accuracy+25','"Triple Atk."+4','AGI+6','Attack+14',}}
	--HercHead.WSD = { name="Herculean Helm", augments={'Accuracy+25 Attack+25','Weapon skill damage +4%','STR+1','Accuracy+14'}}
    --HercHead.DM = { name="Herculean Helm", augments={'Pet: STR+9','Mag. Acc.+10 "Mag.Atk.Bns."+10','Weapon skill damage +9%','Accuracy+12 Attack+12',}}
	
	--HercHands.MAB = { name="Herculean Gloves", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Crit.hit rate+1','STR+6','Mag. Acc.+5','"Mag.Atk.Bns."+12'}}
    --HercHands.TP = {name="Herculean Gloves", augments={'Accuracy+20 Attack+11','"Triple Atk."+3'}}
	
    --HercLegs.WSD = { name="Herculean Trousers", augments={'Rng.Acc.+8 Rng.Atk.+8','Weapon skill damage +4%','DEX+5','Rng.Acc.+11','Rng.Atk.+15'}}
    --HercLegs.MAB = { name="Herculean Trousers", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Weapon skill damage +4%','CHR+5','"Mag.Atk.Bns."+7'}}
	--Need to get TA 4%
	--HercLegs.TP = { name="Herculean Trousers", augments={'"Triple Atk."+3','DEX+5','Accuracy+13','Attack+11'}}
	
    --HercFeet.MAB = { name="Herculean Boots", augments={'Mag. Acc.+30','"Mag.Atk.Bns."+25','Accuracy+3 Attack+3','Mag. Acc.+12 "Mag.Atk.Bns."+12',}}
	--HercFeet.Refresh = { name="Herculean Boots", augments={'STR+5','Attack+3','"Refresh"+1','Accuracy+9 Attack+9','Mag. Acc.+2 "Mag.Atk.Bns."+2',}}
    --HercFeet.TP = { name="Herculean Boots", augments={'"Triple Atk."+4','DEX+5','Accuracy+7','Attack+10'}}
    --HercFeet.WSD = { name="Herculean Boots", augments={'"Occult Acumen"+9','STR+9','Weapon skill damage +8%','Accuracy+20 Attack+20'}}
	
end


-- Rosmerta Cape function for tracking what I've got on Mazusu for Blue Mage
function RosmertaCapes()
    Rosmerta = {}
    --Rosmerta.STP = { name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10'}}
    --Rosmerta.WSD = { name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%'}}
	--Rosmerta.Crit = { name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Crit.hit rate+7'}}
	--Rosmerta.Int = { name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Haste+10'}}
end



--User Event Function called once on load.  It's used to define variables, and specifically "sets"
function get_sets()
	-- Set macro book/set --
    send_command('input /macro book 13;wait .1;input /macro set 1')
	
	-- Binds for modes
		-- Toggle Mecistopins mantle
	send_command('bind ^f7 gs c C7')
	
	--Toggle TP sets button, change if you want; currently ALT+F9 toggles forward, CTRL+F9 toggles backwards
  	send_command('bind ^f8 gs c C8') 
    send_command('bind !f9 gs c toggle Engaged set')
	send_command('bind ^f9 gs c reverse Engaged set')
	
	-- Modes --
	Capacity = 'OFF' -- Press ctrl + F7 if you want to be in Capacity mode  --	
	Naegling = 'OFF' -- Toogle on/off the Naegling and Maxentius via ctrl + F8
	
	-- Let's initialize all of the Herculean gear we've got stored up
	HerculeanGear()
	-- Let's also initialize any Rosmerta Capes that we need to use 
	RosmertaCapes()

	--Job Ability Sets--
	sets.JA = {}
    sets.JA.BurstAffinity = {legs="Assimilator's Shalwar +2",feet="Hashishin basmak +2"}
    sets.JA.ChainAffinity = {feet="Assimilator's Charuqs +2", head="Hashishin kavuk +2"}
    sets.JA.Diffusion = {feet="Luhlaza Charuqs +1"}
    sets.JA.Enchainment = {body="Luhlaza Jubbah +1"}
    sets.JA.Efflux = {legs="Hashishin tayt +2"}
	sets.JA.AzureLore = {hands="Luhlaza bazubands"}
	sets.JA.Assimilation = {legs="Luhlaza Shalwar"}
	
    --sets.TreasureHunter = {head="White rarab cap +1", waist="Chaac Belt"}	
	
    --sets.CuringWaltz = {body="Passion Jacket"}
    --sets.Utsusemi = {body="Passion Jacket"}
    sets.Aquaveil = {}
    sets.Regen = {}
	
	--Fast Cast
	sets.FastCast = {
		ammo="Staunch Tathlum +1",
		head={ name="Herculean Helm", augments={'Attack+19','STR+5','"Treasure Hunter"+2','Accuracy+20 Attack+20'}},
		body="Dread Jupon",
		hands={ name="Herculean Gloves", augments={'"Waltz" potency +4%','"Rapid Shot"+1','"Treasure Hunter"+2'}},
		legs="Malignance Tights",
		feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20'}},
		neck={ name="Loricate Torque +1", augments={'Path: A'}},
		waist="Witful Belt",
		left_ear="Loquac. Earring",
		right_ear="Halasz Earring",
		left_ring="Stikini Ring +1",
		right_ring="Veneficium Ring",
		back="Perimede Cape"
    }
	
	-- Enhancing
    sets.Enhancing =  {
 --TODO - Might need this but might not.  I'm abit unsure...
    }

	-- Magic Accuracy
    sets.MagicAccuracy = {
		ammo="Pemphredo Tathlum",
		head="Malignance Chapeau",
		body={ name="Amalric Doublet +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20'}},
		hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20'}},
		legs={ name="Amalric Slops +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20'}},
		feet={ name="Amalric Nails +1", augments={'Mag. Acc.+20','"Mag.Atk.Bns."+20','"Conserve MP"+7'}},
		neck="Nefarious Collar",
		waist="Orpheus's sash",
		left_ear="Digni. Earring",
		right_ear="Hecate's Earring",
		left_ring="Stikini Ring +1",
		right_ring="Fenrir Ring +1",
		back="Toro Cape"
    }	
	
	--Engaged Sets--
	sets.engaged = {}
--				    	    1		     2             					 3 		   		5 			6		 7
	sets.engaged.index = {'TP', 'TakingLessPhysicalDamage', 'TakingLessMagicDamage', 'Refresh', 'Movement', 'TH'}
	engaged_ind = 1 	
	
    sets.engaged.TP = {
		ammo="Ginsen",
		head={ name="Dampening Tam", augments={'DEX+10','Accuracy+15','Mag. Acc.+15','Quadruple Attack +3'}},
		body={ name="Adhemar Jacket +1", augments={'STR+12','DEX+12','Attack+20'}},
		hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20'}},
		legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6'}},
		feet={ name="Herculean Boots", augments={'Accuracy+28','"Triple Atk."+3','DEX+3','Attack+2'}},
		neck="Clotharius Torque",
		waist="Grunfeld Rope",
		left_ear="Dudgeon Earring",
		right_ear="Heartseeker Earring",
		left_ring="Chirich Ring +1",
		right_ring="Chirich Ring +1",
		back="Moonbeam Cape"
    }
	
	-- Let's Turtle Yo!
    sets.engaged.TakingLessPhysicalDamage = {
		ammo="Staunch Tathlum +1",
		head="Malignance Chapeau",
		body="Shamash Robe",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Loricate Torque +1",
		waist="Flume Belt",
		left_ear="Genmei Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Patricius Ring",
		right_ring="Defending Ring",
		back="Moonbeam Cape"
    }

	-- Fuck taking Magic Damage
	sets.engaged.TakingLessMagicDamage = {
		ammo="Staunch Tathlum +1",
		head="Malignance Chapeau",
		body="Shamash Robe",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Loricate Torque +1",
		waist="Flume Belt",
		left_ear="Genmei Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Patricius Ring",
		right_ring="Defending Ring",
		back="Moonbeam Cape"
	}
	

	sets.engaged.Refresh = {
		ammo="Staunch Tathlum +1",
		head="Malignance Chapeau",
		body="Shamash Robe",
		hands="Malignance Gloves",
		legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
		feet="Malignance Boots",
		neck="Sanctity Necklace",
		waist="Flume Belt +1",
		left_ear="Genmei Earring",
		right_ear="Infused Earring",
		left_ring="Stikini Ring +1",
		right_ring="Chirich Ring +1",
		back="Repulse Mantle"
	}

	sets.engaged.TH = {
		ammo="Staunch Tathlum +1",
		head={ name="Herculean Helm", augments={'Attack+19','STR+5','"Treasure Hunter"+2','Accuracy+20 Attack+20'}},
		body="Shamash Robe",
		hands={ name="Herculean Gloves", augments={'"Waltz" potency +4%','"Rapid Shot"+1','"Treasure Hunter"+2'}},
		legs="Malignance Tights",
		feet={ name="Herculean Boots", augments={'"Store TP"+7','Mag. Acc.+5','"Treasure Hunter"+2','Mag. Acc.+18 "Mag.Atk.Bns."+18'}},
		neck={ name="Loricate Torque +1", augments={'Path: A'}},
		waist="Chaac Belt",
		left_ear="Genmei Earring",
		right_ear={ name="Odnowa Earring +1", augments={'Path: A'}},
		left_ring="Stikini Ring +1",
		right_ring="Defending Ring",
		back="Moonbeam Cape"
	}
	-- If you're not first, you're last
    sets.engaged.Movement = {
		ammo="Staunch Tathlum +1",
		head="Malignance Chapeau",
		body="Shamash Robe",
		hands="Malignance Gloves",
		legs="Carmine Cuisses +1",
		feet="Malignance Boots",
		neck="Loricate Torque +1",
		waist="Flume Belt",
		left_ear="Genmei Earring",
		right_ear="Odnowa Earring +1",
		left_ring="Patricius Ring",
		right_ring="Defending Ring",
		back="Moonbeam Cape"	
	}
	
	-- Darkness is spreading...
	-- Tenebral Crush
    sets.DarkMagic = {
		head="Pixie Hairpin +1",
    }
	
	-- Blue Mage Skill
    sets.BlueMagicSkill = {
        neck="Mirage Stole +2",
        body="Assimilator's Jubbah +3",
        back="Cornflower Cape",
        feet="Luhlaza Charuqs +3"
    }

    -- Custom Physical Magic --
	-- This one atm is STR/Attack based
    sets.BlueMagicPhysical = {
		-- ammo="Floestone",
		-- head="Luh. Keffiyeh +3",
		-- body="Luhlaza Jubbah +3",
		-- hands="Luh. Bazubands +3",
		-- legs="Jhakri Slops +2",
		-- feet="Luhlaza Charuqs +3",
		-- neck="Mirage Stole +2",
		-- waist="Prosilio Belt +1",
		-- left_ear="Digni. Earring",
		-- right_ear="Telos Earring",
		-- left_ring="Ilabrat Ring",
		-- right_ring="Ifrit Ring +1",
		-- back=Rosmerta.WSD
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
		head="Malignance Chapeau",
		body={ name="Amalric Doublet +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20'}},
		hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20'}},
		legs={ name="Amalric Slops +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20'}},
		feet={ name="Amalric Nails +1", augments={'Mag. Acc.+20','"Mag.Atk.Bns."+20','"Conserve MP"+7'}},
		neck="Nefarious Collar",
		waist="Orpheus's Sash",
		left_ear="Digni. Earring",
		right_ear="Hecate's Earring",
		left_ring="Stikini Ring +1",
		right_ring="Fenrir Ring +1",
		back="Toro Cape"
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
        head="Pixie Hairpin +1", lring="Archon ring"
     })

	-- Cure spells
    sets.BlueMageCures = {
		ammo="Pemphredo Tathlum",
		head="Malignance Chapeau",
		body="Shamash Robe",
		hands="Telchine Gloves",
		legs={ name="Amalric Slops +1", augments={'MP+80','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
		feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}},
		neck="Sanctity Necklace",
		waist="Witful Belt",
		left_ear="Magnetic Earring",
		right_ear="Mendi. Earring",
		left_ring="Stikini Ring +1",
		right_ring="Ephedra Ring",
		back="Tempered Cape +1"
    }

	
    -- Weaponskill sets
    -- Default set for any weaponskill that isn't any more specifically defined
	-- WSD covers Savage Blade and Expiacion
    sets.WSD = {
		ammo="Amar Cluster",
		head="Malignance Chapeau",
		body={ name="Herculean Vest", augments={'Attack+14','Damage taken-1%','Weapon skill damage +7%','Accuracy+11 Attack+11'}},
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Ishvara Earring",
		right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250'}},
		left_ring="Epaminondas's Ring",
		right_ring="Rajas Ring",
		back="Vespid Mantle"
    }

    sets.ChantduCygne = {
		ammo="Amar Cluster",
		head="Malignance Chapeau",
		body={ name="Herculean Vest", augments={'Attack+14','Damage taken-1%','Weapon skill damage +7%','Accuracy+11 Attack+11'}},
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Ishvara Earring",
		right_ear={ name="Moonshade Earring", augments={'Attack+4','TP Bonus +250'}},
		left_ring="Epaminondas's Ring",
		right_ring="Rajas Ring",
		back="Vespid Mantle"
	}
	
	sets.Requiescat = {}

	-- MAB effects this, 50% MND 30% STR
	-- 1000 TP 50% Drained
	-- 2000 TP 100% Drained
    sets.SanguineBlade = set_combine(sets.BlueMagicMagical,{
		lring="Archon ring"
	})


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
	 elseif command == 'C8' then -- Maxentius to Naegling --	
         if  Naegling == 'OFF' then 
             Naegling = 'ON'
			 equip({sub="Naegling"})
             add_to_chat(158,'Naegling Weapon: [ON]')
			 add_to_chat(123,'Maxentius Weapon: [OFF]')
			 Maxentius = 'OFF'
		 else
			 Naegling = 'OFF'
             Maxentius = 'ON'
			 equip({sub="Maxentius"})
             add_to_chat(158,'Maxentius: [ON]')
             add_to_chat(123,'Naegling Weapon: [OFF]')				
        
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
		send_command('@input /tell <me> Wakies Mazusu. We hit 0 HP on accident. We shall live forever!!!')
	end
end)

-- Setup vars that are user-independent.  state.Buff vars initialized here will automatically be tracked.
-- Could've created a mapper and done it faster most likely but meh.  This is easier for people to understand with less coding experience
function BlueMageSpellLogic(spell)
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
