local hypergate = require "spob.lua.lib.hypergate2"
hypergate.setup{
   destfunc = function ()
      return {
         spob.get("HG-Albion"),
         spob.get("HG-Baltar"),
         spob.get("HG-Gefjon"),
         spob.get("HG-Tichel"),
      }
   end,
}