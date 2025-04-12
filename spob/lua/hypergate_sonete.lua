local hypergate = require "spob.lua.lib.hypergate2"
hypergate.setup{
   destfunc = function ()
      return {
         spob.get("GH_End Reciever"),
         spob.get("HG-Rend"),
      }
   end,
}