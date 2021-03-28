_addon.name = 'SmartCorsairRoll'
_addon.author = 'Matthew Campbell'
_addon.version = '2.0.4'
_addon_description = ''
_addon.commands = {'CorsairRollBot'}


local socket = require("socket")

local port = 19701
local ip = "127.0.0.1"

function send_required_string(data_string)

  local CRB_connect = assert(socket.udp())
  CRB_connect:settimeout(1)

  assert(CRB_connect:sendto(data_string, ip, port))

  CRB_connect:close()
end

-- ONCE LOADED SEND A COMMAND TO AUTHENTICATE CONNECTION
validated = false

if validated == false then
  validated = true
  send_required_string('crb validated')
end

if windower then

  -- BEGIN WINDOWER CODE ---------------------------------------------------------------------------------

  windower.register_event('addon command', function(input, ...)
    local cmd = string.lower(input)
    local args = {...}
    if cmd == "verify" then
      send_required_string('crb validated')
    end
  end)

  local player = windower.ffxi.get_player()

  windower.register_event('action', function (data)
    if data.target_count > 0 and data.category == 6 then
    if data.actor_id == player.id then
      current_roll = data.targets[1].actions[1].param;
      send_required_string('crollbot_addon ' .. current_roll)
    end
  end
end)

-- END WINDOWER CODE -----------------------------------------------------------------------------------



end
