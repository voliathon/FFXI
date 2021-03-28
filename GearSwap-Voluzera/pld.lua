function get_sets()
-- Set macro book/set --
-- send_command('input /macro book 15;wait .1;input /macro set 1')

    sets.precast = {}
    --sets.precast.Boost = {hands="Hes. Gloves +1"}
    --sets.precast.Chakra = {body="Anchorite's Cyclas +1",hands="Hes. Gloves +1"}
    --sets.precast.Counterstance = {feet="Hes. Gaiters +1"}
    --sets.precast.Focus = {head="Anchorite's Crown +1"}
    --sets.precast.Dodge = {feet="Anchorite's Gaiters +1"}
    --sets.precast.Mantra = {feet="Hes. Gaiters +1"}
    --sets.precast.Footwork = {feet="Anchorite's gaiters +1"}
	--sets.precast.Impetus={body="Bhikku Cyclas +1"}
    --sets.precast['Hundred Fists'] = {legs="Hes. Hose +1"}
    sets.Waltz = {legs="Dashing Subligar"}

    sets.status = {}
    sets.status.Engaged = sets.TP
    
--    sets.status.Idle = {
--		sub="Aegis",
--		ammo="Staunch Tathlum +1",
--		head="Souv. Schaller +1",
--		body="Souv. Cuirass +1",
--		hands="Souv. Handsch. +1",
--		legs="Souv. Diechlings +1",
--		feet="Flam. Gambieras +2",
--		neck="Diemer Gorget",
--		waist="Cetl Belt",
--		left_ear="Zennaroi Earring",
--		right_ear="Knightly Earring",
--		left_ring="Adoulin Ring",
--		right_ring="Defending Ring",
--		back="Philidor Mantle"
--   }
    


	--TP Sets--
	sets.TP = {}
	--					  1		   2     
	sets.TP.index = {'BadAss', 'Turtle'}
	TP_ind = 1

	
	sets.TP.BadAss = {
		sub="Aegis",
		ammo="Staunch Tathlum +1",
		head="Flam. Zucchetto +2",
		body="Flamma korazin +2",
		hands="Flam. Manopolas +2",
		legs="Flamma Dirs +2",
		feet="Flam. Gambieras +2",
		neck="Clotharius Torque",
		waist="Cetl Belt",
		left_ear="Zennaroi Earring",
		right_ear="Brutal Earring",
		left_ring="Adoulin Ring",
		right_ring="Flamma Ring",
		back="Rudianos's Mantle"
    }
    
	sets.TP.Turtle = {
		sub="Aegis",
		ammo="Staunch Tathlum +1",
		head="Souveran Schaller +1",
		body="Souveran Cuirass +1",
		hands="Souveran Handschuhs +1",
		legs="Souveran Diechlings +1",
		feet="Souveran schuhs +1",
		neck="Diemer Gorget",
		waist="Cetl Belt",
		left_ear="Genmei Earring",
		right_ear="Knightly Earring",
		left_ring="Moonbeam Ring",
		right_ring="Defending Ring",
		back="Rudianos's Mantle"
    }

	--Weapon Skill Set
	sets.WS = {
		ammo="Staunch Tathlum +1",
		head="Flam. Zucchetto +2",
		body="Flamma korazin +2",
		hands="Flam. Manopolas +2",
		legs="Flamma Dirs +2",
		feet="Sulevia's leggings +2",
		neck="Fotia Gorget",
		waist="Cetl Belt",
		left_ear="Moonshade Earring",
		right_ear="Brutal Earring",
		left_ring="Adoulin Ring",
		right_ring="Flamma Ring",
		back="Rudianos's Mantle"
	}

	--Phalanx--
	--sets.Phalanx = {head="Futhark bandeau +1",legs="Futhark Trousers +1"}	  
	
	--Toggle TP sets button, change if you want; currently ALT+F9 toggles forward, CTRL+F9 toggles backwards
	send_command('bind !f9 gs c toggle TP set')
	send_command('bind ^f9 gs c reverse TP set')
	--other stuff, don't touch
	ShadowType = 'None'
	
	
end



function precast(spell) 
    if spell.type=="WeaponSkill" then
        equip(sets.WS)		
    elseif sets.precast[spell.english] then
        equip(sets.precast[spell.english])
    elseif string.find(spell.english,'Waltz') then
        equip(sets.Waltz)
    end
end


function status_change(new,old)
    if sets.status[new] then
        equip(sets.status[new])
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
	equip(sets.TP[sets.TP.index[TP_ind]]) 
end

--Function use for Changing the TP Set.  Ctrl+F9 is your meal ticket
function self_command(command)
  if command == 'toggle TP set' then
    TP_ind = TP_ind +1
    if TP_ind > #sets.TP.index then TP_ind = 1 end
    send_command('@input /echo <----- Gear Set changed to '..sets.TP.index[TP_ind]..' ----->')
    equip_current()
  elseif command == 'reverse TP set' then
    TP_ind = TP_ind -1
    if TP_ind == 0 then TP_ind = #sets.TP.index end
    send_command('@input /echo <----- Gear Set changed to '..sets.TP.index[TP_ind]..' ----->')
    equip_current()
  end
end


-- Send tell to self if I died --
windower.register_event('status change', function()
	if player.status == 'Dead' then
	send_command('@input /tell <me> Wakies Wakies  For some Weird Ass Reason my character died')
	end
end)