local hypergate = require "spob.lua.lib.hypergate2"
hypergate.setup{
   destfunc = function ()
      return {
         spob.get("HG-Fyre"),
         spob.get("HG-Galvan"),
         spob.get("HG-Kania"),
         spob.get("HG-Tichel"),
         spob.get("HG-Albion"),
      }
   end,
}