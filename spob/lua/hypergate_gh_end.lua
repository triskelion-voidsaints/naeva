local hypergate = require "spob.lua.lib.hypergate2"
hypergate.setup{
   destfunc = function ()
      return {
         spob.get("HG-Kaow"),
         spob.get("HG-Rend"),
         spob.get("HG-Sonete"),
      }
   end,
}