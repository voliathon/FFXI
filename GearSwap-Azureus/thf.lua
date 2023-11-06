-- https://www.bg-wiki.com/bg/Community_Thief_Guide#TP_Sets
-- Will eventually get more and more gear that is mentioned from the community Thief Site...

function get_sets()
-- Set macro book/set --
    send_command('input /macro book 1;wait .1;input /macro set 1') -- set macro book/set here	
	
-- Binds for modes
	-- Toggle Weapon F8 Key
	send_command('bind !f8 gs c C8') 
	send_command('bind ^f8 gs c Reverse Toggle Weapon')
	send_command('bind ^f9 gs c C9') 

	-- Utilities --	
    SA = false
    TA = false	

	-- Ability Mapping --
	THStep = S{"Quickstep","Box Step","Stutter Step","Animated Flourish"}

	-- Engaged Sets Toggle--
    sets.engaged = {}
    sets.engaged.index = {"TreasureHunter","TP","Accuracy","Tank","Evasion"}
	engaged_ind = 1

    sets.engaged.TreasureHunter = {
		ammo="Ginsen",
		head="Mummu Bonnet +2",
		body="Volte Jupon",
		hands={ name="Plun. Armlets +3", augments={'Enhances "Perfect Dodge" effect'}},
		legs="Volte Hose",
		feet="Skulk. Poulaines +2",
		neck="Anu Torque",
		waist="Chaac Belt",
		left_ear="Brutal Earring",
		right_ear="Odr Earring",
		left_ring="Epona's Ring",
		right_ring="Hetairoi Ring",
		back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10','Phys. dmg. taken-10%'}}
	}
	
	sets.engaged.TP = {
		ammo="Ginsen",
		head={ name="Dampening Tam", augments={'DEX+10','Accuracy+15','Mag. Acc.+15','Quadruple Attack +3',}},
		body={ name="Herculean Vest", augments={'INT+5','"Dbl.Atk."+2','Quadruple Attack +3','Accuracy+6 Attack+6',}},
		hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		legs="Samnuha tights",
		feet="Malignance Boots",
		neck="Clotharius Torque",
		waist="Windbuffet Belt +1",
		left_ear="Brutal Earring",
		right_ear="Telos Earring",
		left_ring="Chirich Ring +1",
		right_ring="Hetairoi Ring",
		back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10','Phys. dmg. taken-10%'}}
	}
	
	sets.engaged.Accuracy =  {
		ammo="Yamarang",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Sanctity Necklace",
		waist="Eschan Stone",
		left_ear="Odr Earring",
		right_ear="Telos Earring",
		left_ring="Chirich Ring +1",
		right_ring="Chirich Ring +1",
		back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%',}}
	}

	 sets.engaged.Tank = {
		 ammo="Staunch tathlum",
		 head="Malignance Chapeau",
		 body="Malignance tabard",
		 hands="Malignance gloves",
		 legs="Malignance tights",
		 feet="Skulker's Poulaines +2",
		 neck="Loricate Torque +1",
		 waist="Flume belt",
		 left_ear="Infused Earring",
		 right_ear="Eabani Earring",
		 left_ring="Fortified Ring",
		 right_ring="Defending Ring",
		 back="Repulse Mantle"
	 }	
	
	sets.engaged.Evasion = {
		ammo="Yamarang",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Warder's Charm",
		waist="Kasiri Belt",
		left_ear="Eabani Earring",
		right_ear="Infused Earring",
		left_ring="Defending Ring",
		right_ring="Fortified Ring",
		back="Relucent cape"
	}	
	

	-- Job Abilities Sets --
    sets.JA = {}
    sets.JA.Waltz = {head="Mummu Bonnet +2", legs="Dashing subligar"}
	sets.JA.Step = 	{}
    sets.JA.Stun = {}
	
    sets.JA['Sneak Attack'] = {}
    sets.JA.SATH = set_combine(sets.JA['Sneak Attack'], { hands="Plun. Armlets +3", feet="Skulker's Poulaines +2"})

    sets.JA['Trick Attack'] = set_combine(sets.JA['Sneak Attack'], {hands="Pillager's Armlets +2"})
    sets.JA['Trick Attack'] = set_combine(sets.JA['Sneak Attack'], {hands="Pillager's Armlets +2"})
	sets.JA.TATH = set_combine(sets.JA['Trick Attack'], { 
		hands="Pillager's Armlets +2", 
		feet="Skulker's Poulaines +2"
	})
	
	sets.JA.SATA = set_combine(sets.JA['Sneak Attack'], {})
	sets.JA["Assassin's Charge"] = {feet="Plun. Poulaines +1"}
	sets.JA['Feint'] = {legs="Plunderer's Culottes"}
	sets.JA['Conspirator'] = {body="Skulker's Vest +2"}
	sets.JA['Steal'] = { 
		hands="Pillager's Armlets +2", 
		legs="Pillager's Culottes +2", 
		feet="Pillager's Poulaines +2", 
		neck="Pentalagus charm"
	}
	sets.JA['Mug'] = {head="Plunderer's Bonnet"}
	sets.JA['Despoil'] = {feet="Skulker's Poulaines +2"}
	sets.JA['Accomplice'] = {head="Skulker's Bonnet +1",}
	sets.JA['Flee'] = {feet="Pillager's Poulaines +2"}
	sets.JA['Hide'] = {body="Pillager's Vest +2"}
	sets.JA['Perfect Dodge'] = {hands="Plun. Armlets +3"}
	
	
 -- Weapon Skill Sets
 -- Generic Sets
    sets.WSD = {	
		ammo="Yetshila +1",
		head="Pillager's bonnet +3",
		body="Skulker's Vest +2",
		hands="Meg. Gloves +2",
		legs={ name="Herculean Trousers", augments={'AGI+4','Attack+10','Weapon skill damage +6%','Mag. Acc.+4 "Mag.Atk.Bns."+4',}},
		feet={ name="Herculean Boots", augments={'Enmity-4','"Blood Pact" ability delay -3','Weapon skill damage +8%','Accuracy+20 Attack+20','Mag. Acc.+9 "Mag.Atk.Bns."+9'}},
		neck="Fotia Gorget",
		waist="Grunfeld Rope",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250'}},
		right_ear="Odr Earring",
		left_ring="Epaminondas's Ring",
		right_ring="Hetairoi Ring",
		back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%',}}
	}
	
	sets.Evisceration = {
		ammo="Yetshila +1",
		head={ name="Adhemar Bonnet +1", augments={'STR+12','DEX+12','Attack+20',}},
		body={ name="Herculean Vest", augments={'INT+5','"Dbl.Atk."+2','Quadruple Attack +3','Accuracy+6 Attack+6',}},
		hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		legs="Meg. Chausses +2",
		feet="Malignance Boots",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Odr Earring",
		left_ring="Epaminondas's Ring",
		right_ring="Hetairoi Ring",
		back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%',}}	
	}
	
    sets.Aeolian = {	
		ammo="Pemphredo Tathlum",
		head="Nyame Helm",
		body={ name="Herculean Vest", augments={'Phys. dmg. taken -3%','"Mag.Atk.Bns."+21','Weapon skill damage +6%','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet={ name="Herculean Boots", augments={'Enmity-4','"Blood Pact" ability delay -3','Weapon skill damage +8%','Accuracy+20 Attack+20','Mag. Acc.+9 "Mag.Atk.Bns."+9',}},
		neck="Baetyl Pendant",
		waist="Orpheus's Sash",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Friomisi Earring",
		left_ring="Epaminondas's Ring",
		right_ring="Dingir Ring",
		back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%',}}
	}
	
---- .:: Preshot Sets ::. ---->
	sets.preshot = {}
	sets.preshot.RA = {}	
	
 -- Precast Sets  --
	sets.precast = {}
	sets.precast.Fastcast = {}
	sets.precast['Utsusemi'] = {	
		ammo="Yetshila +1",
		head="Adhemar Bonnet +1",
		body="Adhemar Jacket +1",
		hands="Mummu Wrists +2",
		legs="Malignance tights",
		feet="Mummu Gamash. +2",
		neck="Sanctity Necklace",
		waist="Ninurta's Sash",
		left_ear="Loquac. Earring",
		right_ear="Magnetic Earring",
		left_ring="Veneficium Ring",
		right_ring="Rajas Ring",
		back="Repulse Mantle"
	}
		
	
 -- Midcast Sets --	
	sets.midcast = {}
	sets.midcast['Utsusemi'] = set_combine(sets.precast['Utsusemi'], {})
	
	
 -- Weapon Toggle--
  sets.weapon = {}
  sets.weapon.index = {'CarnwenhanCentovente', 'CarnwenhanCrepuscularKnife', 'TwashtarCentovente', 'TwashtarCrepuscularKnife','NaeglingCentovente', 'NaeglingCrepuscularKnife', 'TauretCentovente', 'TauretCrepuscularKnife'}
  weapon_ind = 1     
  
  sets.weapon.TwashtarCentovente = {
	main="Twashtar",
	sub="Centovente"
 }  
 sets.weapon.TwashtarCrepuscularKnife = {
	main="Twashtar",
	sub="Crepuscular Knife"
 }  
 sets.weapon.NaeglingCentovente = {
	main="Naegling",
	sub="Centovente"
 }  
 sets.weapon.NaeglingCrepuscularKnife = {
	main="Naegling",
	sub="Crepuscular Knife"
 } 
  sets.weapon.TauretCentovente = {
	main="Tauret",
	sub="Centovente"
 } 
 sets.weapon.TauretCrepuscularKnife = {
	main="Tauret",
	sub="Crepuscular Knife"
 } 
end	
	

-- Precast Function --
function precast(spell,action)
    -- Dancer Abilities --
    if string.find(spell.english, 'Waltz') then
	    equip(sets.JA.Waltz)
    elseif spell.english == 'Violent Flourish' then
        equip(sets.JA.Stun)
	elseif THStep:contains(spell.name) then
        equip(sets.JA.Step)	
	-- Thief Abilities --
	elseif spell.type == 'JobAbility' then
	        equip(sets.JA[spell.english])
        if spell.english=="Sneak Attack" then 	
            SA = true
		else 
            SA = false		
        end
		
        if spell.english=="Trick Attack" then 	
			TA = true
		else
            TA = false		
        end

	-- Weapon Skill --
	-- 50% DEX Modifier Evisceration / Crits per hits
	elseif spell.name =="Evisceration" then
		equip(sets.Evisceration)
	
	-- 80% DEX Modifier Rudra's Storm <--This is a quad hit to Crit Hit DMG+
	-- 60% DEX Modifier Mandalic Stab
    elseif spell.name == "Rudra's Storm" or spell.name == "Mandalic Stab" then
		equip(sets.WSD)

	-- DEX 40% INT 40% Modifier Aeolian Edge | Also pack on all of that MAB+MACC shit
	elseif spell.name == "Aeolian Edge" then
		equip(sets.Aeolian)

	elseif spell.action_type == 'Ranged Attack' then
	    equip(sets.preshot.RA)

	-- Ninja Spells --
	elseif spell.skill == 'Ninjutsu' then
	    equip(sets.precast.Fastcast)
		if string.find(spell.english, 'Utsusemi') then
		    equip(sets.precast['Utsusemi'])
		end
	end	
end	


-- Midcast Functions --
function midcast(spell,action)
	-- Ranged Attacks --
    if spell.action_type == 'Ranged Attack' then
	    equip(sets.midshot.RA)
	-- Ninja Spells --
    elseif spell.skill == 'Ninjutsu' then
	    equip(sets.midcast.Ninjutsu)
		if string.find(spell.english, 'Utsusemi') then
		    equip(sets.midcast['Utsusemi'])
		end
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
	elseif command == 'reverse Engaged set' then
		engaged_ind = engaged_ind -1
		if engaged_ind == 0 then engaged_ind = #sets.engaged.index end
		send_command('@input /echo <----- Gear Set changed to '..sets.engaged.index[engaged_ind]..' ----->')
		equip_current()
	end	 
end
