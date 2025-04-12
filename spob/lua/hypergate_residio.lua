local hypergate = require "spob.lua.lib.hypergate2"
hypergate.setup{
   destfunc = function ()
      return {
         spob.get("GH_Hexaporya Reciever"),
         spob.get("HG-P777"),
      }
   end,
}