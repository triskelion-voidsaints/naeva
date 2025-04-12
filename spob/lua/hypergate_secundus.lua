local hypergate = require "spob.lua.lib.hypergate2"
hypergate.setup{
   destfunc = function ()
      return {
         spob.get("HG-Rimshot"),
         spob.get("HG-Fyre"),
      }
   end,
}