local hypergate = require "spob.lua.lib.hypergate2"
hypergate.setup{
   destfunc = function ()
      return {
         spob.get("HG-Aurora"),
         spob.get("GH_Rochak Reciever"),
      }
   end,
}