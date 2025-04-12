local hypergate = require "spob.lua.lib.hypergate2"
hypergate.setup{
   destfunc = function ()
      return {
         spob.get("HG-Drifter"),
         spob.get("HG-Last Stop"),
      }
   end,
}