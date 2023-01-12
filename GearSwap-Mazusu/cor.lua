-- The super duper awesome corsair script
-- by Voliathon

--Took this idea from the previous lua script I got off the net and rolled with it. Mazusu has 7 unique Corsair Camulus's Capes >.<
function CamulusCapes()
	CamulusCape = {}
    CamulusCape.storetp={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+9','"Store TP"+10'} }
    CamulusCape.ranged_ws={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','AGI+10','Weapon skill damage +10%'} }	
    CamulusCape.matk={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%','Damage taken-5%'} }
    CamulusCape.str_ws={ name="Camulus's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Damage taken-5%'} }
    CamulusCape.melee_double_attack={ name="Camulus's Mantle", augments={'DEX+20','DEX+10','Accuracy+20 Attack+20','"Dbl.Atk."+10','Damage taken-5%'} }
	CamulusCape.snapshot={ name="Camulus's Mantle", augments={'"Snapshot"+10',} }
	-- DEX 20 DEX 10 ACC/ATT+20 STP+10 DT-5
end

-- Herculean Gear Function for tracking what I could use on Corsair  -- This Function code be taken out and put in a stand alone lua script to be used between other lua scripts.
-- Basically that would provide easier maintenance
function HerculeanGear()
    HercHead = {}
	HercBody = {}
    HercHands = {}
    HercLegs = {}
    HercFeet = {}
	
	--Commenting out any Herculean sets that we don't use in this script.  It makes it easier to track what all we have vs what we use.
     --HercHead.MAB = {name="Herculean Helm", augments={'Mag. Acc.+19 "Mag.Atk.Bns."+19','Weapon skill damage +3%','INT+1','Mag. Acc.+3','"Mag.Atk.Bns."+8',}}
    --HercHead.TP = { name="Herculean Helm", augments={'Accuracy+25','"Triple Atk."+4','AGI+6','Attack+14',}}
	HercHead.WSD = {  name="Herculean Helm", augments={'Mag. Acc.+12','Sklchn.dmg.+4%','Weapon skill damage +3%','Accuracy+18 Attack+18'}}
    --HercHead.DM = { name="Herculean Helm", augments={'Pet: STR+9','Mag. Acc.+10 "Mag.Atk.Bns."+10','Weapon skill damage +9%','Accuracy+12 Attack+12',}}
	
	--HercHands.MAB = { name="Herculean Gloves", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Crit.hit rate+1','STR+6','Mag. Acc.+5','"Mag.Atk.Bns."+12'}}
    HercHands.TP = { name="Herculean Gloves", augments={'STR+15','"Triple Atk."+2','Quadruple Attack +3','Accuracy+19 Attack+19'}}
	
    HercLegs.WSD = { name="Herculean Trousers", augments={'Rng.Acc.+8 Rng.Atk.+8','Weapon skill damage +4%','DEX+5','Rng.Acc.+11','Rng.Atk.+15'}}
    HercLegs.MAB = { name="Herculean Trousers", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Weapon skill damage +4%','CHR+5','"Mag.Atk.Bns."+7'}}
	--Need to get TA 4%
	HercLegs.TP = { name="Herculean Trousers", augments={'"Triple Atk."+3','DEX+5','Accuracy+13','Attack+11'}}
	
    --HercFeet.MAB = { name="Herculean Boots", augments={'Mag. Acc.+30','"Mag.Atk.Bns."+25','Accuracy+3 Attack+3','Mag. Acc.+12 "Mag.Atk.Bns."+12',}}
	HercFeet.Refresh = { name="Herculean Boots", augments={'STR+5','Attack+3','"Refresh"+1','Accuracy+9 Attack+9','Mag. Acc.+2 "Mag.Atk.Bns."+2'}}
    HercFeet.TP = { name="Herculean Boots", augments={'"Triple Atk."+4','DEX+5','Accuracy+7','Attack+10'}}
    HercFeet.WSD = { name="Herculean Boots", augments={'"Occult Acumen"+9','STR+9','Weapon skill damage +8%','Accuracy+20 Attack+20'}}
	
end

function get_sets()
	-- Set macro book/set --
    send_command('input /macro book 19;wait .1;input /macro set 1')
	
	-- Binds for switching weapon modes
    send_command('bind !f8 gs c toggle weapon set')
	send_command('bind ^f8 gs c reverse weapon set')
	
	-- Binds for switching gear sets
    send_command('bind !f9 gs c toggle engage set')
	send_command('bind ^f9 gs c reverse engage set')
	
	
	-- Initialize all of the Herculean gear we've got stored up
	HerculeanGear()
	-- Initialize any Camulus capes that we need to use 
	CamulusCapes()

	-- Job Abilities
    sets.TripleShot = set_combine(sets.DamageTaken, { body="Chasseur's Frac +2", hands="Lanun gants +3" })
    sets.RandomDeal = set_combine(sets.DamageTaken, { body="Lanun Frac +3" })
    sets.WildCard = set_combine(sets.DamageTaken, { feet="Lanun Bottes +3" })
    sets.SnakeEye = set_combine(sets.DamageTaken, { legs="Lanun Trews +3" })
    sets.Fold = set_combine(sets.DamageTaken, { hands="Lanun Gants +3" })
	
	-- Maximizing Corsair Rolls
	sets.CorsairRoll = {
		main={name="Rostam",bag="Wardrobe 4"},
        -- phantom roll effects +50 (chance to proc job-present-boost)
        head = "Lanun Tricorne +3",
        -- phantom roll +7
        neck="Regal Necklace",
        -- increased area of effect
        left_ring="Luzaf's Ring",
		--phantom roll +5
		right_ring="Barataria Ring",
        -- duration +55
        hands="Chasseur's Gants +3",
        -- duration +30
        back=CamulusCape.matk,
		-- duration +20
		range='Compensator'
    }
	
	-- Specific Rolls
	sets.BlitzersRoll = set_combine(sets.CorsairRoll, { head="Chass. Tricorne +1" })
    sets.AlliesRoll = set_combine(sets.CorsairRoll, { hands="Chasseur's Gants +3" })
    sets.TacticiansRoll = set_combine(sets.CorsairRoll, {body="Chasseur's Frac +2"})
    sets.CastersRoll = set_combine(sets.CorsairRoll, { legs="Chasseur's Culottes +2" })
    sets.CoursersRoll = set_combine(sets.CorsairRoll, { feet = "Chass. Bottes +1" })

	
	
	-- This base set shit really needs Malignance Gear instead of Ambuscade
    sets.DamageTaken = {
        head="Chasseur's tricorne +2",
        body="Malignance Tabard",
        hands="Nyame gauntlets",
        legs="Chasseur's Culottes +2",
		feet="Nyame sollerets",
        neck="Loricate Torque +1",
        waist="Eschan Stone",
        left_ear="Digni. Earring",
        right_ear="Steelflash Earring",
        left_ring="Defending Ring",
        right_ring="Paguroidea Ring",
        back=CamulusCape.melee_double_attack
    }
	
   -- +18% runspeed
    sets.idle = set_combine(sets.DamageTaken, { legs="Carmine Cuisses +1" });

    sets.resting = set_combine(sets.DamageTaken, {});

    sets.FastCast = set_combine(sets.DamageTaken,{
		-- fast cast +12
		head="Carmine Mask +1",
		-- fast cast +4
		neck = "Voltsurge Torque",
		-- fast cast +3
		body="Samnuha Coat",
		-- Fast cast +2
		right_ear="Loquac. Earring",
		-- fast cast 2
		left_ring="Prolix Ring",
		-- fast cast 4
		right_ring="Kishar Ring"
	})	
	

	
	--Quick Draw damage is calculated similar to magic damage by multiplying the following factors in order and flooring after each step.
	--    Base Damage = [(Gun DMG + Bullet DMG) * 2] (Multiple gear listed below add 10 DMG to Base Damage.)
	--    resist
	--    Staff Bonus
	--    Day & Weather
	--    Player MAB / Target MDB
	--    Affinity
    sets.QuickDraw = set_combine(sets.DamageTaken,{
		ammo="Living Bullet",
		head="Chasseur's tricorne +2",
		body="Lanun Frac +3",
		hands="Carmine Fin. Ga. +1",
		neck="Sanctity Necklace",
		waist="Eschan Stone",
		left_ear="Friomisi Earring",
		right_ear="Hecate's Earring",
		left_ring="Dingir Ring",
		right_ring="Kishar ring",
		back=CamulusCape.storetp
    })
	
	
    sets.QuickDrawAcc = set_combine(sets.QuickDraw, {
        head="Laksa. Tricorne +2",
        neck="Commodore Charm +2",
        --hands="Laksa. Gants +2",
        legs="Malignance Tights",
        feet="Laksa. Boots +3",
        left_ear="Digni. Earring",
        left_ring="Regal Ring",
        right_ring="Etana Ring",
    })	
	

	-- PRECAST LOGIC
	sets.precast = {}
    sets.precast.RA = set_combine(sets.DamageTaken,{
		head="Taeon chapeau",
		body="Oshosi Vest +1",
		neck="Commodore Charm +2",
		hands="Carmine Fin. Ga. +1",
		legs="Chasseur's Culottes +2",
		feet="Meg. Jam. +2",
		waist="Yemaya Belt",
		back=CamulusCape.snapshot
    })

	
	--Weaponskill Gloriness	
    sets.precast.WS = set_combine(sets.DamageTaken, {
        -- wsd +10%
        body="Laksa. Frac +3",
        -- wsd +10,
        feet="Lanun Bottes +3",
        -- WS boost
        neck="Fotia Gorget",
        -- ratk +25, matk +10, agi +10, recycle +10
        left_ring="Dingir Ring",
        -- Atk +20, ratk +20, AGI+10
        right_ring="Regal Ring",
        -- WS boost
        waist="Fotia Belt"
    })

    sets.precast.WS.Magic = set_combine(sets.precast.WS,{
		-- macc +25, matk +35
		ammo="Living Bullet",
		--head=herc_matk.head,
		-- matk +29, macc +30
		body="Samnuha Coat",
		-- 52 macc, 8% WSD
		hands="Chasseur's Gants +3",
		--hands=herc_matk.hands,
		legs="Chasseur's Culottes +2",
		--legs=herc_matk.legs,
		-- matk +48, WSD+5
		feet="Lanun Bottes +3",
		-- WS boost
		neck="Fotia Gorget",
		-- WS boost
		waist="Fotia Belt",
		-- matk 10
		left_ear="Friomisi Earring",
		-- matk 8
		right_ear="Hecate's Earring",
		-- ratk +25, matk +10, agi +10, recycle +10
		left_ring="Dingir Ring",
		-- macc 3, matk 3, AGI 5
		right_ring="Arvina Ringlet +1",
		-- macc 20, mdam 20, wsdam 10, AGI 20
		back=CamulusCape.matk
	})

	--Wildfire and 
    sets.precast.WS.Marksmanship = set_combine(sets.precast.RA, {
        -- racc 27, ratk 72
        head="Lanun Tricorne +3",
        -- racc 57, ratk 35, wsd +10%
        body="Laksa. Frac +3",
        --legs=herc_ratk.legs,
		legs="Chasseur's Culottes +2",
		--  racc 52 , ratt 52 macc, 8% WSD
		hands="Chasseur's Gants +3",
        -- wsd +10,
        feet="Lanun Bottes +3",
        -- WS boost
        neck="Fotia Gorget",
        -- WS boost
        waist="Fotia Belt",
        -- wsd +2
        right_ear="Ishvara Earring",
        -- Ratk +20, AGI+10
        right_ring="Regal Ring",
        -- racc 20, ratk 20, wsd +10%
        back=CamulusCape.ranged_ws
    })

	--Wildfire    AGI/MAB/WSD
    sets.Wildfire = set_combine(sets.precast.WS.Magic,{
		-- macc +25, matk +35
		ammo="Living Bullet",
		body="Lanun Frac +3",
		legs="Chasseur's Culottes +2",
		hands="Chasseur's Gants +3"
	})
	
	--Leaden Salute     AGI/MAB/WSD  100% AGI
    sets.LeadenSalute = set_combine(sets.Wildfire,{
		ammo="Living Bullet",
		head="Pixie Hairpin +1",	
--		head={ name="Herculean Helm", augments={'Spell interruption rate down -8%','Mag. crit. hit dmg. +10%','Mag. Acc.+9 "Mag.Atk.Bns."+9'}},
		body="Lanun Frac +3",
		--  racc 52 , ratt 52 macc, 8% WSD
		hands="Chasseur's Gants +3",
		legs="Chasseur's Culottes +2",
		feet="Lanun Bottes +3",
		neck="Comm. Charm +2",
		waist="Eschan Stone",
		left_ear="Digni. Earring",
		right_ear="Moonshade Earring",
		left_ring="Dingir Ring",
		right_ring="Archon Ring",
		back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%','Damage taken-5%'}}
	})

	--Last Stand   AGI/RAtt/RAcc/WSD
    sets.LastStand = set_combine(sets.precast.WS.Marksmanship,{
		left_ear="Moonshade Earring"
	})

	--Savage Blade  50% STR / 50% MND
    sets.SavageBlade = set_combine(sets.precast.WS,{
		head=HercHead.WSD,
		body="Laksa. Frac +3",
		hands="Chasseur's Gants +3",
		legs="Samnuha Tights",
		feet="Lanun Bottes +3",
		waist="Fotia Belt",
		left_ear="Moonshade Earring",
		right_ear="Ishvara Earring",
		left_ring="Regal Ring",
		right_ring="Apate Ring",
		back=CamulusCape.str_ws
	})


	
	--MIDCAST LOGIC OF DOOM
	sets.midcast = {}
    sets.midcast.RA = set_combine(sets.DamageTaken,{
		-- racc +51, ratk +51
		head="Chasseur's tricorne +2",
		-- racc +46, store TP +6, crit +9
		body="Mummu Jacket +2",
		
		hands="Chasseur's Gants +3",
		-- racc +50, Store TP +10
		legs="Chasseur's Culottes +2",
		-- racc +46, ratk +42
		feet="Meg. Jam. +2",
		-- racc +30, ratk 30, store tp +8
		neck="Iskur Gorget",
		-- racc +10, ratk +10, store tp +4
		waist="Yemaya Belt",
		-- ratk +25, AGI+10, matk +10, recycle +10
		left_ring="Dingir Ring",
		-- AGI +10, store TP +5
		right_ring="Ilabrat Ring",
		-- ratk +4, store tp +4, agi +2
		left_ear="Neritic Earring",
		-- racc +7, ratk +7, store tp +4
		right_ear="Enervating Earring",
		-- racc +30, ratk 20, AGI +20, store tp +10
		back=CamulusCape.storetp
	})

    sets.midcast.RA.TripleShot = set_combine(sets.midcast.RA,{
		-- Triple shot +4, Triple Shot Damage +10
		head="Oshosi Mask",
		-- Triple shot +12
		body="Chasseur's Frac +2",
		-- Racc 44, ratk 76, might become quad shot
		hands="Lanun Gants +3",
		-- Snapshot +10, Triple shot +5
		legs="Oshosi Trousers",
		-- racc +4, store tp +2
		right_ear="Volley Earring",
		-- Triple Shot +5
		back=CamulusCape.storetp
	})

    sets.midcast.RA.TripleShotCrit = set_combine(sets.midcast.RA.TripleShot,{
		head="Malignance chapeau",
		body="Meg. Cuirie +2",
		--  racc 52 , ratt 52 macc, 8% WSD, crit rate 7%
		hands="Chasseur's Gants +3",
		legs="Darraigner's Brais",
		feet="Oshosi Leggings",
		left_ring="Mummu Ring",
		right_ring="Begrudging Ring",
		-- TODO: K. Kachina Belt +1
		-- TODO: Critrate cape
	})	
	
	--Engaged Sets--
	sets.engaged = {}
--				    	    1		     2           3 		   	   		 			4 				   5			6
	sets.engaged.index = {'Movement', 'TP', 'TakingLessPhysicalDamage', 'TakingLessMagicDamage', 'Accuracy', 'RangedAccuracy'}
	engaged_ind = 1 
	
		-- This needs to be the best TP set imaginable. TA, DW, Quadruple shit, Double attack. Really push this shit!
    sets.engaged.TP = set_combine(sets.DamageTaken, {
        head="Adhemar Bonnet +1",
        body="Adhemar Jacket +1",
        hands=HercHands.TP,
        legs="Chasseur's Culottes +2",
		feet=HercFeet.TP,
        neck="Lissome necklace",
        left_ear="Suppanomimi",
        right_ear="Cessance Earring",
        left_ring="Petrov Ring",
        right_ring="Epona's Ring",
        waist="Windbuffet belt +1",
        back=CamulusCape.melee_double_attack
    })
	
	sets.engaged.TakingLessPhysicalDamage = set_combine(sets.DamageTaken, {})
	sets.engaged.TakingLessMagicDamage = set_combine(sets.DamageTaken, {})
	
	sets.engaged.Accuracy = set_combine(sets.DamageTaken, {hands="Chasseur's Gants +3"})
	sets.engaged.RangedAccuracy = set_combine(sets.DamageTaken, {})
	sets.engaged.Movement = set_combine(sets.idle, {})
	
	
	
	--Weapon Sets--
	sets.weapon = {}
	sets.weapon.index = {'DWSavageCOR','SavageCORShield','Tauret','FomalhautRostamShield','DeathPenaltyRostamShield','FomalhautDivergence','DeathPenaltyDivergence'}
	weapon_ind = 1
	
	sets.weapon.DWSavageCOR = {
		main="Naegling",
		sub="Blurred Knife +1",
		range="Anarchy +2"
	}

	sets.weapon.SavageCORShield = {
		main="Naegling",
		sub="Nusku Shield",
		range="Anarchy +2"
	}
	
	sets.weapon.Tauret = {
		main="Tauret",
		sub="Blurred Knife +1",
		range="Anarchy +2"
	}
	
	sets.weapon.FomalhautRostamShield = {
		main={name="Rostam",bag="Wardrobe 3"},
		sub="Nusku Shield",
		range="Fomalhaut"
	}
	
	sets.weapon.DeathPenaltyRostamShield = {
		main={name="Rostam",bag="Wardrobe 3"},
		sub="Nusku Shield",
		range="Death Penalty"
	}
	
	sets.weapon.FomalhautDivergence = {
		main={name="Rostam",bag="Wardrobe 3"},
		sub={name="Rostam",bag="Wardrobe 4"},
		range="Fomalhaut"
	}

	sets.weapon.DeathPenaltyDivergence = {
		main={name="Rostam",bag="Wardrobe 3"},
		sub={name="Rostam",bag="Wardrobe 4"},
		range="Death Penalty"
	}	
	
end


--Precast Function
function precast(spell,abil)

	--Weapon skill lookups
	if spell.name == "Savage Blade" then
		equip(sets.SavageBlade)
	end
	if spell.name == "Leaden Salute" then
		equip(sets.LeadenSalute)
	end
	if spell.name == "Last Stand" then
		equip(sets.LastStand)
	end
	if spell.name == "Wildfire" then
		equip(sets.Wildfire)
	end

 --Corsair Rolls	
	if string.find(spell.english,'Blitzer') then
		equip(sets.BlitzersRoll)
	elseif string.find(spell.english,'Allies') then
		equip(sets.AlliesRoll)
	elseif string.find(spell.english,'Tactician') then
		equip(sets.TacticiansRoll)
	elseif string.find(spell.english,'Caster') then
		equip(sets.CastersRoll)
	elseif string.find(spell.english,'Courser') then
		equip(sets.CoursersRoll)
	end
	
	if string.find(spell.english,'Roll') or spell.name == "Double-Up" then
		equip(sets.CorsairRoll)
	end
	
	
	if spell.name == "Random Deal" then
		equip(sets.RandomDeal)
	end
	if spell.name == "Wild Card" then
		equip(sets.WildCard)
	end
	if spell.name == "Snake Eye" then
		equip(sets.SnakeEye)
	end
	if spell.name == "Fold" then
		equip(sets.Fold)
	end
	if spell.name == "Triple Shot" then
		equip(sets.TripleShot)
	end
	
	
end




--Midcast Function
function midcast(spell,abil)

end




--Aftercast Function
function aftercast(spell)
  equip_current()
  if (spell.english == 'Triple Shot') then
		equip({body="Chasseur's Frac +2", hands="Lanun gants +3"})
  end
  --Just running a lil somethin-somethin to track Shadows
  if string.find(spell.name,'Utsusemi') and not spell.interrupted then
    if spell.name == 'Utsusemi: Ichi' then
      ShadowType = 'Ichi'
    elseif spell.name == 'Utsusemi: Ni' then
      ShadowType = 'Ni'
    end
  end
end


--This function should only get kicked off when you're engaging.  
--If I want a manual 'Refresh' set or 'MDT' or 'DT' set I can do that in game with equipsets.  
--But I don't want to fuck myself by ignoring the engaged check.
--I'm also deciding not to use a Binding Key to put my in a MDT, PDT, DT, Refresh Set.
--I dunno, I'm just against hitting Ctrl+f# all the time for that shit
function equip_current()
	equip(sets.weapon[sets.weapon.index[weapon_ind]]) 
	equip(sets.engaged[sets.engaged.index[engaged_ind]]) 
	if (buffactive['Triple Shot']) then
		equip({body="Chasseur's Frac +2", hands="Lanun gants +3"})
	end
end

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
	send_command('@input /tell <me> Wakies Wakies  For some Weird Ass Reason my character died')
	end
end)


