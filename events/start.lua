--[[
<?xml version='1.0' encoding='utf8'?>
<event name="start_event">
 <location>none</location>
</event>
--]]
--[[
   Event run when creating a new pilot.
--]]
local intro = require "intro"

local names = {
   _("Albatross"),
   _("Endurance"),
   _("Starseeker"),
   _("Darkshot"),
   _("Snowy Owl"),
   _("New Glory"),
   _("Cardinal Virtue"),
   _("Pebble's Avalanche"),
}
local function name()
   return names[rnd.rnd(1,#names)]
end

function create()
   local pp = player.pilot()
   pp:rename( name() ) -- Assign a random name to the player's ship.
   system.setKnown( "Forge", true )
   system.setKnown( "Aurora", true )
   system.setKnown( "Kel'ariy", true )


   -- Set player-specific settings
   var.push( "autonav_reset_shield", 1 )
   var.push( "autonav_reset_dist", 3e3 )
   var.push( "autonav_compr_speed", 5e3 )
   var.push( "autonav_compr_max", 50 )

   -- Give all GUIs
   player.outfitAdd( "GUI - Legacy" )

   -- Initialize fleet capacity
   player.fleetCapacitySet( 100 )

   music.choose("intro")
   intro.run("intro")
end
