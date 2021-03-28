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
        --sets.precast.JA['Killer Instinct'] = {head="Ankusa Helm +1"}
		
		--sets.precast.JA['Bestial Loyalty'] = {hands="Ankusa Gloves",body="Mirke Wardecors",}
		
		--sets.precast.JA['Call Beast'] = sets.precast.JA['Bestial Loyalty']
		
        --sets.precast.JA.Familiar = {legs="Ankusa Trousers"}
		
		--sets.precast.JA.Tame = {head="Totemic Helm +1",}
		
		--sets.precast.JA.Spur = {feet="Nukumi Ocreae +1"}

        
	--This is what will equip when you use Reward.  No need to manually equip Pet Food Theta.
	sets.precast.JA.Reward = {
		ammo="Meaty Broth",
		head={ name="Despair Helm", augments={'Accuracy+10','Pet: VIT+7','Pet: Damage taken -3%',}},
		body="Mst. Jackcoat +2",
		hands={ name="Despair Fin. Gaunt.", augments={'Accuracy+10','Pet: VIT+7','Pet: Damage taken -3%',}},
		legs={ name="Emicho Hose", augments={'Pet: Accuracy+15','Pet: Attack+15','Pet: "Dbl. Atk."+3',}},
		feet="Mst. Gaiters +2",
		neck="Sanctity Necklace",
		waist="Hurch'lan Sash",
		left_ear="Cessance Earring",
		right_ear="Brutal Earring",
		left_ring="Beeline Ring",
		right_ring="Epona's Ring",
		back={ name="Mecisto. Mantle", augments={'Cap. Point+42%','MP+23','Attack+1','DEF+1',}}
	}

	--This is your base FastCast set that equips during precast for all spells/magic.
    sets.precast.FC = {
		-- ring2="Lebeche Ring",
		-- ammo="Impatiens",
		-- neck="Voltsurge Torque",
		-- head={ name="Taeon Chapeau", augments={'"Fast Cast"+2',}},
		-- body={ name="Taeon Tabard", augments={'Pet: "Mag.Atk.Bns."+23','"Fast Cast"+4',}},
		-- hands="Leyline Gloves",
		-- legs={ name="Taeon Tights", augments={'Pet: DEF+17','"Fast Cast"+4',}},
		-- feet={ name="Taeon Boots", augments={'Pet: "Mag.Atk.Bns."+24','"Fast Cast"+2',}},
		-- ring1="Prolix Ring",
		-- waist="Ninurta's Sash"
	}
			
         			
	sets.midcast.Stoneskin = {
		-- head="Taeon Chapeau",
		-- neck="Stone Gorget",
		-- ear1="Earthcry Earring",
		-- ear2="Lifestorm Earring",
		-- body="Totemic Jackcoat +1",
		-- hands="Stone Mufflers",
		-- ring1="Aquasoul Ring",
		-- ring2="Aquasoul Ring",
		-- back="Pastoralist's Mantle",
		-- waist="Crudelis Belt",
		-- legs="Haven Hose",
		-- feet="Amm Greaves"
	}

				
        -- WEAPONSKILLS
		
		
        -- Default weaponskill set.
	sets.precast.WS = {
		ammo="Ginsen",
		head={ name="Despair Helm", augments={'Accuracy+10','Pet: VIT+7','Pet: Damage taken -3%',}},
		body="Argosy hauberk",
		hands="Meg. Gloves +1",
		legs="Argosy breeches",
		feet="Argosy sollerets",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Cessance Earring",
		right_ear="Brutal Earring",
		left_ring="K'ayres Ring",
		right_ring="Rajas Ring",
		back="Vespid mantle"
	}

	
        -- Specific weaponskill sets.
    sets.precast.WS['Ruinator'] = set_combine(sets.precast.WS, {neck="Fotia Gorget"})
				
    -- sets.precast.WS['Onslaught'] = set_combine(sets.precast.WS, {
			-- ammo="Floestone",
            -- neck="Justiciar's Torque",
			-- ear1="Tati Earring +1",
			-- ear2="Brutal Earring",
			-- body="Mes'yohi Haubergeon",
			-- hands="Nomkahpa Mittens +1",
			-- ring1="Ramuh Ring +1",
            -- back="Vespid Mantle",
			-- legs="Mikinaak Cuisses",
			-- feet="Vanir Boots"})
			
	

	--Looks like MAB impacts Primal Rend babe
	-- sets.precast.WS['Primal Rend'] = {
			-- head="Taeon Chapeau",
			-- body="Tot. Jackcoat +1",
			-- hands="Leyline Gloves",
			-- legs="Taeon Tights",
			-- feet="Taeon Boots",
			-- neck="Stoicheion Medal",
			-- waist="Salire Belt",
			-- left_ear="Hecate's Earring",
			-- right_ear="Friomisi Earring",
			-- left_ring="Epona's Ring",
			-- right_ring="Rajas Ring",
			-- back="Argocham. Mantle",}

	
		
	-- sets.precast.WS['Cloudsplitter'] = set_combine(sets.precast.WS['Primal Rend'],{ammo="Erlene's Notebook",
			-- head="Highwing Helm",
			-- neck="Stoicheion Medal",
			-- ear1="Moonshade Earring",
			-- ear2="Friomisi Earring",
			-- body="Taeon Tabard",
			-- hands="Taeon Gloves",
			-- ring1="Acumen Ring",
			-- ring2="Carb. Ring",
			-- back="Toro Cape",
			-- waist="Salire Belt",
			-- legs="Taeon Tights",
			-- feet="Taeon Boots",})

	-- PET SIC & READY MOVES


