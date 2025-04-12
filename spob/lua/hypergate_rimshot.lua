local hypergate = require "spob.lua.lib.hypergate2"
hypergate.setup{
   destfunc = function ()
      return {
         spob.get("HG-Manchester"),
         spob.get("HG-Albion"),
         spob.get("HG-Fyre"),
         spob.get("HG-Secundus"),
         spob.get("HG-Vella"),
      }
   end,
}