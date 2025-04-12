local hypergate = require "spob.lua.lib.hypergate2"
hypergate.setup{
   destfunc = function ()
      return {
         spob.get("HG-Ivar"),
         spob.get("HG-Nibos"),
         spob.get("GH_Rochak Reciever"),
      }
   end,
}