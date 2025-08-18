local hypergate = require "spob.lua.lib.hypergate2"
hypergate.setup{
   destfunc = function ()
      return {
         spob.get("HG-Archenar"),
         spob.get("HG-Aria"),
         spob.get("HG-Tichel"),
      }
   end,
}