local wezterm = require("wezterm")
local act = wezterm.action

return {
	keys = {
		-- { key = 'Tab', mods = 'LEADER', action = act.ActivateTabRelative(1) },
		{
			key = "d",
			mods = "LEADER",
			action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
		},
		{
			key = "d",
			mods = "LEADER|SHIFT",
			action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
		},
		-- {
		-- 	key = "w",
		-- 	mods = "LEADER",
		-- 	action = wezterm.action.CloseCurrentPane({ confirm = true }),
		-- },
		-- {
		-- 	key = "h",
		-- 	mods = "CTRL",
		-- 	action = wezterm.action.ActivatePaneDirection("Left"),
		-- },
		-- {
		-- 	key = "l",
		-- 	mods = "CTRL",
		-- 	action = wezterm.action.ActivatePaneDirection("Right"),
		-- },
		-- {
		-- 	key = "j",
		-- 	mods = "CTRL",
		-- 	action = wezterm.action.ActivatePaneDirection("Down"),
		-- },
		-- {
		-- 	key = "k",
		-- 	mods = "CTRL",
		-- 	action = wezterm.action.ActivatePaneDirection("Up"),
		-- },
		{
			key = "k",
			mods = "CMD",
			action = act.ClearScrollback("ScrollbackAndViewport"),
		},
	},
}
