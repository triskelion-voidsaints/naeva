local lg = require "love.graphics"
local lf = require "love.filesystem"
local audio = require "love.audio"
local love_shaders = require "love_shaders"
local starfield = require "bkg.lib.starfield"
local luaspfx = require "luaspfx"

local pixelcode = lf.read( "spob/lua/glsl/wormhole.frag" )
local jumpsfx = audio.newSource( 'snd/sounds/wormhole.ogg' )

local s = 256

local wormhole = {}

function wormhole.init( spb, target, params )
   params = params or {}
   mem.spob = spb
   mem.target = target
   mem.params = params
end

function wormhole.can_land ()
   return true, _("The wormhole seems to be active.")
end

function wormhole.land( _s, p )
   -- Avoid double landing
   if p:shipvarPeek( "wormhole" ) then return end
   p:shipvarPush( "wormhole", true )

   -- Not player, just play animation and remove
   if p ~= player.pilot() then
      p:effectAdd("Wormhole Enter")
      luaspfx.sfx( false, nil, jumpsfx )
      return
   end

   var.push( "wormhole_target", mem.target )
   naev.eventStart("Wormhole")
end

return wormhole
