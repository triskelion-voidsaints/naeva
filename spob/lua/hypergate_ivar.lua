local hypergate = require "spob.lua.lib.hypergate2"
hypergate.setup{
   destfunc = function ()
      return {
         spob.get("HG-Aria"),
         spob.get("HG-Dani"),
         spob.get("HG-Tekel"),
      }
   end,
}