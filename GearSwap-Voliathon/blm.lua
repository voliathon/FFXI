function get_sets()
-- Set macro book/set --
    send_command('input /macro book 2;wait .1;input /macro set 1')
	
	-- Binds for BoomBoom
	--Toggle BoomBoom sets button, change if you want; currently ALT+F9 toggles forward, CTRL+F9 toggles backwards
  	send_command('bind ^f8 gs c C8') 
    send_command('bind !f9 gs c toggle BoomBoom set')
	send_command('bind ^f9 gs c reverse BoomBoom set')

	-- BoomBoom --
	Capacity = 'OFF' -- Press ctrl + F11 if you want to be in Capacity mode  --	
	ShadowType = 'None'
	
  --BoomBoom Sets--
  sets.BoomBoom = {}
  sets.BoomBoom.index = {'Nuke', 'MagicBurst', 'DamageTaken', 'TP', 'Refresh'}
  BoomBoom_ind = 1

    	-- Elemental Magic sets...  When shit needs to die, this is the set to make it happen
	sets.BoomBoom.Nuke = {
		main="Grioavolr",
		sub="Elder's grip +1",		
		ammo="Dosis Tathlum",
		head="Merlinic Hood",
		body="Merlinic Jubbah",
		hands="Merlinic Dastanas",
		legs="Merlinic Shalwar",
		feet="Merlinic Crackows",
		neck="Saevus pendant +1",
		waist="Aswang sash",
		left_ear="Barkaro. Earring",
		right_ear="Halasz Earring",
		left_ring="Fenrir Ring +1",
		right_ring="Stikini Ring +1",
		back="Bane cape"
	}
	
	sets.BoomBoom.MagicBurst = {}
	
	
	-- DamageTaken Set
    sets.BoomBoom.DamageTaken = {
		main="Malignance Pole",
		sub="Elder's grip +1",
		head="Befouled Crown",
		body="Shamash Robe",
		hands="Amalric gages +1",
		legs="Assid. Pants +1",
		feet="Amalric nails +1",
		neck="Loricate torque +1",
		waist="Isa Belt",
		left_ear="Hearty Earring",
		right_ear="Moonshade Earring",
		left_ring="Patricius Ring",
		right_ring="Defending Ring",
		back="Repulse Mantle"
	}
	
    -- When Voliathon is engaged in battle, this set kicks in...
    sets.BoomBoom.TP = {
		main="Grioavolr",
		sub="Elder's grip +1",
		ammo="Staunch Tathlum",
		head="Jhakri Coronal +2",
		body="Jhakri Robe +2",
		hands="Jhakri Cuffs +2",
		legs="Jhakri Slops +2",
		feet="Jhakri Pigaches +2",
		neck="Loricate torque +1",
		waist="Grunfeld Rope",
		left_ear="Steelflash Earring",
		right_ear="Bladeborn Earring",
		left_ring="Patricius Ring",
		right_ring="Defending Ring"
	}  
	
	
    -- Fast Cast for Black Mage --
    sets.FastCast = {
		main="Grioavolr",
		sub="Elder's grip +1",
		head="Merlinic Hood",
		body="Shango Robe",
		hands="Amalric gages +1",
		legs="Merlinic shalwar",
		feet="Merlinic Crackows",
		waist="Witful Belt",
		left_ear="Loquac. Earring",
		right_ear="Magnetic earring",
		left_ring="Venficium ring",
		back="Perimede cape"
	}


	-- Enhancing Spells \\Generalized//
    sets.Enhancing = {
		main="Grioavolr",
		sub="Elder's grip +1",
		ammo="Clarus stone",
		head="Befouled Crown",
		body="Shango Robe",
		feet="Regal pumps +1",
		waist="Austerity Belt +1",
		left_ear="Magnetic Earring",
		right_ear="Loquacious Earring",
		left_ring="Veneficium Ring",
		right_ring="Stikini Ring +1",
		back="Perimede Cape"
	}

	-- Stoneskin
	sets.Stoneskin = {
		main="Grioavolr",
		sub="Elder's grip +1",
		ammo="Clarus stone",
		head="Umuthi Hat",
		body="Shango Robe",
		hands="Carapacho Cuffs",
		feet="Regal pumps +1",
		waist="Austerity Belt +1",
		left_ear="Magnetic Earring",
		right_ear="Earthcry Earring",
		left_ring="Veneficium Ring",
		right_ring="Stikini Ring +1",
		back="Perimede Cape"	
	}


	-- We gota cure the shit out of people. I'm making the cures count.  Fuck that half ass cure shit.
    sets.Cure = {
		main="Grioavolr",
		sub="Elder's grip +1",
        head="Vanya Hood",
		body="Heka's Kalasiris",
		hands="Telchine gloves",
		ring1="Stikini Ring +1",
		ring2="Veneficium Ring", 
		waist="Austerity belt+1", 
		back="Pahtli Cape",
		legs="Merlinic shalwar",
		feet="Vanya Clogs"
	}

	-- Protecting the party
    sets.Protectra = {
		ring1="Sheltered Ring"
	}

	-- MDF the party
    sets.Shellra = {
		ring1="Sheltered Ring"
	}

	-- Dark Magic for Impact, Drain, Aspir... Shit like that
    sets.DarkMagic = {
		main="Grioavolr",
		sub="Elder's grip +1",
		head="Merlinic hood",
		body="Shango robe",
		hands="Merlinic Dastanas",
		legs="Merlinic Shalwar",
		feet="Merlinic Crackows",
		neck="Saevus Pendant +1",
		waist="Aswang Sash",
		left_ear="Barkaro. Earring",
		right_ear="Gwati Earring",
		left_ring="Stikini Ring +1",
		right_ring="Fenrir Ring +1",
		back="Bane cape"
	}

	-- Enfeebling the fuck out of things is the name of the game sometimes...  
	--This set allows for better odds when people don't want to fucking play the game
    sets.EnfeeblingMagic = {
		main="Grioavolr",
		sub="Elder's grip +1",
		head="Befouled Crown",
		body="Ischemia Chasu.",
		hands="Merlinic Dastanas",
		legs="Merlinic Shalwar",
		neck="Sanctity Necklace",
		waist="Aswang Sash",
		left_ear="Barkaro. Earring",
		right_ear="Gwati Earring",
		left_ring="Stikini Ring +1",
		right_ring="Fenrir Ring +1",
		back="Bane cape"
	}

	-- Drain Set and Aspir
    sets.Drain = {
		main="Grioavolr",
		sub="Elder's grip +1",
		head="Merlinic hood",
		body="Shango Robe",
		hands="Merlinic Dastanas",
		legs="Merlinic Shalwar",
		feet="Merlinic Crackows",
		neck="Saevus Pendant +1",
		waist="Aswang Sash",
		left_ear="Barkaro. Earring",
		right_ear="Gwati Earring",
		left_ring="Stikini Ring +1",
		right_ring="Fenrir Ring +1",
		back="Bane cape"
	}

	-- Aspir uses the same Drain set
    sets.Aspir = sets.Drain
	
	-- Impact whenever the fuck I get the damn cloak
    sets.Impact = {    
      body="Twilight Cloak",
	}


    -- /heal the damn MP/HP up.
    sets.resting = {
		head="Befouled Crown",
		body="Heka's Kalasiris",
		hands="Merlinic Dastanas",
		legs="Assid. Pants +1",
		neck="Sanctity Necklace",
		waist="Austerity Belt +1",
		left_ear="Barkaro. Earring",
		right_ear="Gwati Earring",
		left_ring="Sheltered Ring",
		right_ring="Paguroidea Ring",
		back="Felicitas cape +1"
	}


    -- When idled, I jump into Refresh
    sets.Refresh = {
		main="Grioavolr",
		sub="Elder's grip +1",
		head="Befouled Crown",
		body="Ischemia chasuble",
		legs="Assid. Pants +1",
		neck="Loricate torque +1",
		waist="Isa Belt",
		left_ear="Hearty Earring",
		right_ear="Moonshade Earring",
		left_ring="Patricius Ring",
		right_ring="Defending Ring",
		back="Repulse Mantle"
	}



    ------------------------------------------------------------------------------------------------------------------
    -- Weaponskill sets
    ------------------------------------------------------------------------------------------------------------------

	-- All Weaponskills for Black Mage unless explicitly defined below sets.precast.WS 
     sets.WS = {
		main="Grioavolr",
		sub="Elder's grip +1",
		ammo="Amar Cluster",
		head="Jhakri Coronal +2",
		body="Jhakri Robe +2",
		hands="Jhakri Cuffs +2",
		legs="Jhakri Slops +2",
		feet="Jhakri Pigaches +2",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Steelflash Earring",
		right_ear="Bladeborn Earring",
		left_ring="K'ayres Ring",
		right_ring="Karieyh Ring",
		back="Mecisto. Mantle"
	 }


