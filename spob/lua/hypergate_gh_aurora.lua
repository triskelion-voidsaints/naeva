local hypergate = require "spob.lua.lib.hypergate2"
hypergate.setup{
   destfunc = function ()
      return {
         spob.get("HG-Kine"),
         spob.get("HG-Aurora"),
      }
   end,
}