

function SummonerCapes()
	SummonerCapes = {}
	--SummonerCapes.SMNDT = {name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}}
	SummonerCapes.BloodPact = {name="Campestres's Cape", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: Haste+10','Pet: Phys. dmg. taken-10%'}}

end

function get_sets()
	-- Instantiate SummonerCapes
	SummonerCapes()
	
	SMNHybrid = S{'Flaming Crush','Burning Strike'}
	
	SMNPhysical = S{'Mountain Buster','Spinning Dive','Predator Claws','Rush','Chaotic Strike','Volt Strike','Hysteric Assault','Crag Throw','Blindside','Regal Gash','Nether Blast','Punch','Rock Throw','Barracuda Dive','Claw','Welt','Axe Kick','Shock Strike','Camisado','Regal Scratch','Poison Nails','Moonlit Charge','Crescent Fang','Rock Buster','Roundhouse','Tail Whip','Double Punch','Megalith Throw','Double Slap'}
	
	SMNMagic = S{'Meteor Strike','Geocrush','Grand Fall','Wind Blade','Heavenly Strike','Thunderstorm','Tornado II','Level ? Holy','Lunar Bay','Night Terror','Conflag Strike','Impact','Inferno','Earthern Fury','Tidal Wave','Aerial Blast','Clarsach Call','Diamond Dust','Judgment Bolt','Searing Light','Howling Moon','Ruinous Omen','Zantetsuken','Fire II','Stone II','Water II','Aero II','Blizzard II','Thunder II','Thunderspark','Meteorite','Fire IV','Stone IV','Water IV','Aero IV','Blizzard IV','Thunder IV','Sonic Buffet'}
	
	SMNWard = S{'Shining Ruby','Aerial Armor','Frost Armor','Rolling Thunder','Crimson Howl','Lightning Armor','Ecliptic Growl','Glittering Ruby','Earthen Ward','Hastega','Noctoshield','Ecliptic Howl','Dream Shroud','Earthen Armor','Fleet Wind','Inferno Howl','Heavenward Howl','Hastega II','Soothing Current','Crystal Blessing','Katabatic Blades','Healing Ruby','Healing Ruby II','Whispering Wind','Spring Water','Mewing Lullaby','Eerie Eye','Lunar Cry','Lunar Roar','Nightmare','Pavor Nocturnus','Ultimate Terror','Somnolence','Slowga','Tidal Roar','Diamond Storm','Sleepga','Bitter Elegy','Lunatic Voice'}

	Avatar = S{'Ifrit','Shiva','Garuda','Titan','Leviathan','Ramuh','Fenrir','Carbuncle','Diabolos','Siren','Cait Sith'}
	
	-- Set macro book/set --
    send_command('input /macro book 1;wait .1;input /macro set 3')
	
	-- Binds for modes
	-- Toggle Weapon F8 Key
	send_command('bind !f8 gs c C8') 
	send_command('bind ^f8 gs c Reverse Toggle Weapon')
	-- Toggle Engaged F9 Key
    send_command('bind !f9 gs c C9')
	send_command('bind ^f9 gs c Reverse Engaged Set')
	

    -- Job Abilities for Summoner --
    sets.AstralFlow = {}
    sets.ManaCede = { hands="Beckoner's Bracers +2"}
    sets.ElementalSiphon = {
		feet="Beckoner's Pigaches +2",
		back=SummonerCapes.BloodPact,
		waist="Ligeia Sash"
	}
	-- Ifrit's Burning Strike and Flaming Crush are considered Hybrid
	sets.BloodPactHybrid = {
		main="Nirvana",
		sub="Elan Strap +1",
		ammo="Sancus Sachet +1",
		head={ name="Apogee Crown +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
		body="Con. Doublet +3",
		hands={ name="Merlinic Dastanas", augments={'Pet: Mag. Acc.+11 Pet: "Mag.Atk.Bns."+11','Blood Pact Dmg.+9','Pet: DEX+5','Pet: Mag. Acc.+11','Pet: "Mag.Atk.Bns."+13',}},
		legs={ name="Apogee Slacks +1", augments={'Pet: STR+20','Blood Pact Dmg.+14','Pet: "Dbl. Atk."+4',}},
		feet={ name="Apogee Pumps +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
		neck={ name="Smn. Collar +1", augments={'Path: A',}},
		waist="Regal Belt",
		left_ear="Lugalbanda Earring",
		right_ear="Gelos Earring",
		left_ring="Varar Ring +1",
		right_ring="Varar Ring +1",
		back=SummonerCapes.BloodPact	
	}
	-- Blood Pact Sets
	-- BP Damage, Accuracy, Attack, and Pet: Double Attack. 
	sets.BloodPactPhysical = {
		main="Nirvana",
		sub="Elan Strap +1",
		ammo="Sancus Sachet +1",
		head={ name="Helios Band", augments={'Pet: Attack+29 Pet: Rng.Atk.+29','Pet: "Dbl. Atk."+7','Blood Pact Dmg.+7',}},
		body="Con. Doublet +3",
		hands={ name="Merlinic Dastanas", augments={'Pet: Accuracy+16 Pet: Rng. Acc.+16','Blood Pact Dmg.+10','Pet: "Mag.Atk.Bns."+14',}},
		legs={ name="Apogee Slacks +1", augments={'Pet: STR+20','Blood Pact Dmg.+14','Pet: "Dbl. Atk."+4',}},
		feet={ name="Helios Boots", augments={'Pet: Accuracy+30 Pet: Rng. Acc.+30','Pet: "Dbl. Atk."+8','Blood Pact Dmg.+5',}},
		neck={ name="Smn. Collar +1", augments={'Path: A',}},
		waist="Incarnation Sash",
		left_ear="Lugalbanda Earring",
		right_ear="Gelos Earring",
		left_ring="Varar Ring +1",
		right_ring="Varar Ring +1",
		back=SummonerCapes.BloodPact	
	}
	-- BP Damage, Magic Attack, and perhaps Pet: TP Bonus. Avatars seem to have naturally high magic accuracy for their associated element 
	sets.BloodPactMagical = {
		main={ name="Espiritus", augments={'Summoning magic skill +15','Pet: Mag. Acc.+30','Pet: Damage taken -4%',}},
		sub="Elan Strap +1",
		ammo="Sancus Sachet +1",
		head={ name="Apogee Crown +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
		body={ name="Apo. Dalmatica +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
		hands={ name="Merlinic Dastanas", augments={'Pet: Mag. Acc.+11 Pet: "Mag.Atk.Bns."+11','Blood Pact Dmg.+9','Pet: DEX+5','Pet: Mag. Acc.+11','Pet: "Mag.Atk.Bns."+13',}},
		legs={ name="Enticer's Pants", augments={'MP+45','Pet: Accuracy+14 Pet: Rng. Acc.+14','Pet: Mag. Acc.+13','Pet: Damage taken -3%',}},
		feet={ name="Apogee Pumps +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
		neck={ name="Smn. Collar +1", augments={'Path: A',}},
		waist="Regal Belt",
		left_ear="Lugalbanda Earring",
		right_ear="Gelos Earring",
		left_ring="Varar Ring +1",
		right_ring="Varar Ring +1",
		back=SummonerCapes.BloodPact	
	}

	sets.AvatarTP = {
		ammo="Sancus Sachet +1",
		head={ name="Helios Band", augments={'Pet: Attack+29 Pet: Rng.Atk.+29','Pet: "Dbl. Atk."+7','Blood Pact Dmg.+7',}},
		body="Beck. Doublet +2",
		hands="Beck. Bracers +2",
		legs="Enticer's pants",
		feet={ name="Helios Boots", augments={'Pet: Accuracy+30 Pet: Rng. Acc.+30','Pet: "Dbl. Atk."+8','Blood Pact Dmg.+5',}},
		neck="Empath Necklace",
		waist="Klouskap Sash",
		left_ear="Enmerkar Earring",
		right_ear={ name="Beck. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Pet: Accuracy+13 Pet: Rng. Acc.+13','Pet: Mag. Acc.+13','Damage taken-4%',}},
		left_ring="Varar Ring +1",
		right_ring="C. Palug Ring",
		back=SummonerCapes.BloodPact	
	}
	
	sets.AvatarDT = {
		ammo="Sancus Sachet +1",
		head={ name="Helios Band", augments={'Pet: Attack+29 Pet: Rng.Atk.+29','Pet: "Dbl. Atk."+7','Blood Pact Dmg.+7',}},
		body="Beck. Doublet +2",
		hands="Beck. Bracers +2",
		legs="Enticer's pants",
		feet={ name="Helios Boots", augments={'Pet: Accuracy+30 Pet: Rng. Acc.+30','Pet: "Dbl. Atk."+8','Blood Pact Dmg.+5',}},
		neck="Empath Necklace",
		waist="Klouskap Sash",
		left_ear="Enmerkar Earring",
		right_ear="Handler's Earring +1",
		left_ring="Varar Ring +1",
		right_ring="C. Palug Ring",
		back=SummonerCapes.BloodPact		
	}

    -- Fast Cast for Summoner --
    sets.FastCast = {
		ammo="Sancus Sachet +1",
		head={ name="Merlinic Hood", augments={'Mag. Acc.+7','Magic burst dmg.+10%','MND+9','"Mag.Atk.Bns."+9',}},
		body="Shango Robe",
		hands="Asteria Mitts +1",
		legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+1','"Fast Cast"+4','STR+6',}},
		feet={ name="Merlinic Crackows", augments={'INT+1','Pet: "Mag.Atk.Bns."+28','"Refresh"+2','Accuracy+8 Attack+8',}},
		neck="Incanter's Torque",
		waist="Embla Sash",
		left_ear="Malignance Earring",
		right_ear="Loquac. Earring",
		left_ring="Lebeche Ring",
		right_ring="Kishar Ring",
		back={ name="Fi Follet Cape +1", augments={'Path: A',}}	
	}


	-- Enhancing Spells \\Generalized//
    sets.Enhancing = set_combine(sets.FastCast,  {
	
	})
	
	-- Stoneskin
	sets.Stoneskin = set_combine(sets.FastCast,  {
		legs="Querkening Brais"
	})
	
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
		back="Fi follet cape +1"
	})


	-- Protecting the party
    sets.Protect = set_combine(sets.FastCast,  {
		ring1="Sheltered Ring"
	})

	-- MDF the party
    sets.Shell = set_combine(sets.FastCast,  {
		ring1="Sheltered Ring"
	})

    sets.Enfeebling = set_combine(sets.FastCast,  {})


	-- Impact whenever the fuck I get the damn cloak
    sets.Impact = {    
      body="Twilight Cloak"
	}

	sets.SelfAccuracy = {}

    sets.Movement = {left_ring="Shneddick Ring"}

	sets.Refresh = set_combine(sets.PDT,  {
		ammo="Sancus Sachet +1",
		head="Beckoner's Horn +3",
		body={ name="Apo. Dalmatica +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
		hands="Asteria Mitts +1",
		legs={ name="Merlinic Shalwar", augments={'DEX+2','Accuracy+14','"Refresh"+2','Mag. Acc.+11 "Mag.Atk.Bns."+11',}},
		feet={ name="Merlinic Crackows", augments={'INT+1','Pet: "Mag.Atk.Bns."+28','"Refresh"+2','Accuracy+8 Attack+8',}},
		neck="Caller's Pendant",
		waist="Fucho-no-Obi",
		left_ear="Cath Palug Earring",
		right_ear={ name="Beck. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Pet: Accuracy+13 Pet: Rng. Acc.+13','Pet: Mag. Acc.+13','Damage taken-4%',}},
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back=SummonerCapes.BloodPact
	})
    
	sets.SummoningMagicSkill = {
		main={ name="Espiritus", augments={'Summoning magic skill +15','Pet: Mag. Acc.+30','Pet: Damage taken -4%',}},
		sub="Vox Grip",
		ammo="Sancus Sachet +1",
		head="Beckoner's Horn +3",
		body="Beck. Doublet +2",
		hands="Lamassu Mitts +1",
		legs="Beck. Spats +2",
		feet="Beck. Pigaches +2",
		neck="Caller's Pendant",
		waist="Lucidity Sash",
		left_ear="C. Palug Earring",
		right_ear="Andoaa Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back={ name="Conveyance Cape", augments={'Summoning magic skill +2','Pet: Enmity+8','Blood Pact Dmg.+1','Blood Pact ab. del. II -2',}}	
	}

	-- Need loads of Summon Magic to make this meatier
	sets.AvatarFavor = set_combine(sets.SummoningMagicSkill,  {
		head="Beckoner's Horn +3"
	})

	sets.SummonSet = set_combine(sets.SummoningMagicSkill, {
		right_ear={ name="Beck. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Pet: Accuracy+13 Pet: Rng. Acc.+13','Pet: Mag. Acc.+13','Damage taken-4%',}},
		back=SummonerCapes.BloodPact
	})
	
    ------------------------------------------------------------------------------------------------------------------
    -- Weaponskill sets
    ------------------------------------------------------------------------------------------------------------------
	 -- ACC & MACC
	 sets.GarlandofBliss = {
		ammo={ name="Ghastly Tathlum +1", augments={'Path: A',}},
		head={ name="Nyame Helm", augments={'Path: B',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Null loop",
		waist="Orpheus's Sash",
		left_ear="Malignance Earring",
		right_ear="Friomisi Earring",
		left_ring="Freke Ring",
		right_ring="Cornelia's Ring",
		back="Null shawl"		
	 }
	 
	 -- Stack Accuracy
	 sets.Shattersoul = {}
	 
	 -- Stack MACC
	 sets.ShellCrusher = {}
	 
	 sets.BlackHalo = {}
	 
	-- Engaged Sets Toggle--
	sets.engaged = {}
	sets.engaged.index = {'Refresh', 'AvatarDT', 'Movement', 'AvatarTP', 'SelfAccuracy'}
	engaged_ind = 1  	 
	 
	sets.engaged.Refresh = set_combine(sets.Refresh, {})
	sets.engaged.AvatarDT = set_combine(sets.AvatarDT, {})	
	sets.engaged.Movement = set_combine(sets.Movement, {})
	sets.engaged.AvatarTP = set_combine(sets.AvatarTP, {})
	sets.engaged.SelfAccuracy = set_combine(sets.SelfAccuracy, {}) 

	 
end

 -- Weapon Toggle--
 sets.weapon = {}
 sets.weapon.index = {'Nirvana', 'Refresh'}
 weapon_ind = 1     
  
  sets.weapon.Nirvana = {
	main="Nirvana",
	sub="Elan strap +1"
 }
 sets.weapon.Refresh = {
	main="Bolelabunga",
	sub="Ammurapi Shield"
 }  

 

function precast(spell,abil)

	if spell.action_type == 'Enhancing Magic' then
		equip(sets.FastCast)
	elseif spell.skill == 'Summoning Magic' then
		equip(sets.FastCast)
	end
	
	--WS Lookups
	if spell.name == "Garland of Bliss" then
		equip(sets.GarlandofBliss)
	end
	if spell.name == "Shattersoul" then
		equip(sets.Shattersoul)
	end
	if spell.name == "Shell Crusher" then
		equip(sets.ShellCrusher)
	end
	if spell.name == "Black Halo" then
		equip(sets.BlackHalo)
	end

	if spell.name == "Avatar's Favor" then
		equip(sets.AvatarFavor)
	end	
   
end


function midcast(spell)
	if Avatar:contains(spell.name) then
		equip(sets.SummonSet)
		if spell.name == "Carbuncle" then
			equip({hands="Asteria Mitts +1"})
		elseif spell.name == "Cait Sith" then
			equip({hands="Lamassu Mitts +1"})
		end
	end
	if spell.type == 'BloodPactRage' then
		SummonerRageLogic(spell)
	end
	if spell.type == 'BloodPactWard' then
		SummonerWardLogic(spell)
	end
	if spell.skill == 'Enhancing Magic' then
		if spell.name == 'Stoneskin' then
			equip(sets.Stoneskin)
		else
			--gain and temper hits here
			equip(sets.Enhancing)
		end
	elseif spell.name == 'Cursna' then
		equip(sets.Cursna)
	elseif string.find(spell.name,'Cur') then 
		equip(sets.Cure)
	end

end


--We need to do some thinking and testing for this set...
function aftercast(spell)
	if string.find(spell.name,'Warp') then
		--do fuck all nothing
	else
		equip_current()
	end
end

function equip_current()
	equip(sets.engaged[sets.engaged.index[engaged_ind]]) 
	equip_weapon()
end

function equip_weapon()
	equip(sets.weapon[sets.weapon.index[weapon_ind]])
end

--Function use for Changing the Engaged Set.  Ctrl+F9 is your meal ticket 
--123 is a red color for the text output
--158 is a green color for the text output
function self_command(command)
	if command == 'C8' then -- Toggling Weapons--	
		weapon_ind = weapon_ind +1
		if weapon_ind > #sets.weapon.index then weapon_ind = 1 end
		send_command('@input /echo <----- Gear Set changed to '..sets.weapon.index[weapon_ind]..' ----->')
		equip_weapon()
	elseif command == 'Reverse Toggle Weapon' then --Reverse Toggling of Weapons
		weapon_ind = weapon_ind -1
		if weapon_ind == 0 then weapon_ind = #sets.weapon.index end
		send_command('@input /echo <----- Gear Set changed to '..sets.weapon.index[weapon_ind]..' ----->')
		equip_weapon()
	elseif command == 'C9' then
		engaged_ind = engaged_ind +1
		if engaged_ind > #sets.engaged.index then engaged_ind = 1 end
		send_command('@input /echo <----- Gear Set changed to '..sets.engaged.index[engaged_ind]..' ----->')
		equip_current()
	elseif command == 'Reverse Engaged Set' then
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

--Searching Sets for spells
function SummonerRageLogic(spell)
	--send_command('@input /echo <----- Hit SummonerRageLogic ----->')
	--send_command('@input /echo '..spell.name..' used by Avatar')
    if spell=="Shock Squall" then
        return -- Don't bother for Shock Squall, it already went off by the time we get here
    end
    if spell=="Perfect Defense" then
		equip(sets.SummoningMagicSkill)
	elseif SMNHybrid:contains(spell.name) then
		send_command('@input /echo <----- Hit BloodPactHybrid ----->')
		equip(sets.BloodPactHybrid)
	elseif SMNPhysical:contains(spell.name) then
		send_command('@input /echo <----- Hit BloodPactPhysical ----->')
		equip(sets.BloodPactPhysical)
	elseif SMNMagic:contains(spell.name) then
		send_command('@input /echo <----- Hit BloodPactMagical ----->')
		equip(sets.BloodPactMagical)
	end
end

function SummonerWardLogic(spell)	
	--send_command('@input /echo <----- Hit SummonerWardLogic ----->')
		send_command('@input /echo '..spell.name..' used by Avatar')
	if SMNWard:contains(spell.name) then
		send_command('@input /echo <----- Hit SummoningMagicSkill ----->')
		equip(sets.SummoningMagicSkill)
	end
end

function SummonAvatar(spell)
	
end
