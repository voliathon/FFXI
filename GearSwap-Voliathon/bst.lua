-------------------------------------------------------------------------------------------------------------------
-- ctrl+F12 cycles Idle modes


-------------------------------------------------------------------------------------------------------------------
							-- THE STUFF YOU CARE ABOUT STARTS AFTER LINE 101 --
							-- THE STUFF YOU CARE ABOUT STARTS AFTER LINE 101 --
							-- THE STUFF YOU CARE ABOUT STARTS AFTER LINE 101 --
							-- THE STUFF YOU CARE ABOUT STARTS AFTER LINE 101 --
							-- THE STUFF YOU CARE ABOUT STARTS AFTER LINE 101 --
							-- THE STUFF YOU CARE ABOUT STARTS AFTER LINE 101 --
							-- THE STUFF YOU CARE ABOUT STARTS AFTER LINE 101 --
							-- THE STUFF YOU CARE ABOUT STARTS AFTER LINE 101 --
							-- THE STUFF YOU CARE ABOUT STARTS AFTER LINE 101 --
-------------------------------------------------------------------------------------------------------------------
-- Initialization function that defines sets and variables to be used.
-------------------------------------------------------------------------------------------------------------------

-- IMPORTANT: Make sure to also get the Mote-Include.lua file (and its supplementary files) to go with this.

-- Initialization function for this job file.
function get_sets()
    mote_include_version = 2

	-- Load and initialize the include file.
	include('Mote-Include.lua')
end

function job_setup()

	get_combat_form()

end


function user_setup()
        state.IdleMode:options('Normal', 'Reraise')
		state.OffenseMode:options('Normal', 'PetDT')
		state.CorrelationMode = M{['description']='Correlation Mode', 'Neutral', 'HighAcc', 'MaxAcc',}
        send_command('bind ^f8 gs c cycle CorrelationMode')
       

       
 end
     

-- Complete list of Ready moves to use with Sic & Ready Recast -5 Desultor Tassets.
ready_moves_to_check = S{'Sic','Whirl Claws','Dust Cloud','Foot Kick','Sheep Song','Sheep Charge','Lamb Chop',
	'Rage','Head Butt','Scream','Dream Flower','Wild Oats','Leaf Dagger','Claw Cyclone','Razor Fang',
	'Roar','Gloeosuccus','Palsy Pollen','Soporific','Cursed Sphere','Venom','Geist Wall','Toxic Spit',
	'Numbing Noise','Nimble Snap','Cyclotail','Spoil','Rhino Guard','Rhino Attack','Power Attack',
	'Hi-Freq Field','Sandpit','Sandblast','Venom Spray','Mandibular Bite','Metallic Body','Bubble Shower',
	'Bubble Curtain','Scissor Guard','Big Scissors','Grapple','Spinning Top','Double Claw','Filamented Hold',
	'Frog Kick','Queasyshroom','Silence Gas','Numbshroom','Spore','Dark Spore','Shakeshroom','Blockhead',
	'Secretion','Fireball','Tail Blow','Plague Breath','Brain Crush','Infrasonics','??? Needles',
	'Needleshot','Chaotic Eye','Blaster','Scythe Tail','Ripper Fang','Chomp Rush','Intimidate','Recoil Dive',
	'Water Wall','Snow Cloud','Wild Carrot','Sudden Lunge','Spiral Spin','Noisome Powder','Wing Slap',
	'Beak Lunge','Suction','Drainkiss','Acid Mist','TP Drainkiss','Back Heel','Jettatura','Choke Breath',
	'Fantod','Charged Whisker','Purulent Ooze','Corrosive Ooze','Tortoise Stomp','Harden Shell','Aqua Breath',
	'Sensilla Blades','Tegmina Buffet','Molting Plumage','Swooping Frenzy','Pentapeck','Sweeping Gouge',
	'Zealous Snort','Somersault ','Tickling Tendrils','Stink Bomb','Nectarous Deluge','Nepenthic Plunge',
        'Pecking Flurry','Pestilent Plume','Foul Waters','Spider Web','Sickle Slash','Frogkick','Ripper Fang','Scythe Tail','Chomp Rush'}

		
