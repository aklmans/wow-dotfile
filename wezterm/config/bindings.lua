local wezterm = require('wezterm')
local platform = require('utils.platform')()
local backdrops = require('utils.backdrops')
local act = wezterm.action

local tab_bar_visible = true

local mod = {}

if platform.is_mac then
   mod.SUPER = 'SUPER'
   mod.SUPER_REV = 'SUPER|CTRL'
elseif platform.is_win or platform.is_linux then
   mod.SUPER = 'ALT' -- to not conflict with Windows key shortcuts
   mod.SUPER_REV = 'ALT|CTRL'
end

-- stylua: ignore
local keys = {
   { key = "f",mods = mod.SUPER_REV,  action = "ToggleFullScreen" },
   { key = '+', mods = mod.SUPER, action = "IncreaseFontSize" },
   { key = '-', mods = mod.SUPER, action = "DecreaseFontSize" },
	{ key = '0', mods = mod.SUPER, action = "ResetFontSize" },
   { key = 'f',   mods = mod.SUPER, action = act.Search({ CaseInSensitiveString = '' }) },

   -- cursor movement --
   { key = 'LeftArrow',  mods = mod.SUPER,     action = act.SendString '\x1bOH' },
   { key = 'RightArrow', mods = mod.SUPER,     action = act.SendString '\x1bOF' },
   { key = 'Backspace',  mods = mod.SUPER,     action = act.SendString '\x15' },

   -- copy/paste --
   { key = "C", mods = "CMD", action = wezterm.action { CopyTo = "Clipboard" } },
	{ key = "V", mods = "CMD", action = wezterm.action { PasteFrom = "Clipboard" } },

   -- tabs --
   -- tabs: spawn+close
   { key = 't',          mods = mod.SUPER,     action = act.SpawnTab('DefaultDomain') },
   { key = 't',          mods = mod.SUPER_REV, action = act.SpawnTab({ DomainName = 'WSL:Ubuntu' }) },
   { key = 'w',          mods = mod.SUPER_REV, action = act.CloseCurrentTab({ confirm = false }) },

   -- tabs: navigation
   { key = '[',          mods = mod.SUPER,     action = act.ActivateTabRelative(-1) },
   { key = ']',          mods = mod.SUPER,     action = act.ActivateTabRelative(1) },
   { key = '[',          mods = mod.SUPER_REV, action = act.MoveTabRelative(-1) },
   { key = ']',          mods = mod.SUPER_REV, action = act.MoveTabRelative(1) },

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

   -- window --
   -- spawn windows
   { key = 'n',          mods = mod.SUPER,     action = act.SpawnWindow },

   -- panes --
   -- panes: split panes
   {
      key = 'd',
      mods = 'CMD|SHIFT',
      action = act.SplitVertical({ domain = 'CurrentPaneDomain' }),
   },
   {
      key = 'd',
      mods = mod.SUPER,
      action = act.SplitHorizontal({ domain = 'CurrentPaneDomain' }),
   },

   -- panes: zoom+close pane
   { key = 'Enter', mods = 'CMD|SHIFT',     action = act.TogglePaneZoomState },
   { key = 'w',     mods = mod.SUPER,     action = act.CloseCurrentPane({ confirm = false }) },

   -- panes: navigation
   { key = 'k',     mods = mod.SUPER, action = act.ActivatePaneDirection('Up') },
   { key = 'j',     mods = mod.SUPER, action = act.ActivatePaneDirection('Down') },
   { key = 'h',     mods = mod.SUPER, action = act.ActivatePaneDirection('Left') },
   { key = 'l',     mods = mod.SUPER, action = act.ActivatePaneDirection('Right') },
   {
      key = 'p',
      mods = mod.SUPER_REV,
      action = act.PaneSelect({ alphabet = '1234567890', mode = 'SwapWithActiveKeepFocus' }),
   },
   -- background controls --
   -- {
   --    key = [[/]],
   --    mods = mod.SUPER,
   --    action = wezterm.action_callback(function(window, _pane)
   --       backdrops:random(window)
   --    end),
   -- },
   -- {
   --    key = [[,]],
   --    mods = mod.SUPER,
   --    action = wezterm.action_callback(function(window, _pane)
   --       backdrops:cycle_back(window)
   --    end),
   -- },
   -- {
   --    key = [[.]],
   --    mods = mod.SUPER,
   --    action = wezterm.action_callback(function(window, _pane)
   --       backdrops:cycle_forward(window)
   --    end),
   -- },
}

local mouse_bindings = {
   -- make left click paste from the clipboard
   {
      event = { Up = { streak = 1, button = "Left" } },
      mods = "NONE",
      action = act.CompleteSelection "ClipboardAndPrimarySelection",
   },
   -- make CTRL-Click open hyperlinks
   {
      event = { Up = { streak = 1, button = 'Left' } },
      mods = mod.SUPER,
      action = act.OpenLinkAtMouseCursor,
   },
   -- make SHIFT + left click select text
   {
      event = { Down = { streak = 3, button = "Left" } },
      action = wezterm.action.SelectTextAtMouseCursor "SemanticZone",
      mods = "NONE",
   },
}

return {
   keys = keys,
   mouse_bindings = mouse_bindings,
}
