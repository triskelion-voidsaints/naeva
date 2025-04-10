local wormhole = require "spob.lua.lib.overgate_active"

function init( spb )
   return wormhole.init( spb, "OG-Abaddon SE" )
end

load     = wormhole.load
unload   = wormhole.unload
update   = wormhole.update
render   = wormhole.render
can_land = wormhole.can_land
land     = wormhole.land
