local hypergate = require "spob.lua.lib.hypergate2"
hypergate.setup{
   destfunc = function ()
      return {
         spob.get("HG-Aldebaran"),
         spob.get("HG-Gefjon"),
         spob.get("HG-Rigel"),
      }
   end,
}