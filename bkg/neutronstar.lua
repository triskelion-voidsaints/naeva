local starfield = require 'bkg.lib.starfield'
function background ()
   starfield.init{ nolocalstars=true }
   -- Add stars you want here
   local img = tex.open( 'gfx/bkg/star/neutronstar.webp' )
   -- bkg.image( img, x, y, move, scale, nil, nil, true, color )
   bkg.image( img, 0, 0, 0.5, 1, nil, nil, true, white )
end