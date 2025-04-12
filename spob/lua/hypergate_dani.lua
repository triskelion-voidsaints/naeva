local hypergate = require "spob.lua.lib.hypergate2"
hypergate.setup{
   destfunc = function ()
      return {
         spob.get("HG-Aurora"),
         spob.get("HG-Heraan"),
         spob.get("HG-Aria"),
         spob.get("HG-Ivar"),
      }
   end,
}