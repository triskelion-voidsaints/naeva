local wormhole = require "spob.lua.lib.overgate"

local exits = { "Exit (Yria)", "Exit (Kanius)", "Exit (Yennin)" }

--Roll the random
local randomtarget = exits[ rnd.rnd(1,#exits) ]
--What is passed into wormhole init here doesn't really matter
function init( p )
   return wormhole.init( p, "Wormhole (Forge)", {
      col_inner   = { 1, 0.196, 0.423 },
      col_outter  = { 0.819, 0, 0.235 },
   } )
end

unload   = wormhole.unload
update   = wormhole.update
render   = wormhole.render
can_land = wormhole.can_land
land     = wormhole.land
-- Reroll the random
load = function (...)
   mem.target = exits[ rnd.rnd(1,#exits) ]
end