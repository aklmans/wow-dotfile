local wezterm = require("wezterm")
local act = wezterm.action

return function(config)
	config.mouse_bindings = {
		-- disable copy on selection
		-- {
		-- 	event = { Up = { streak = 1, button = "Left" } },
		-- 	mods = "NONE",
		-- 	action = wezterm.action.Nop,
		-- },
		-- Change the default click behavior so that it only selects
	    -- text and doesn't open hyperlinks
	    {
	      event = { Up = { streak = 1, button = "Left" } },
	      mods = "NONE",
	      action = act.CompleteSelection "ClipboardAndPrimarySelection",
	    },

	    -- and make CTRL-Click open hyperlinks
	    {
	      event = { Up = { streak = 1, button = "Left" } },
	      mods = "CTRL",
	      action = act.OpenLinkAtMouseCursor,
	    },
	    {
	      event = { Down = { streak = 3, button = "Left" } },
	      action = wezterm.action.SelectTextAtMouseCursor "SemanticZone",
	      mods = "NONE",
	    },
	}
end
