local hypergate = require "spob.lua.lib.hypergate2"
hypergate.setup{
   destfunc = function ()
      return {
         spob.get("HG-Primus"),
         spob.get("HG-Rigel"),
         spob.get("HG-Archenar"),
         spob.get("HG-Kania"),
      }
   end,
}