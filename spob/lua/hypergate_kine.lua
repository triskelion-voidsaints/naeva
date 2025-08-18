local hypergate = require "spob.lua.lib.hypergate2"
hypergate.setup{
   destfunc = function ()
      return {
         spob.get("HG-Heraan"),
         spob.get("GH_Aurora Reciever"),
         spob.get("HG-Aurora"),
      }
   end,
}