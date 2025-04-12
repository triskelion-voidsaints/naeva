local hypergate = require "spob.lua.lib.hypergate2"
hypergate.setup{
   destfunc = function ()
      return {
         spob.get("HG-Moash"),
         spob.get("HG-Heraan"),
         spob.get("GH_End Reciever"),
      }
   end,
}