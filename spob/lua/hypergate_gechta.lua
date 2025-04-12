local hypergate = require "spob.lua.lib.hypergate2"
hypergate.setup{
   destfunc = function ()
      return {
         spob.get("HG-Vella"),
         spob.get("HG-Reap"),
         spob.get("HG-Moash"),
      }
   end,
}