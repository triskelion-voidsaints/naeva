local hypergate = require "spob.lua.lib.hypergate"
hypergate.setup{
   basecol = { 0.8, 0.2, 0.2 },
   cost_mod = {
      [100] = 0,
      [90]  = 0.1,
      [80]  = 0.2,
      [70]  = 0.3,
      [50]  = 0.5,
      [30]  = 0.8,
      [10]  = 0.9,
   },
   tex = "9.webp",
   tex_mask = "9 mask.webp",
}

hypergate.setup{
   destfunc = function ()
      return {
         spob.get("HG-Rimshot"),
         spob.get("HG-Gechta"),
      }
   end,
}