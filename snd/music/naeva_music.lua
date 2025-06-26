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
   credits_songs = {
      "empire1.ogg",
   },
   -- Songs chosen randomly when taking off
   takeoff_songs = {
      "liftoff.ogg",
      "launch2.ogg",
      "launch3chatstart.ogg",
   },
   -- Neutral ambient songs
   ambient_songs_func = function ()
      local sys = system.cur()
      local tags = sys:tags()
      local nebu = sys:nebula() > 0
      if tags.wildspace then
         return {
            "wild_space.ogg",
         }
      elseif nebu then
         return {
            "ambient1.ogg",
            "ambient3.ogg",
            "dreamy_homage.ogg",
            "mellow_suspension.ogg",
         }
      end
      return {
         "ambient2.ogg",
         "ambient2_5.ogg",
         "ambient4.ogg",
         "peace1.ogg",
         "peace2.ogg",
         "peace4.ogg",
         "peace6.ogg",
         "mission.ogg",
         "void_sensor.ogg",
         "ambiphonic.ogg",
         "terminal.ogg",
         "eureka.ogg",
         "78pulse.ogg",
         "therewillbestars.ogg",
      }
   end,
   -- Factional songs. Systems default to songs of dominant factions.
   factional_songs = {
      Federation = { "zalek2.ogg"; add_neutral = true },
      Pirate     = { "pirate1_theme1.ogg", "pirates_orchestra.ogg", "ambient4.ogg",
                     "terminal.ogg" },
   },
   combat_songs_func = function ()
      local sys = system.cur()
      local tags = sys:tags()
      local nebu = sys:nebula() > 0
      if tags.wildspace then
         return {
            "wild_space.ogg"
         }
      elseif nebu then
         return {
            "nebu_battle1.ogg",
            "nebu_battle2.ogg",
         }
      end
      return {
         "combat1.ogg",
         "combat2.ogg",
         "combat3.ogg",
         "vendetta.ogg",
         "run_under_the_sun.ogg",
      }
   end,
   -- Factional combat songs. Defaults to dominant factions.
   factional_combat_songs = {
      Federation = { "galacticbattle.ogg", "battlesomething2.ogg", add_neutral = true },
      Pirate     = { "battlesomething2.ogg", "blackmoor_tides.ogg", add_neutral = true },
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
