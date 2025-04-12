local hypergate = require "spob.lua.lib.hypergate2"
hypergate.setup{
   destfunc = function ()
      return {
         spob.get("HG-Galvan"),
         spob.get("HG-Archenar"),
         spob.get("HG-Secundus"),
         spob.get("HG-Rimshot"),
      }
   end,
}