local hypergate = require "spob.lua.lib.hypergate2"
hypergate.setup{
   destfunc = function ()
      return {
         spob.get("Porta-mjolnir"),
         spob.get("Porta-kolecto"),
         spob.get("Porta-kemorya"),
      }
   end,
}