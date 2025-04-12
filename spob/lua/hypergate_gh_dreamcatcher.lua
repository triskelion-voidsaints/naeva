local hypergate = require "spob.lua.lib.hypergate2"
hypergate.setup{
   destfunc = function ()
      return {
         spob.get("Porta-paed"),
         spob.get("Porta-shan"),
         spob.get("Porta-lariy"),
      }
   end,
}