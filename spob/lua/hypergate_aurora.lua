local hypergate = require "spob.lua.lib.hypergate2"
hypergate.setup{
   destfunc = function ()
      return {
         spob.get("HG-Kine"),
         spob.get("GH_Aurora Reciever"),
         spob.get("HG-Dani"),
         spob.get("HG-Gary"),
      }
   end,
}