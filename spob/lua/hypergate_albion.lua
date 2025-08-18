local hypergate = require "spob.lua.lib.hypergate2"
hypergate.setup{
   destfunc = function ()
      return {
         spob.get("HG-Light"),
         spob.get("HG-Rimshot"),
         spob.get("HG-Primus"),
         spob.get("HG-Archenar"),
      }
   end,
}