mab_ready_moves = S{
	 'Cursed Sphere','Venom','Toxic Spit',
	 'Venom Spray','Bubble Shower',
	 'Fireball','Plague Breath',
	 'Snow Cloud','Acid Spray','Silence Gas','Dark Spore',
	 'Charged Whisker','Purulent Ooze','Aqua Breath','Stink Bomb',
	 'Nectarous Deluge','Nepenthic Plunge','Foul Waters','Dust Cloud','Sheep Song','Scream','Dream Flower','Roar','Gloeosuccus','Palsy Pollen',
	 'Soporific','Geist Wall','Numbing Noise','Spoil','Hi-Freq Field',
	 'Sandpit','Sandblast','Filamented Hold',
	 'Spore','Infrasonics','Chaotic Eye',
	 'Blaster','Intimidate','Noisome Powder','TP Drainkiss','Jettatura','Spider Web',
	 'Corrosive Ooze','Molting Plumage','Swooping Frenzy',
	 'Pestilent Plume',}


-- List of abilities to reference for applying Treasure Hunter +1 via Chaac Belt.


function file_unload()
	if binds_on_unload then
		binds_on_unload()
	end

	-- Unbinds the Jug Pet, Reward, Correlation, Treasure, PetMode, MDEF Mode hotkeys.
	send_command('unbind !=')
	send_command('unbind ^=')
	send_command('unbind !f8')
	send_command('unbind ^f8')
	send_command('unbind @f8')
	send_command('unbind ^f11')
end



		-- HERE IS THE BEGINNING OF THE GEARSWAP AS FAR AS YOU SHOULD BE CONCERNED FOR EDITING GEAR --
		-- HERE IS THE BEGINNING OF THE GEARSWAP AS FAR AS YOU SHOULD BE CONCERNED FOR EDITING GEAR --
		-- HERE IS THE BEGINNING OF THE GEARSWAP AS FAR AS YOU SHOULD BE CONCERNED FOR EDITING GEAR --
		-- HERE IS THE BEGINNING OF THE GEARSWAP AS FAR AS YOU SHOULD BE CONCERNED FOR EDITING GEAR --
		-- HERE IS THE BEGINNING OF THE GEARSWAP AS FAR AS YOU SHOULD BE CONCERNED FOR EDITING GEAR --
		-- HERE IS THE BEGINNING OF THE GEARSWAP AS FAR AS YOU SHOULD BE CONCERNED FOR EDITING GEAR --
		-- HERE IS THE BEGINNING OF THE GEARSWAP AS FAR AS YOU SHOULD BE CONCERNED FOR EDITING GEAR --
		-- HERE IS THE BEGINNING OF THE GEARSWAP AS FAR AS YOU SHOULD BE CONCERNED FOR EDITING GEAR --
		-- HERE IS THE BEGINNING OF THE GEARSWAP AS FAR AS YOU SHOULD BE CONCERNED FOR EDITING GEAR --
		-- HERE IS THE BEGINNING OF THE GEARSWAP AS FAR AS YOU SHOULD BE CONCERNED FOR EDITING GEAR --
		

