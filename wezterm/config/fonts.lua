local wezterm = require('wezterm')
local platform = require('utils.platform')

local font = 'FantasqueSansM Nerd Font'
local font_size = platform().is_mac and 18 or 16
local line_height = platform().is_mac and 1.4 or 1.2

return {
   font = wezterm.font(font, { weight = "Bold" , italic = true }),
   font = wezterm.font_with_fallback({
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
	}),

   font_size = font_size,
   line_height = line_height,

   --ref: https://wezfurlong.org/wezterm/config/lua/config/freetype_pcf_long_family_names.html#why-doesnt-wezterm-use-the-distro-freetype-or-match-its-configuration
   freetype_load_target = 'Normal', ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
   freetype_render_target = 'Normal', ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
}