--This is your base Ready move set, activating for physical Ready moves. Merlin/D.Tassets are accounted for already. 
	sets.midcast.Pet.WS = {
		ammo="Meaty Broth",
		head="Valorous mask",
		body="Valorous mail",
		hands={ name="Despair Fin. Gaunt.", augments={'Accuracy+10','Pet: VIT+7','Pet: Damage taken -3%',}},
		legs={ name="Emicho Hose", augments={'Pet: Accuracy+15','Pet: Attack+15','Pet: "Dbl. Atk."+3',}},
		feet={ name="Despair Greaves", augments={'Accuracy+10','Pet: VIT+7','Pet: Damage taken -3%',}},
		neck="Sanctity Necklace",
		waist="Hurch'lan Sash",
		left_ear="Cessance Earring",
		right_ear="Domesticator's Earring",
		left_ring="Beeline Ring",
		right_ring="Epona's Ring",
		back={ name="Mecisto. Mantle", augments={'Cap. Point+42%','MP+23','Attack+1','DEF+1',}}
	}
	
	sets.midcast.Pet.Neutral = set_combine(sets.midcast.Pet.WS, {  
		ammo="Meaty Broth",
		head="Valorous mask",
		body="Valorous mail",
		hands={ name="Despair Fin. Gaunt.", augments={'Accuracy+10','Pet: VIT+7','Pet: Damage taken -3%',}},
		legs={ name="Emicho Hose", augments={'Pet: Accuracy+15','Pet: Attack+15','Pet: "Dbl. Atk."+3',}},
		feet={ name="Despair Greaves", augments={'Accuracy+10','Pet: VIT+7','Pet: Damage taken -3%',}},
		neck="Sanctity Necklace",
		waist="Hurch'lan Sash",
		left_ear="Cessance Earring",
		right_ear="Domesticator's Earring",
		left_ring="Beeline Ring",
		right_ring="Epona's Ring",
		back={ name="Mecisto. Mantle", augments={'Cap. Point+42%','MP+23','Attack+1','DEF+1',}}
	})
			
			
	sets.midcast.Pet.HighAcc = set_combine(sets.midcast.Pet.WS, {
		ammo="Ginsen",
		head="Tali'ah Turban +1",
		body="Tali'ah Manteel",
		hands="Tali'ah Gages +1",
		legs="Tali'ah Seraweels",
		feet="Tali'ah Crackows +1",
		neck="Gaudryi Necklace",
		waist="Hurch'lan Sash",
		left_ear="Cessance Earring",
		right_ear="Brutal Earring",
		left_ring="K'ayres Ring",
		right_ring="Rajas Ring",
		back={ name="Mecisto. Mantle", augments={'Cap. Point+42%','MP+23','Attack+1','DEF+1',}}
	})
			
	sets.midcast.Pet.MaxAcc = set_combine(sets.midcast.Pet.WS, {
		ammo="Ginsen",
		head="Tali'ah Turban +1",
		body="Tali'ah Manteel",
		hands="Tali'ah Gages +1",
		legs="Tali'ah Seraweels",
		feet="Tali'ah Crackows +1",
		neck="Gaudryi Necklace",
		waist="Hurch'lan Sash",
		left_ear="Cessance Earring",
		right_ear="Brutal Earring",
		left_ring="K'ayres Ring",
		right_ring="Rajas Ring",
		back={ name="Mecisto. Mantle", augments={'Cap. Point+42%','MP+23','Attack+1','DEF+1',}}
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
		
	--sets.midcast.Pet.ReadyRecast = {main="Charmer's Merlin",legs="Desultor Tassets",}
	-- When I get you Desultor we can get rid of the above code
	sets.midcast.Pet.ReadyRecast = {main="Charmer's Merlin"}
      
        
        -- IDLE SETS (TOGGLE between RERAISE and NORMAL with CTRL+F12)
		
		
		-- Base Idle Set (when you do NOT have a pet out)
    sets.idle = {
		ammo="Meaty Broth",
		head={ name="Despair Helm", augments={'Accuracy+10','Pet: VIT+7','Pet: Damage taken -3%',}},
		body={ name="Despair Mail", augments={'Accuracy+10','Pet: VIT+7','Pet: Damage taken -3%',}},
		hands={ name="Despair Fin. Gaunt.", augments={'Accuracy+10','Pet: VIT+7','Pet: Damage taken -3%',}},
		legs={ name="Emicho Hose", augments={'Pet: Accuracy+15','Pet: Attack+15','Pet: "Dbl. Atk."+3',}},
		feet={ name="Despair Greaves", augments={'Accuracy+10','Pet: VIT+7','Pet: Damage taken -3%',}},
		neck="Sanctity Necklace",
		waist="Hurch'lan Sash",
		left_ear="Cessance Earring",
		right_ear="Domesticator's Earring",
		left_ring="Beeline Ring",
		right_ring="Epona's Ring",
		back={ name="Mecisto. Mantle", augments={'Cap. Point+42%','MP+23','Attack+1','DEF+1',}}
	}

			
	--sets.idle.Reraise = set_combine(sets.idle, {head="Twilight Helm",body="Twilight Mail"})

	
		-- Idle Set that equips when you have a pet out and not fighting an enemy.
	sets.idle.Pet = set_combine(sets.idle, {
		ammo="Meaty Broth",
		head="Valorous mask",
		body={ name="Despair Mail", augments={'Accuracy+10','Pet: VIT+7','Pet: Damage taken -3%',}},
		hands={ name="Despair Fin. Gaunt.", augments={'Accuracy+10','Pet: VIT+7','Pet: Damage taken -3%',}},
		legs={ name="Emicho Hose", augments={'Pet: Accuracy+15','Pet: Attack+15','Pet: "Dbl. Atk."+3',}},
		feet={ name="Despair Greaves", augments={'Accuracy+10','Pet: VIT+7','Pet: Damage taken -3%',}},
		neck="Sanctity Necklace",
		waist="Hurch'lan Sash",
		left_ear="Cessance Earring",
		right_ear="Domesticator's Earring",
		left_ring="Beeline Ring",
		right_ring="Epona's Ring",
		back={ name="Mecisto. Mantle", augments={'Cap. Point+42%','MP+23','Attack+1','DEF+1',}}
	})
		
		-- Idle set that equips when you have a pet out and ARE fighting an enemy.
	sets.idle.Pet.Engaged = set_combine(sets.idle, {
		ammo="Meaty Broth",
		head="Valorous mask",
		body="Valorous mail",
		hands={ name="Despair Fin. Gaunt.", augments={'Accuracy+10','Pet: VIT+7','Pet: Damage taken -3%',}},
		legs={ name="Emicho Hose", augments={'Pet: Accuracy+15','Pet: Attack+15','Pet: "Dbl. Atk."+3',}},
		feet={ name="Despair Greaves", augments={'Accuracy+10','Pet: VIT+7','Pet: Damage taken -3%',}},
		neck="Sanctity Necklace",
		waist="Hurch'lan Sash",
		left_ear="Cessance Earring",
		right_ear="Domesticator's Earring",
		left_ring="Beeline Ring",
		right_ring="Epona's Ring",
		back={ name="Mecisto. Mantle", augments={'Cap. Point+42%','MP+23','Attack+1','DEF+1',}}
	})
        


        -- MELEE (SINGLE-WIELD) SETS
	
	sets.engaged = {
		ammo="Ginsen",
		head="Meghanada Visor +1",
		body="Valorous mail",
		hands="Meg. Gloves +1",
		legs="Meg. Chausses +1",
		feet="Meg. Jam. +1",
		neck="Sanctity Necklace",
		waist="Windbuffet Belt",
		left_ear="Cessance Earring",
		right_ear="Brutal Earring",
		left_ring="Epona's Ring",
		right_ring="Rajas Ring",
		back={ name="Mecisto. Mantle", augments={'Cap. Point+42%','MP+23','Attack+1','DEF+1',}}
	}
			
	sets.engaged.PetDT = {
		ammo="Meaty Broth",
		head={ name="Despair Helm", augments={'Accuracy+10','Pet: VIT+7','Pet: Damage taken -3%',}},
		body={ name="Despair Mail", augments={'Accuracy+10','Pet: VIT+7','Pet: Damage taken -3%',}},
		hands={ name="Despair Fin. Gaunt.", augments={'Accuracy+10','Pet: VIT+7','Pet: Damage taken -3%',}},
		legs="Tali'ah Seraweels",
		feet={ name="Despair Greaves", augments={'Accuracy+10','Pet: VIT+7','Pet: Damage taken -3%',}},
		neck="Gaudryi Necklace",
		waist="Hurch'lan Sash",
		left_ear="Cessance Earring",
		right_ear="Brutal Earring",
		left_ring="K'ayres Ring",
		right_ring="Rajas Ring",
		back={ name="Mecisto. Mantle", augments={'Cap. Point+42%','MP+23','Attack+1','DEF+1',}}
	}
				
	     -- MELEE (DUAL-WIELD) SETS FOR DNC AND NIN SUBJOB
		
	sets.engaged.DW = {
		ammo="Meaty Broth",
		head="Valorous mask",
		body="Valorous mail",
		hands={ name="Despair Fin. Gaunt.", augments={'Accuracy+10','Pet: VIT+7','Pet: Damage taken -3%',}},
		legs={ name="Emicho Hose", augments={'Pet: Accuracy+15','Pet: Attack+15','Pet: "Dbl. Atk."+3',}},
		feet={ name="Despair Greaves", augments={'Accuracy+10','Pet: VIT+7','Pet: Damage taken -3%',}},
		neck="Sanctity Necklace",
		waist="Hurch'lan Sash",
		left_ear="Cessance Earring",
		right_ear="Domesticator's Earring",
		left_ring="Beeline Ring",
		right_ring="Epona's Ring",
		back={ name="Mecisto. Mantle", augments={'Cap. Point+42%','MP+23','Attack+1','DEF+1',}}
	}
			
	sets.engaged.DW.PetDT = {
		ammo="Meaty Broth",
		head={ name="Despair Helm", augments={'Accuracy+10','Pet: VIT+7','Pet: Damage taken -3%',}},
		body={ name="Despair Mail", augments={'Accuracy+10','Pet: VIT+7','Pet: Damage taken -3%',}},
		hands={ name="Despair Fin. Gaunt.", augments={'Accuracy+10','Pet: VIT+7','Pet: Damage taken -3%',}},
		legs={ name="Emicho Hose", augments={'Pet: Accuracy+15','Pet: Attack+15','Pet: "Dbl. Atk."+3',}},
		feet={ name="Despair Greaves", augments={'Accuracy+10','Pet: VIT+7','Pet: Damage taken -3%',}},
		neck="Sanctity Necklace",
		waist="Hurch'lan Sash",
		left_ear="Cessance Earring",
		right_ear="Domesticator's Earring",
		left_ring="Beeline Ring",
		right_ring="Epona's Ring",
		back={ name="Mecisto. Mantle", augments={'Cap. Point+42%','MP+23','Attack+1','DEF+1',}}
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

