local hypergate = require "spob.lua.lib.hypergate2"
hypergate.setup{
   destfunc = function ()
      return {
         spob.get("HG-Kaow"),
         spob.get("HG-Galvan"),
         spob.get("HG-Kine"),
         spob.get("HG-Dani"),
      }
   end,
}