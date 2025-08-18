local hypergate = require "spob.lua.lib.hypergate2"
hypergate.setup{
   destfunc = function ()
      return {
         spob.get("HG-Mu'hari"),
         spob.get("HG-Tre'pirana"),
      }
   end,
}