local hypergate = require "spob.lua.lib.hypergate2"
hypergate.setup{
   destfunc = function ()
      return {
         spob.get("HG-Mjolnir"),
         spob.get("HG-Til'kolecto"),
         spob.get("HG-Nil'kemorya"),
      }
   end,
}