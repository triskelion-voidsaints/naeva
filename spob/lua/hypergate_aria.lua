local hypergate = require "spob.lua.lib.hypergate"
hypergate.setup{
   basecol = { 0.172, 0.458, 1 },
   cost_mod = {
      [100] = 0,
      [90]  = 0.1,
      [80]  = 0.2,
      [70]  = 0.3,
      [50]  = 0.5,
      [30]  = 0.8,
      [10]  = 0.9,
   },
   tex = "hypergate_zalek_activated.webp",
}

hypergate.setup{
   destfunc = function ()
      return {
         spob.get("HG-Kania"),
         spob.get("HG-Dani"),
         spob.get("HG-Ivar"),
      }
   end,
}