function SummonerCapes()
	SummonerCapes = {}
	SummonerCapes.SMNDT = {name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}}
	SummonerCapes.BloodPact = {name="Campestres's Cape", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Pet: Accuracy+10 Pet: Rng. Acc.+10'}}

end

function get_sets()
	-- Instantiate SummonerCapes
	SummonerCapes()

	-- Set macro book/set --
    send_command('input /macro book 1;wait .1;input /macro set 3')
	
	-- Binds for modes
	-- Toggle Weapon F8 Key
	send_command('bind !f8 gs c C8') 
	send_command('bind ^f8 gs c Reverse Toggle Weapon')
	
	-- Toggle Engaged sets button, change if you want; currently ALT+F9 toggles forward, CTRL+F9 toggles backwards
    send_command('bind !f9 gs c C9')
	send_command('bind ^f9 gs c Reverse Engaged Set')
	
	-- Toggle Burst Mode
	send_command('bind ^f10 gs c C10')
	-- Default Disabled Burst unless set with F10
	Burst = 'Disabled'
	
    -- Job Abilities for Summoner --
    sets.AstralFlow = {}
    sets.ElementalSiphon = {}
    sets.Apogee = {}
    sets.ManaCede = {}
	sets.AstralConduit = {}
	
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

	-- Need loads of Summon Magic to make this meatier
	sets.AvatarFavor = {}

	sets.BPDelay = {
		ammo="Sancus Sachet +1",
		head="Beckoner's Horn +2",
		body="Con. Doublet +3"
	}

	sets.Ward = {
		main={ name="Espiritus", augments={'Summoning magic skill +15','Pet: Mag. Acc.+30','Pet: Damage taken -4%',}},
		sub="Vox Grip",
		ammo="Sancus Sachet +1",
		head="Evoker's Horn",
		body={ name="Apo. Dalmatica +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
		hands="Lamassu Mitts +1",
		legs={ name="Apogee Slacks +1", augments={'Pet: STR+20','Blood Pact Dmg.+14','Pet: "Dbl. Atk."+4',}},
		feet={ name="Apogee Pumps +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
		neck="Incanter's Torque",
		waist="Lucidity Sash",
		left_ear="Lugalbanda Earring",
		right_ear="Gelos Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back={ name="Conveyance Cape", augments={'Summoning magic skill +2','Pet: Enmity+8','Blood Pact Dmg.+1','Blood Pact ab. del. II -2',}}	
	}

	sets.AvatarTP = {}
	
	sets.AvatarDT = {}

    -- Fast Cast for Summoner --
    sets.FastCast = {}


	-- Enhancing Spells \\Generalized//
    sets.Enhancing = {}
	
	-- Stoneskin
	sets.Stoneskin = set_combine(sets.FastCast,  {
		legs="Querkening Brais"
	})
	
	sets.TP = {}
	

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

  	-- Elemental Magic sets...  When shit needs to die, this is the set to make it happen
	sets.ElementalMagic = {}
	
    sets.Enfeebling = set_combine(sets.FastCast,  {})


	-- Impact whenever the fuck I get the damn cloak
    sets.Impact = {    
      body="Twilight Cloak"
	}

	sets.Accuracy = {}

	-- PDT Set
    sets.PDT = {}

	-- Magic Defense and Magic Defense Set
    sets.MDT = {
		head="Nyame Helm",
		body="Nyame mail",
		hands="Nyame gauntlets",
		legs="Nyame flanchard",
		feet="Nyame sollerets",
		neck="Loricate Torque +1",
		waist="Slipor Sash",
		left_ear="Genmei Earring",
		right_ear="Ethereal Earring",
		left_ring="Gelatinous Ring +1",
		right_ring="Defending Ring"
	}
	
    sets.Movement = {left_ring="Shneddick Ring"}

	sets.Refresh = set_combine(sets.PDT,  {
		ammo="Sancus Sachet +1",
		head="Befouled Crown",
		body={ name="Apo. Dalmatica +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
		hands="Asteria Mitts +1",
		legs={ name="Merlinic Shalwar", augments={'DEX+2','Accuracy+14','"Refresh"+2','Mag. Acc.+11 "Mag.Atk.Bns."+11',}},
		feet={ name="Merlinic Crackows", augments={'INT+1','Pet: "Mag.Atk.Bns."+28','"Refresh"+2','Accuracy+8 Attack+8',}},
		neck="Caller's Pendant",
		waist="Fucho-no-Obi",
		left_ear="Infused Earring",
		right_ear={ name="Beck. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Pet: Accuracy+13 Pet: Rng. Acc.+13','Pet: Mag. Acc.+13','Damage taken-4%',}},
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back={ name="Campestres's Cape", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Pet: Accuracy+10 Pet: Rng. Acc.+10',}}
	})
    



    ------------------------------------------------------------------------------------------------------------------
    -- Weaponskill sets
    ------------------------------------------------------------------------------------------------------------------
	 sets.SavageBlade = {}
	 
	-- Engaged Sets Toggle--
	sets.engaged = {}
	sets.engaged.index = {'TP', 'Movement', 'TakingLessPhysicalDamage', 'TakingLessMagicDamage', 'Accuracy', 'Refresh'}
	engaged_ind = 1  	 
	 
	sets.engaged.TP = set_combine(sets.TP, {}) 
	sets.engaged.Movement = set_combine(sets.Movement, {})
	sets.engaged.TakingLessPhysicalDamage = set_combine(sets.PDT, {})
	sets.engaged.TakingLessMagicDamage = set_combine(sets.MDT, {})
	sets.engaged.Accuracy = set_combine(sets.Accuracy, {})
	sets.engaged.Refresh = set_combine(sets.Refresh, {})
	 
end

 -- Weapon Toggle--
 sets.weapon = {}
 sets.weapon.index = {'Nuke', 'Refresh', 'NaeglingShield'}
 weapon_ind = 1     
  
 sets.weapon.Nuke = {
	main="Marin staff +1",
	sub="Enki Strap"
 } 
 sets.weapon.Refresh = {
	main="Bolelabunga",
	sub="Sacro Bulwark"
 }  
 sets.weapon.NaeglingShield = {
	main="Naegling",
	sub="Sacro Bulwark"
 }
 

function precast(spell,abil)
	if spell.name == "Composure" then
		equip(sets.Composure)
	end
	if spell.name == 'Refresh' or spell.name == 'Refresh II' or spell.name == 'Refresh III' then
		equip(sets.Refresh)
	end
	if spell.action_type == 'Enhancing Magic' then
		equip(sets.FastCast)
	end
	if spell.skill == 'Elemental Magic' then
		equip(sets.ElementalMagic)
		get_obi(spell)
	end
	--WS Lookups
	if spell.name == "Savage Blade" then
		equip(sets.SavageBlade)
	end

	-- Add logic for Waltz
	-- Add logic for Utsusemi
    
end

function midcast(spell)
	if spell.name == "Dispel" then
		equip(sets.Dispel)
	end

	if spell.skill == 'Enhancing Magic' then
		if spell.name == 'Refresh' or spell.name == 'Refresh II' or spell.name == 'Refresh III' then
			equip(sets.Refresh)
		elseif spell.name == 'Stoneskin' then
			equip(sets.Stoneskin)
		else
			--gain and temper hits here
			equip(sets.Enhancing)
		end
	end

	if spell.name == 'Cursna' then
		equip(sets.Cursna)
	end
	if string.find(spell.english,'Cur') then 
		equip(sets.Cure)
	end
	if spell.skill == 'Elemental Magic' then
		equip(sets.ElementalMagic)
	end
	if spell.skill == 'Enfeebling Magic' then
		equip(sets.Enfeebling)
	end	

end

--We need to do some thinking and testing for this set...
function aftercast(spell)
	if string.find(spell.english,'Warp') then
		--do fuck all nothing
	else
		equip_current()
	end
end

--This function should only get kicked off when you're engaging.  
--If I want a manual 'Refresh' set or 'MDT' or 'DT' set I can do that in game with equipsets.  
--But I don't want to fuck myself by ignoring the engaged check.
--I'm also deciding not to use a Binding Key to put my in a MDT, PDT, DT, Refresh Set.
--I dunno, I'm just against hitting Ctrl+f# all the time for that shit
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

function SummonerSpellLogic(spell)
   if spell.name == 'Heavy Strike' then
		equip(sets.BlueMagicPhysicalAcc)
	end

end
