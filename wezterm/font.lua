local wezterm = require("wezterm")

return function(config)
	config.font_size = 18
  	config.line_height = 1.2
  	config.font = wezterm.font("FantasqueSansM Nerd Font", { weight = "Bold" , italic = true })
  	config.font_rules = {
	    {
	      italic = true,
	      font = wezterm.font("FantasqueSansM Nerd Font", { weight = "Bold", italic = true }),
	    },
	}
	config.font = wezterm.font_with_fallback({
		{
			family = "FantasqueSansM Nerd Font",
		},
		{
			family = "AaSFSSSCS",
		},
		{
			family = "CaskaydiaCove Nerd Font Propo",
		},
		{
			family = "JetBrainsMonoNL Nerd Font Mono",
		},
		{
			family = "Maple Mono",
		},
		{
			family = "Hack Nerd Font",
		},
	})
end