end


function precast(spell,abil)

	-- Dancer Abilities --
  if string.find(spell.english, 'Waltz') then
	equip(sets.JA.Waltz)
  end	
  
  --equips favorite weapon if disarmed
  if player.equipment.main == "empty" or player.equipment.sub == "empty" then
    equip({main="Grioavolr",sub="Utu Grip"})
    add_to_chat(158,'Grioavolr Weapon: [ON]')
	Lionheart = 'OFF'
  end
  
  if spell.skill == 'Enhancing Magic' then
	equip(sets.precast)
  end
  if spell.action_type == 'Magic' then
    equip(sets.Utility.PDT,sets.precast)
  end
  
  
  if spell.name == 'Lunge' or spell.name == 'Swipe' then
    equip(sets.JA.Lunge)
  end
  --prevents Valiance/Vallation/Liement from being prevented by each other (cancels whichever is active)
  if spell.name == 'Valiance' or spell.name == 'Vallation' or spell.name == 'Liement' then
    if buffactive['Valiance'] then
      cast_delay(0.2)
      windower.ffxi.cancel_buff(535)
    elseif buffactive['Vallation'] then
      cast_delay(0.2)
      windower.ffxi.cancel_buff(531)
    elseif buffactive['Liement'] then
      cast_delay(0.2)
      windower.ffxi.cancel_buff(537)
    end
  end
  if spell.name == 'Vallation' or spell.name == 'Valiance' then
    equip(sets.Enmity,sets.JA.Vallation)
  end
  if spell.name == 'Pflug' then
    equip(sets.Enmity,sets.JA.Pflug)
  end
  if spell.name == 'Elemental Sforzo' or spell.name == 'Liement' then
    equip(sets.Enmity,{body="Futhark coat +1"})
  end
  if spell.name == 'Gambit' then
    equip(sets.Enmity,sets.JA.Gambit)
  end
  if spell.name == 'Embolden' then
    equip({back={ name="Evasionist's Cape", augments={'Enmity+5','"Embolden"+14','"Dbl.Atk."+2','Damage taken-3%'}}})
  end  
  if spell.name == 'Rayke' then
    equip(sets.Enmity,sets.JA.Rayke)
  end
  if spell.name == 'Battuta' then
    equip(sets.Enmity,sets.JA.Battuta)
  end
  if spell.name == 'Vivacious Pulse' then
    equip(sets.Enmity,sets.JA.Pulse)
  end
  if spell.name == 'One for All' or spell.name == 'Embolden' or spell.name == 'Odyllic Subterfuge' or spell.name == 'Warcry'
    or spell.name == 'Swordplay' or spell.name == 'Meditate' or spell.name == 'Provoke' then
    equip(sets.Enmity, {hands="Futhark mitons +1"})
  end
  if spell.name == 'Resolution' then
    equip(sets.Resolution)
  end
  if spell.name == 'Dimidiation' or spell.name == 'Spinning Slash'  then
    equip(sets.Single)
  end
  if spell.name == 'Shockwave' then
    equip(sets.Shockwave)
  end
  if spell.name == 'Herculean Slash' or spell.name == 'Freezebite' or spell.name == 'Frostbite' then
    equip(sets.HercSlash)
  end

  --prevents casting Utsusemi if you already have 3 or more shadows
  if spell.name == 'Utsusemi: Ichi' and ShadowType == 'Ni' and (buffactive['Copy Image (3)'] or buffactive['Copy Image (4+)']) then
    cancel_spell()
  end
    --Utsusemi Check
  if string.find(spell.name,'Utsusemi') then
    equip({neck="Magoraga Beads"})
  end
  
  if buffactive['terror'] or buffactive['petrification'] or buffactive['stun'] or buffactive['sleep'] then
    if BoomBoom_ind == 4 then
      equip(sets.Utility.MDT) else
      equip(sets.Utility.PDT)
    end
  end
