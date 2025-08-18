local hypergate = require "spob.lua.lib.hypergate2"
hypergate.setup{
   destfunc = function ()
      return {
         spob.get("HG-P'aedt"),
         spob.get("HG-Ver'shan"),
         spob.get("HG-Kel'ariy"),
      }
   end,
}