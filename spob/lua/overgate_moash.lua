local wormhole = require "spob.lua.lib.overgate"

local exits = { "Exit (Shaar)", "Exit (Jukul)", "Exit (Neirt)" }

--Roll the random
local randomtarget = exits[ rnd.rnd(1,#exits) ]
--What is passed into wormhole init here doesn't really matter
function init( p )
   return wormhole.init( p, "Wormhole (Forge)" )
end

unload   = wormhole.unload
update   = wormhole.update
render   = wormhole.render
can_land = wormhole.can_land
land     = wormhole.land
-- Reroll the random
load = function (...)
   mem.target = exits[ rnd.rnd(1,#exits) ]
   wormhole.load( ... )
end