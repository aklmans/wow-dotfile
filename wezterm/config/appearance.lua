local wezterm = require('wezterm')
local gpu_adapters = require('utils.gpu_adapter')
local colors = require('colors.custom')

return {
   animation_fps = 60,
   max_fps = 60,
   front_end = 'WebGpu',
   webgpu_power_preference = 'HighPerformance',
   webgpu_preferred_adapter = gpu_adapters:pick_best(),
   quit_when_all_windows_are_closed = true,
   harfbuzz_features = { "calt=1", "clig=1", "liga=1" },
   native_macos_fullscreen_mode = true,
   default_cwd = "/Users/aklman/Codes",
   adjust_window_size_when_changing_font_size = true,

   -- color scheme
   colors = colors,

   -- background
   -- background = {
   --    {
   --       source = { File = wezterm.GLOBAL.background },
   --       horizontal_align = 'Center',
   --    },
   --    {
   --       source = { Color = colors.background },
   --       height = '100%',
   --       width = '100%',
   --       opacity = 0.96,
   --    },
   -- },

   -- scrollbar
   enable_scroll_bar = false,

   -- tab bar
   enable_tab_bar = true,
   hide_tab_bar_if_only_one_tab = false,
   tab_bar_at_bottom = true,
   use_fancy_tab_bar = false,
   show_new_tab_button_in_tab_bar = true,
   tab_max_width = 40,
   show_tab_index_in_tab_bar = false,
   switch_to_last_active_tab_when_closing_tab = true,

   -- window
   window_padding = {
      left = 10,
      right = 10,
      top = 10,
      bottom = 10,
   },
   window_close_confirmation = 'NeverPrompt', -- "AlwaysPrompt" | "NeverPrompt" | "PromptIfMultipleTabs"
   window_decorations = "RESIZE", -- "NONE" | "FULL" | "RESIZE" | "BORDER"
   -- text_background_opacity = 0.9,
	window_background_opacity = 0.9,
	macos_window_background_blur = 5,
   window_frame = {
      active_titlebar_bg = '#090909',
      -- font = fonts.font,
      -- font_size = fonts.font_size,

      border_left_width = '0.0cell',
      border_right_width = '0.0cell',
      border_bottom_height = '0.0cell',
      border_top_height = '0.0cell',
      border_left_color = '#3D465E',
      border_right_color = '#3D465E',
      border_bottom_color = '#3D465E',
      border_top_color = '#3D465E',
   },
   inactive_pane_hsb = {
      saturation = 0.9,
      brightness = 0.65,
   },
}
