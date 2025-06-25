return {
   -- Priority of the songs here. Lower priority will precede. Defaults to 5 if unspecified.
   priority = 9,
   loading_songs = {
      "mars.ogg",
   },
   intro_songs = {
      "mars.ogg",
   },
   -- Spob-specific songs. Replace songs for certain spobs
   spob_songs = {
	  ["Ventus"] = { "dark_city.ogg" },
	  ["Drift"] = { "imminent_threat.ogg" },
   },
   -- Spob-specific songs.
   spob_songs_func = function( spb )
      local class = spb:class()
      local tags = spb:tags()
      local services = spb:services()

      -- Special conditions that limit
      if tags.ruined then
         return {
            "ruined_suspense.ogg",
            "dark_orchestra.ogg",
            "space_emergency.ogg",
         }
      elseif tags.abandoned then
         return {
            "nordic_saxo.ogg",
         }
      elseif tags.destroyed then
         return {
            "intrigue.ogg",
            "tension.ogg",
         }
      elseif tags.mysterious then
         return {
            "end_of_time.ogg",
            "the_last_mystery.ogg",
            "winterstorm_1.ogg"
         }
      elseif tags.pirate then
         return {
            "pirate1_theme1.ogg",
         }
      end

      -- We'll add stuff here
      local lst = {}
      if tags.urban then
         tmergei( lst, { "meet_the_fish.ogg" } )
      end
      if tags.pirate then
         tmergei( lst, { "pirate1_theme1.ogg" } )
      end
      if tags.station then
         tmergei( lst, { "cosmostation.ogg", "snabba_labba.ogg" } )
      end
      if services.shipyard then
         tmergei( lst, { "gonna_be_gone.ogg" } )
      end

      -- Added based on class
      if class == "M" or class == "MD" or class=="H" then
         tmergei( lst, { "agriculture.ogg", "peaceful_world.ogg", "boschs_garden.ogg" } )
      elseif class == "O" then
         tmergei( lst, { "ocean.ogg" } )
      elseif class == "P" then
         tmergei( lst, { "snow.ogg", "nordic_winter_25_for_25.ogg" } )
      elseif class=="I" or class=="J" or class=="S" or class=="T" or class=="Y" then
         if not services.inhabited then
            tmergei( lst, { "methyl_swamp.ogg" } )
         end
      end

      -- Nothing add, so try to add something
      if #lst <= 0 then
         -- More generic defaults
         if services.inhabited then
            tmergei( lst, { "upbeat.ogg" } )
         else
            tmergei( lst, { "end_of_time.ogg", "the_last_mystery.ogg", "winterstorm_1.ogg" } )
         end
      end

      return lst
   end,
   -- System-specific songs. Replace songs for certain systems
   system_ambient_songs = {
	  ["Ventyy"] = { "/snd/music/dark_city.ogg" },
   },
}