end



--Should NOT put Job Abilities here.  Ony Magic Fren!  Fren is Doggo Speak for Friend
function midcast(spell,act,arg)
  if spell.skill == 'Elemental Magic' then
    equip(sets.JA.Lunge)
  end

  if spell.skill == 'Enhancing Magic' then
	if spell.name == 'Phalanx' then
		equip(sets.SIR,sets.Phalanx)
	end
	if spell.name == "Blink" or spell.name == "Stoneskin" then
      equip(sets.SIR,sets.Stoneskin)
	end
	if spell.name == 'Foil' then
	  equip(sets.SIR,sets.enmity)
	end
    if string.find(spell.name,'Refresh') then
	  equip(sets.SIR,sets.Enhancing)
    end
    if string.find(spell.name,'Regen') then
      equip(sets.SIR,sets.Enhancing)
    end
  
  end
  
  if spell.name == 'Flash' or spell.name == "Stun" then
    equip(sets.Enmity)
  end
  if spell.name == "Repose" or spell.skill == 'Enfeebling Magic' or spell.skill == 'Dark Magic' then
    equip(sets.MagicAcc)
  end

end


function aftercast(spell)
  equip_current()
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
	equip(sets.BoomBoom[sets.BoomBoom.index[BoomBoom_ind]]) 
