local wormhole = require "spob.lua.lib.wormhole"

function init( p )
   return wormhole.init( p, "Wormhole (P-777)", {
      col_inner   = { 1.0, 0.196, 0.423 },
      col_outter  = { 0.819, 0.0, 0.235 },
   } )
end

load     = wormhole.load
unload   = wormhole.unload
update   = wormhole.update
render   = wormhole.render
can_land = wormhole.can_land
land     = wormhole.land
