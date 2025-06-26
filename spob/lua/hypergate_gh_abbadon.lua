local hypergate = require "spob.lua.lib.hypergate2"
hypergate.setup{
   destfunc = function ()
      return {
         spob.get("HG-Outbound"),
         spob.get("HG-Nil'kol"),
         spob.get("HG-Tre'illica"),
      }
   end,
}