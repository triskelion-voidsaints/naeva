local hypergate = require "spob.lua.lib.hypergate2"
hypergate.setup{
   destfunc = function ()
      return {
         spob.get("Porta-hari"),
         spob.get("Porta-pirana"),
      }
   end,
}