local wezterm = require "wezterm"


wezterm.on('format-tab-title', function(tab, tabs, panes, config, hover, max_width)
  local pane = tab.active_pane
  local title = pane.title
  -- 从工作目录中提取最后一个部分作为目录名
  local dir_name = title:match("([^/]+)$")
  -- 如果无法提取目录名，则使用原始标题
  title = dir_name or pane.title
  -- 如果面板有域名，则在标题后添加空格（这里您之前有这样的处理，我保留了这个逻辑）
  if pane.domain_name then
    title = title .. ' '
  end
  -- 在标题前添加tab编号
  title = string.format(" %d: %s", tab.tab_index+1, title)

  return title
end)

-- 定义一个全局变量来存储tab_bar的显示状态
local tab_bar_visible = true


return function(config)
	-- window
	-- config.text_background_opacity = 0.9
	-- config.window_background_opacity = 0.9
	config.macos_window_background_blur = 5
	config.window_close_confirmation = "NeverPrompt"
	config.window_padding = {
		left = 10,
		right = 10,
		top = 10,
		bottom = 10,
	}
	config.hyperlink_rules = wezterm.default_hyperlink_rules()
	config.window_decorations = "RESIZE"

	-- tabbar
	config.tab_bar_at_bottom = true
	config.enable_tab_bar = tab_bar_visible
  config.enable_scroll_bar = false
  config.use_fancy_tab_bar = false
  config.show_new_tab_button_in_tab_bar = true
	config.hide_tab_bar_if_only_one_tab = true
	config.tab_max_width = 26

  config.window_frame = {
    -- 使用全局配置的字体作为窗口框架的字体
    font = config.font,
    -- 使用全局配置的字体大小作为窗口框架的字体大小
    font_size = config.font_size,

    -- 设置窗口左边框的宽度为0.25个字符宽度
    border_left_width = '0.0cell',
    -- 设置窗口右边框的宽度为0.25个字符宽度
    border_right_width = '0.0cell',
    -- 设置窗口底部边框的高度为0.125个字符高度
    border_bottom_height = '0.0cell',
    -- 设置窗口顶部边框的高度为0.125个字符高度
    border_top_height = '0.0cell',
    -- 设置窗口左边框的颜色为#3D465E
    border_left_color = '#3D465E',
    -- 设置窗口右边框的颜色为#3D465E
    border_right_color = '#3D465E',
    -- 设置窗口底部边框的颜色为#3D465E
    border_bottom_color = '#3D465E',
    -- 设置窗口顶部边框的颜色为#3D465E
    border_top_color = '#3D465E',
}

  config.colors = {
  	split = "#3D465E", -- pane color
  }

	-- performance
	config.max_fps = 30
	config.animation_fps = 0
	config.cursor_blink_ease_in = "Constant"
	config.cursor_blink_ease_out = "Constant"

	config.use_resize_increments = false

	config.default_prog = { "/bin/zsh", "-l" }
	config.quit_when_all_windows_are_closed = true
	config.color_scheme = "Catppuccin Mocha"
	config.harfbuzz_features = { "calt=1", "clig=1", "liga=1" }
	config.adjust_window_size_when_changing_font_size = true
	config.native_macos_fullscreen_mode = true
	config.keys = {
	    { key = "f",mods = "CMD|CTRL",  action = "ToggleFullScreen" },
	    { key = "+", mods = "CTRL", action = "IncreaseFontSize" },
	    { key = "-", mods = "CTRL", action = "DecreaseFontSize" },
	    { key = "Backspace", mods = "CTRL", action = "ResetFontSize" },
	    { key = "C", mods = "CMD", action = wezterm.action { CopyTo = "Clipboard" } },
	    { key = "V", mods = "CMD", action = wezterm.action { PasteFrom = "Clipboard" } },
	    { key = "S", mods = "CMD|SHIFT", action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' } },
	    { key = "D", mods = "CMD|SHIFT", action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' } },
	    { key = 'p', mods = 'CTRL', action = wezterm.action.PaneSelect { alphabet = '1234567890' } },
	    {
	      key = 'B',
	      mods = 'CMD|SHIFT',
	      action = wezterm.action_callback(function(window, pane)
	        -- 切换tab_bar的显示状态
	        tab_bar_visible = not tab_bar_visible
	        -- 应用新的配置到当前窗口
	        window:set_config_overrides({enable_tab_bar = tab_bar_visible})
	      end),
    	},
  }
  	config.send_composed_key_when_left_alt_is_pressed = false
  	config.send_composed_key_when_right_alt_is_pressed = false

  	config.default_cwd = "/Users/aklman/Codes"

end
