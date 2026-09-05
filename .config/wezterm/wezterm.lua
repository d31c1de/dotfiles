local wezterm = require("wezterm")
local act = wezterm.action
-- local tabline = require("tabline")

local config = wezterm.config_builder()

-- Set the starting width (number of columns)
config.initial_cols = 100
-- Set the starting height (number of rows)
config.initial_rows = 30

config.automatically_reload_config = true
config.hide_tab_bar_if_only_one_tab = false

-- leader key: CTRL+SPACE activates the LEADER modifier for 1s
config.leader = { key = "Space", mods = "CTRL", timeout_milliseconds = 1000 }
config.window_close_confirmation = "NeverPrompt"
config.window_decorations = "RESIZE"

-- appearance
-- config.default_cursor_style = "SteadyBlock"
config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 19
config.color_scheme = "Catppuccin Mocha (Gogh)"

-- window setting
config.window_background_opacity = 0.8
config.macos_window_background_blur = 40
config.window_frame = {
	inactive_titlebar_bg = "none",
	active_titlebar_bg = "none",
	-- Increase this value to make the tab bar taller
	font_size = 15.0,
	-- You can also change the font family if desired
	font = wezterm.font("JetBrainsMono Nerd Font", { weight = "Bold" }),
}
config.window_background_gradient = {
	colors = { "#1E1E2E" },
}
config.window_content_alignment = {
	horizontal = "Left",
	vertical = "Center",
}
config.window_padding = {
	left = "1cell",
	right = "1cell",
	top = 0,
	bottom = 16,
}

-- tab_bar
config.use_fancy_tab_bar = true
config.show_new_tab_button_in_tab_bar = false
config.show_close_tab_button_in_tabs = false
config.colors = {
	tab_bar = {
		inactive_tab_edge = "none",
	},
}

local HALF_LEFT_CIRCLE = wezterm.nerdfonts.ple_left_half_circle_thick
local HALF_RIGHT_CIRCLE = wezterm.nerdfonts.ple_right_half_circle_thick
local SOLID_LEFT_ARROW = wezterm.nerdfonts.ple_lower_right_triangle
local SOLID_RIGHT_ARROW = wezterm.nerdfonts.ple_upper_left_triangle

-- tracks whether the leader key is currently active so the tab bar can react
local leader_active = false

wezterm.on("update-right-status", function(window)
	local active = window:leader_is_active()
	if active ~= leader_active then
		leader_active = active
		window:set_right_status(active and "" or "")
	end
end)

wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
	local title = " "
		.. tab.tab_index + 1
		.. ": "
		.. wezterm.truncate_right(tab.active_pane.title, max_width - 1)
		.. " "

	if tab.is_active then
		local active_color = leader_active and "#F5C2E7" or "#89B4FA"
		return {
			{ Background = { Color = "none" } },
			{ Foreground = { Color = active_color } },
			{ Text = SOLID_LEFT_ARROW },
			{ Background = { Color = active_color } },
			{ Foreground = { Color = "#181825" } },
			{ Text = title },
			{ Background = { Color = "none" } },
			{ Foreground = { Color = active_color } },
			{ Text = SOLID_RIGHT_ARROW },
		}
	else
		return {
			{ Background = { Color = "none" } },
			{ Foreground = { Color = "#C0CAF5" } },
			{ Text = title },
		}
	end
end)

-- Finally, return the configuration to wezterm:
config.keys = require("keybinds").keys
config.key_tables = require("keybinds").key_tables
-- table.insert(config.keys, require("smart-splipt").keys)
-- local tabline = require("tabline")
-- tabline.apply_to_config(config)
return config
