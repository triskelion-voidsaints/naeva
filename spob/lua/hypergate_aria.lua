local hypergate = require "spob.lua.lib.hypergate2"
hypergate.setup{
   destfunc = function ()
      return {
         spob.get("HG-Kania"),
         spob.get("HG-Dani"),
         spob.get("HG-Ivar"),
      }
   end,
}