end

--Function use for Changing the BoomBoom Set.  Ctrl+F9 is your meal ticket
--123 is a red color for the text output
--158 is a green color for the text output
function self_command(command)
	if command == 'C8' then -- Lionheart to Grioavolr --	
        if Lionheart == 'ON' then
            Lionheart = 'OFF'
			equip({main="Grioavolr", sub="Utu Grip"})
            add_to_chat(158,'Grioavolr Weapon: [ON]')
			add_to_chat(123,'Lionheart Weapon: [OFF]')
		else
            Lionheart = 'ON'
			equip({main="Lionheart", sub="Utu Grip"})
            add_to_chat(158,'Lionheart Weapon: [ON]')
            add_to_chat(123,'Grioavolr Weapon: [OFF]')				
        end
       -- status_change(player.status)
	elseif command == 'toggle BoomBoom set' then
		BoomBoom_ind = BoomBoom_ind -1
		if BoomBoom_ind == 0 then BoomBoom_ind = #sets.BoomBoom.index end
		send_command('@input /echo <----- Gear Set changed to '..sets.BoomBoom.index[BoomBoom_ind]..' ----->')
		equip_current()	
	elseif command == 'reverse BoomBoom set' then
		BoomBoom_ind = BoomBoom_ind +1
		if BoomBoom_ind > #sets.BoomBoom.index then BoomBoom_ind = 1 end
		send_command('@input /echo <----- Gear Set changed to '..sets.BoomBoom.index[BoomBoom_ind]..' ----->')
		equip_current()
	end
end


-- Send tell to self if I died --
windower.register_event('status change', function()
	if player.status == 'Dead' then
	send_command('@input /tell <me> Wakies Wakies  For some Weird Ass Reason my character died')
	end
end)





-------------------------------------------------------------------------------------------------------------------
-- Utility functions specific to this job.
-------------------------------------------------------------------------------------------------------------------
--Fuck this thing below.  Stupid to say, oh hey, I'm in this fucking macro pallette located in such and such.  It's pretty tarded.

 --Select default macro book on initial load or subjob change.
 function select_default_macro_book()
     set_macro_page(1, 2)
 end