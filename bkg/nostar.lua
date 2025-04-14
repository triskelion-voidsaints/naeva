local starfield = require 'bkg.lib.starfield'
function background ()
   starfield.init{ nolocalstars=true }
end