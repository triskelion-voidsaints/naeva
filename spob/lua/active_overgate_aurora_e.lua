local wormhole = require "spob.lua.lib.wormhole"

function init( spb )
   return wormhole.init( spb, "OG-Rochak W" )
end

load     = wormhole.load
unload   = wormhole.unload
update   = wormhole.update
render   = wormhole.render
can_land = wormhole.can_land
land     = wormhole.land
