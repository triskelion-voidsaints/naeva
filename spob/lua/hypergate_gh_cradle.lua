local hypergate = require "spob.lua.lib.hypergate2"
hypergate.setup{
   destfunc = function ()
      return {
         spob.get("HG-Light"),
         spob.get("HG-Baltar"),
		 spob.get("HG-Koria"),
      }
   end,
}