-- BST gearsets
function init_gear_sets()


	-- PRECAST SETS
        sets.precast.JA['Killer Instinct'] = {head="Ankusa Helm"}
		
		sets.precast.JA['Bestial Loyalty'] = {}
		
		sets.precast.JA['Call Beast'] = sets.precast.JA['Bestial Loyalty']
		
        sets.precast.JA.Familiar = {}
		
		sets.precast.JA.Tame = {}
		
		sets.precast.JA.Spur = {feet="Nukumi Ocreae +1",back="Artio's mantle"}

        
	--This is what will equip when you use Reward.  No need to manually equip Pet Food Theta.
	sets.precast.JA.Reward = {
		ammo="Pet Food Theta",
		head="Meghanada Visor +2",
		body="Ankusa Jackcoat +1",
		hands="Meg. Gloves +2",
		legs={ name="Emicho Hose", augments={'Pet: Accuracy+15','Pet: Attack+15','Pet: "Dbl. Atk."+3',}},
		feet="Ankusa Gaiters +1",
		neck="Sanctity Necklace",
		waist="Isa Belt",
		left_ear="Gwati Earring",
		right_ear="Domes. Earring",
		left_ring="Beeline Ring",
		right_ring="Defending Ring",
		back="Artio's mantle"
	}

	--This is your base FastCast set that equips during precast for all spells/magic.
    sets.precast.FC = {
		ammo="Amar Cluster",
		head={ name="Valorous Mask", augments={'Pet: Attack+25 Pet: Rng.Atk.+25','Pet: "Dbl.Atk."+4 Pet: Crit.hit rate +4','Pet: Accuracy+5 Pet: Rng. Acc.+5',}},
		body={ name="Taeon Tabard", augments={'Pet: Accuracy+23 Pet: Rng. Acc.+23','Pet: "Dbl. Atk."+5','Pet: Damage taken -3%',}},
		hands="Meg. Gloves +2",
		legs={ name="Taeon Tights", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
		feet={ name="Taeon Boots", augments={'Pet: Attack+22 Pet: Rng.Atk.+22','Pet: "Dbl. Atk."+3','Pet: Haste+5',}},
		neck="Sanctity Necklace",
		waist="Ninurta's Sash",
		left_ear="Loquac. Earring",
		right_ear="Magnetic Earring",
		left_ring="Veneficium Ring",
		right_ring="Rajas Ring",
		back="Pastoralist's Mantle"
	}
			
         			
	sets.midcast.Stoneskin = {
		ammo="Amar Cluster",
		head={ name="Valorous Mask", augments={'Pet: Attack+25 Pet: Rng.Atk.+25','Pet: "Dbl.Atk."+4 Pet: Crit.hit rate +4','Pet: Accuracy+5 Pet: Rng. Acc.+5',}},
		body={ name="Taeon Tabard", augments={'Pet: Accuracy+23 Pet: Rng. Acc.+23','Pet: "Dbl. Atk."+5','Pet: Damage taken -3%',}},
		hands="Meg. Gloves +2",
		legs={ name="Taeon Tights", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
		feet={ name="Taeon Boots", augments={'Pet: Attack+22 Pet: Rng.Atk.+22','Pet: "Dbl. Atk."+3','Pet: Haste+5',}},
		neck="Sanctity Necklace",
		waist="Ninurta's Sash",
		left_ear="Loquac. Earring",
		right_ear="Earthcry Earring",
		left_ring="Veneficium Ring",
		right_ring="Rajas Ring",
		back="Pastoralist's Mantle"
	}

				
        -- WEAPONSKILLS
		
		
        -- Default weaponskill set.
	sets.precast.WS = {
		ammo="Amar Cluster",
		head="Meghanada Visor +2",
		body="Uac Jerkin",
		hands="Meg. Gloves +2",
		legs="Meg. Chausses +2",
		feet="Meg. Jam. +2",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Vulcan's Pearl",
		right_ear="Brutal Earring",
		left_ring="K'ayres Ring",
		right_ring="Rajas Ring",
		back="Vespid Mantle"
	}

	
        -- Specific weaponskill sets.
    sets.precast.WS['Ruinator'] = set_combine(sets.precast.WS, {neck="Fotia Gorget"})
				
    sets.precast.WS['Onslaught'] = set_combine(sets.precast.WS, {
		ammo="Amar Cluster",
		head="Meghanada Visor +2",
		body="Uac Jerkin",
		hands="Meg. Gloves +2",
		legs="Meg. Chausses +2",
		feet="Meg. Jam. +2",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Vulcan's Pearl",
		right_ear="Brutal Earring",
		left_ring="K'ayres Ring",
		right_ring="Rajas Ring",
		back="Vespid Mantle"
	})
			
	

	--Looks like MAB impacts Primal Rend babe
	sets.precast.WS['Primal Rend'] = {
		ammo="Amar Cluster",
		head="Meghanada Visor +2",
		body="Uac Jerkin",
		hands="Meg. Gloves +2",
		legs="Meg. Chausses +2",
		feet="Meg. Jam. +2",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Vulcan's Pearl",
		right_ear="Brutal Earring",
		left_ring="K'ayres Ring",
		right_ring="Rajas Ring",
		back="Vespid Mantle"
	}

	
		
	sets.precast.WS['Cloudsplitter'] = set_combine(sets.precast.WS['Primal Rend'],{		
		ammo="Amar Cluster",
		head="Meghanada Visor +2",
		body="Uac Jerkin",
		hands="Meg. Gloves +2",
		legs="Meg. Chausses +2",
		feet="Meg. Jam. +2",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Vulcan's Pearl",
		right_ear="Brutal Earring",
		left_ring="K'ayres Ring",
		right_ring="Rajas Ring",
		back="Vespid Mantle"
	})

	-- PET SIC & READY MOVES


--This is your base Ready move set, activating for physical Ready moves. Merlin/D.Tassets are accounted for already. 
	sets.midcast.Pet.WS = {
		ammo="Amar Cluster",
		head={ name="Valorous Mask", augments={'Pet: Attack+25 Pet: Rng.Atk.+25','Pet: "Dbl.Atk."+4 Pet: Crit.hit rate +4','Pet: Accuracy+5 Pet: Rng. Acc.+5',}},
		body={ name="Taeon Tabard", augments={'Pet: Accuracy+23 Pet: Rng. Acc.+23','Pet: "Dbl. Atk."+5','Pet: Damage taken -3%',}},
		hands="Tali'ah gages +1",
		legs={ name="Taeon Tights", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
		feet={ name="Taeon Boots", augments={'Pet: Attack+22 Pet: Rng.Atk.+22','Pet: "Dbl. Atk."+3','Pet: Haste+5',}},
		neck="Sanctity Necklace",
		waist="Moepapa Stone",
		left_ear="Suppanomimi",
		right_ear="Domes. Earring",
		left_ring="Beeline Ring",
		right_ring="Rajas Ring",
		back="Pastoralist's Mantle"
	}
	
	sets.midcast.Pet.Neutral = set_combine(sets.midcast.Pet.WS, {  
		ammo="Amar Cluster",
		head="Emicho Coronet",
		body={ name="Taeon Tabard", augments={'Pet: Accuracy+23 Pet: Rng. Acc.+23','Pet: "Dbl. Atk."+5','Pet: Damage taken -3%',}},
		hands="Tali'ah gages +1",
		legs={ name="Taeon Tights", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
		feet={ name="Taeon Boots", augments={'Pet: Attack+22 Pet: Rng.Atk.+22','Pet: "Dbl. Atk."+3','Pet: Haste+5',}},
		neck="Sanctity Necklace",
		waist="Moepapa Stone",
		left_ear="Suppanomimi",
		right_ear="Domes. Earring",
		left_ring="Beeline Ring",
		right_ring="Rajas Ring",
		back="Pastoralist's Mantle"
	})
			
			
	sets.midcast.Pet.HighAcc = set_combine(sets.midcast.Pet.WS, {
		ammo="Amar Cluster",
		head="Tali'ah turban +1",
		body={ name="Taeon Tabard", augments={'Pet: Accuracy+23 Pet: Rng. Acc.+23','Pet: "Dbl. Atk."+5','Pet: Damage taken -3%',}},
		hands="Tali'ah gages +1",
		legs={ name="Taeon Tights", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
		feet="Tali'ah crackows +1",
		neck="Sanctity Necklace",
		waist="Moepapa Stone",
		left_ear="Suppanomimi",
		right_ear="Domes. Earring",
		left_ring="Beeline Ring",
		right_ring="Rajas Ring",
		back="Pastoralist's Mantle"
	})
			
	sets.midcast.Pet.MaxAcc = set_combine(sets.midcast.Pet.WS, {
		ammo="Amar Cluster",
		head="Tali'ah turban +1",
		body={ name="Taeon Tabard", augments={'Pet: Accuracy+23 Pet: Rng. Acc.+23','Pet: "Dbl. Atk."+5','Pet: Damage taken -3%',}},
		hands="Tali'ah gages +1",
		legs={ name="Taeon Tights", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
		feet="Tali'ah crackows +1",
		neck="Sanctity Necklace",
		waist="Moepapa Stone",
		left_ear="Suppanomimi",
		right_ear="Domes. Earring",
		left_ring="Beeline Ring",
		right_ring="Rajas Ring",
		back="Pastoralist's Mantle"
	})

--This will equip for Magical Ready moves like Fireball
	-- sets.midcast.Pet.MabReady = set_combine(sets.midcast.Pet.WS, {
			-- main="Skullrender",
			-- head={ name="Taeon Chapeau", augments={'Pet: "Mag.Atk.Bns."+24',}},
			-- body={ name="Taeon Tabard", augments={'Pet: "Mag.Atk.Bns."+23','"Fast Cast"+4',}},
			-- hands={ name="Acro Gauntlets", augments={'Pet: "Mag.Atk.Bns."+24',}},
			-- legs={ name="Acro Breeches", augments={'Pet: Mag. Acc.+24',}},
			-- feet={ name="Taeon Boots", augments={'Pet: "Mag.Atk.Bns."+24','"Fast Cast"+2',}},
			-- back="Argocham. Mantle",
			-- sub={ name="Kumbhakarna", augments={'Pet: "Mag.Atk.Bns."+16','Pet: TP Bonus+180',}},
			-- ring1="Thurandaut Ring",})
	
	
	--sets.midcast.Pet.TPBonus = {hands="Nukumi Manoplas +1",}
		
	sets.midcast.Pet.ReadyRecast = {sub="Charmer's Merlin",legs="Desultor Tassets"}

      
        
        -- IDLE SETS (TOGGLE between RERAISE and NORMAL with CTRL+F12)
		
		
		-- Base Idle Set (when you do NOT have a pet out)
    sets.idle = {
		ammo="Amar Cluster",
		head={ name="Valorous Mask", augments={'Pet: Attack+25 Pet: Rng.Atk.+25','Pet: "Dbl.Atk."+4 Pet: Crit.hit rate +4','Pet: Accuracy+5 Pet: Rng. Acc.+5',}},
		body="Emet harness +1",
		hands="Meg. Gloves +2",
		legs="Meg. Chausses +2",
		feet="Meg. Jam. +2",
		neck="Sanctity Necklace",
		waist="Sinew Belt",
		left_ear="Steelflash Earring",
		right_ear="Bladeborn Earring",
		left_ring="K'ayres Ring",
		right_ring="Rajas Ring",
		back="Vespid Mantle"
	}

			
	--sets.idle.Reraise = set_combine(sets.idle, {head="Twilight Helm",body="Twilight Mail"})

	
		-- Idle Set that equips when you have a pet out and not fighting an enemy.
	sets.idle.Pet = set_combine(sets.idle, {
		ammo="Amar Cluster",
		head="Emicho Coronet",
		body={ name="Taeon Tabard", augments={'Pet: Accuracy+23 Pet: Rng. Acc.+23','Pet: "Dbl. Atk."+5','Pet: Damage taken -3%',}},
		hands="Taeon gloves",
		legs={ name="Taeon Tights", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
		feet={ name="Taeon Boots", augments={'Pet: Attack+22 Pet: Rng.Atk.+22','Pet: "Dbl. Atk."+3','Pet: Haste+5',}},
		neck="Sanctity Necklace",
		waist="Moepapa Stone",
		left_ear="Suppanomimi",
		right_ear="Domes. Earring",
		left_ring="Beeline Ring",
		right_ring="Rajas Ring",
		back="Pastoralist's Mantle"
	})
		
		-- Idle set that equips when you have a pet out and ARE fighting an enemy.
	sets.idle.Pet.Engaged = set_combine(sets.idle, {
		ammo="Amar Cluster",
		head="Emicho Coronet",
		body={ name="Taeon Tabard", augments={'Pet: Accuracy+23 Pet: Rng. Acc.+23','Pet: "Dbl. Atk."+5','Pet: Damage taken -3%',}},
		hands="Taeon gloves",
		legs={ name="Taeon Tights", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
		feet={ name="Taeon Boots", augments={'Pet: Attack+22 Pet: Rng.Atk.+22','Pet: "Dbl. Atk."+3','Pet: Haste+5',}},
		neck="Sanctity Necklace",
		waist="Moepapa Stone",
		left_ear="Suppanomimi",
		right_ear="Domes. Earring",
		left_ring="Beeline Ring",
		right_ring="Rajas Ring",
		back="Pastoralist's Mantle"
	})
        


        -- MELEE (SINGLE-WIELD) SETS
	
	-- sets.engaged = {
		-- ammo="Amar Cluster",
		-- head={ name="Valorous Mask", augments={'Pet: Attack+25 Pet: Rng.Atk.+25','Pet: "Dbl.Atk."+4 Pet: Crit.hit rate +4','Pet: Accuracy+5 Pet: Rng. Acc.+5',}},
		-- body={ name="Taeon Tabard", augments={'Pet: Accuracy+23 Pet: Rng. Acc.+23','Pet: "Dbl. Atk."+5','Pet: Damage taken -3%',}},
		-- hands="Meg. Gloves +2",
		-- legs={ name="Taeon Tights", augments={'Pet: Accuracy+25 Pet: Rng. Acc.+25','Pet: "Dbl. Atk."+5','Pet: Damage taken -4%',}},
		-- feet={ name="Taeon Boots", augments={'Pet: Attack+22 Pet: Rng.Atk.+22','Pet: "Dbl. Atk."+3','Pet: Haste+5',}},
		-- neck="Sanctity Necklace",
		-- waist="Moepapa Stone",
		-- left_ear="Suppanomimi",
		-- right_ear="Domes. Earring",
		-- left_ring="Beeline Ring",
		-- right_ring="Rajas Ring",
		-- back="Pastoralist's Mantle"
	-- }
		
	  sets.engaged = {
		ammo="Amar Cluster",
		head={ name="Valorous Mask", augments={'Pet: Attack+25 Pet: Rng.Atk.+25','Pet: "Dbl.Atk."+4 Pet: Crit.hit rate +4','Pet: Accuracy+5 Pet: Rng. Acc.+5',}},
		body="Emet harness +1",
		hands="Meg. Gloves +2",
		legs="Meg. Chausses +2",
		feet="Meg. Jam. +2",
		neck="Sanctity Necklace",
		waist="Sinew Belt",
		left_ear="Steelflash Earring",
		right_ear="Bladeborn Earring",
		left_ring="K'ayres Ring",
		right_ring="Rajas Ring",
		back="Vespid Mantle"
	  }
		
	sets.engaged.PetDT = {
		ammo="Amar Cluster",
		head="Emicho Coronet",
		body={ name="Taeon Tabard", augments={'Pet: Accuracy+23 Pet: Rng. Acc.+23','Pet: "Dbl. Atk."+5','Pet: Damage taken -3%',}},
		hands="Taeon gloves",
		legs="Nukumi Quijotes +1",
		feet={ name="Taeon Boots", augments={'Pet: Attack+22 Pet: Rng.Atk.+22','Pet: "Dbl. Atk."+3','Pet: Haste+5',}},
		neck="Loricate torque +1",
		waist="Moepapa Stone",
		left_ear="Steelflash Earring",
		right_ear="Bladeborn Earring",
		left_ring="Patricius Ring",
		right_ring="Defending Ring",
		back="Pastoralist's Mantle"
	}
				
	     -- MELEE (DUAL-WIELD) SETS FOR DNC AND NIN SUBJOB
		
	sets.engaged.DW = {
		ammo="Amar Cluster",
		head={ name="Valorous Mask", augments={'Pet: Attack+25 Pet: Rng.Atk.+25','Pet: "Dbl.Atk."+4 Pet: Crit.hit rate +4','Pet: Accuracy+5 Pet: Rng. Acc.+5',}},
		body="Emet harness +1",
		hands="Meg. Gloves +2",
		legs="Meg. Chausses +2",
		feet="Meg. Jam. +2",
		neck="Sanctity Necklace",
		waist="Sinew Belt",
		left_ear="Steelflash Earring",
		right_ear="Bladeborn Earring",
		left_ring="K'ayres Ring",
		right_ring="Rajas Ring",
		back="Vespid Mantle"
	}
			
	sets.engaged.DW.PetDT = {
		ammo="Amar Cluster",
		head="Emicho Coronet",
		body={ name="Taeon Tabard", augments={'Pet: Accuracy+23 Pet: Rng. Acc.+23','Pet: "Dbl. Atk."+5','Pet: Damage taken -3%',}},
		hands="Taeon gloves",
		legs="Nukumi Quijotes +1",
		feet={ name="Taeon Boots", augments={'Pet: Attack+22 Pet: Rng.Atk.+22','Pet: "Dbl. Atk."+3','Pet: Haste+5',}},
		neck="Loricate torque +1",
		waist="Moepapa Stone",
		left_ear="Steelflash Earring",
		right_ear="Bladeborn Earring",
		left_ring="Patricius Ring",
		right_ring="Defending Ring",
		back="Pastoralist's Mantle"
	}
	
			
			-- THIS IS THE END OF THE GEARSWAP AS FAR AS YOU SHOULD BE CONCERNED -- 
			-- THIS IS THE END OF THE GEARSWAP AS FAR AS YOU SHOULD BE CONCERNED --
			-- THIS IS THE END OF THE GEARSWAP AS FAR AS YOU SHOULD BE CONCERNED --
			-- THIS IS THE END OF THE GEARSWAP AS FAR AS YOU SHOULD BE CONCERNED --
			-- THIS IS THE END OF THE GEARSWAP AS FAR AS YOU SHOULD BE CONCERNED --
			-- THIS IS THE END OF THE GEARSWAP AS FAR AS YOU SHOULD BE CONCERNED --
			-- THIS IS THE END OF THE GEARSWAP AS FAR AS YOU SHOULD BE CONCERNED --
			-- THIS IS THE END OF THE GEARSWAP AS FAR AS YOU SHOULD BE CONCERNED --
			-- THIS IS THE END OF THE GEARSWAP AS FAR AS YOU SHOULD BE CONCERNED --
			-- THIS IS THE END OF THE GEARSWAP AS FAR AS YOU SHOULD BE CONCERNED --


end

-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks that are called to process player actions at specific points in time.
-------------------------------------------------------------------------------------------------------------------

function job_precast(spell, action, spellMap, eventArgs)
	cancel_conflicting_buffs(spell, action, spellMap, eventArgs)

     
	

-- Define class for Sic and Ready moves.
        if ready_moves_to_check:contains(spell.name) and pet.status == 'Engaged' then
                classes.CustomClass = "WS"
		equip(sets.midcast.Pet.ReadyRecast)
        end
end



function job_pet_midcast(spell, action, spellMap, eventArgs)

	
        end
-- Return true if we handled the aftercast work.  Otherwise it will fall back
-- to the general aftercast() code in Mote-Include.
function job_aftercast(spell, action, spellMap, eventArgs)

if spell.type == "Monster" and not spell.interrupted then

 equip(set_combine(sets.midcast.Pet.WS, sets.midcast.Pet[state.CorrelationMode.value]))

	if mab_ready_moves:contains(spell.english) and pet.status == 'Engaged' then
 equip(sets.midcast.Pet.MabReady)
 end
 
	if buffactive['Unleash'] then
                --hands={ name="Valorous Mitts", augments={'Pet: Attack+30 Pet: Rng.Atk.+30','Pet: "Store TP"+10','System: 1 ID: 1792 Val: 13','Pet: Accuracy+3 Pet: Rng. Acc.+3',}}
        end
 

 eventArgs.handled = true
 end


end

function job_state_change(stateField, newValue, oldValue)
	if stateField == 'Correlation Mode' then
		state.CorrelationMode:set(newValue)
	end
end

function get_combat_form()
	if player.sub_job == 'NIN' or player.sub_job == 'DNC' then
		state.CombatForm:set('DW')
	else
	     state.CombatForm:reset()
	     end

end

