return {
   loading_songs = {
      "mars.ogg",
   },
   intro_songs = {
      "mars.ogg",
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
   ambient_songs = {
      "ambient2.ogg", "mission.ogg",
      "peace1.ogg", "peace2.ogg", "peace4.ogg", "peace6.ogg",
      "void_sensor.ogg", "ambiphonic.ogg",
      "ambient4.ogg", "terminal.ogg", "eureka.ogg",
      "ambient2_5.ogg", "78pulse.ogg", "therewillbestars.ogg",
   },
   -- Factional songs. Systems default to songs of dominant factions.
   factional_songs = {
      Federation = { "zalek2.ogg", "empire1.ogg", add_neutral = true },
	  ["Aurora Empire"] = { "dvaered1.ogg", "dvaered2.ogg", add_neutral = true },
   },
   nebula_combat_songs = {
      "nebu_battle1.ogg",
      "nebu_battle2.ogg",
      "combat1.ogg",
      "combat2.ogg",
   },
   combat_songs = {
      "combat3.ogg",
      "combat1.ogg",
      "combat2.ogg",
      "vendetta.ogg",
   },
   -- Factional combat songs. Defaults to dominant factions.
   factional_combat_songs = {
--	  Federation = { "battlesomething2.ogg" },
--	  Polaris = { "battlesomething2.ogg" },
--	  Empire = { "battlesomething2.ogg" },
      Pirate     = { "battlesomething2.ogg", "blackmoor_tides.ogg", add_neutral = true },
   },
   -- Spob-specific songs. Replace songs for certain spobs
   spob_songs = {
	  ["Kolan"] = { "agriculture.ogg" },
	  ["LPAD"] = { "intrigue.ogg" },
	  ["Goliath"] = { "ambient3.ogg" },
	  ["Kyractus"] = { "tension.ogg" },
	  ["Hax"] = { "intrigue.ogg" },
	  ["Selon"] = { "tension.ogg" },
	  ["Vyndycalus"] = { "intrigue.ogg" },
	  ["Ventus"] = { "dark_city.ogg" },
	  ["MDS-01"] = { "ambient3.ogg" },
	  ["Drift"] = { "imminent_threat.ogg" },
	  ["UHP-0474"] = { "intrigue.ogg" },
	  ["Lupus"] = { "tension.ogg" },
	  ["Irradiated Deimos"] = { "intrigue.ogg" },
   },
   -- System-specific songs. Replace songs for certain systems
   system_ambient_songs = {
	  ["Ventyy"] = { "/snd/music/dark_city.ogg" },
   },
}
