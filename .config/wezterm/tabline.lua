local wezterm = require("wezterm")

local tabline = wezterm.plugin.require("https://github.com/michaelbrusegard/tabline.wez")

tabline.setup({
	options = {
		icons_enabled = false,
		theme = "Catppuccin Mocha",
		tabs_enabled = true,
		theme_overrides = {
			normal_mode = {
				a = { fg = "#C0CAF5", bg = "none" },
				b = { bg = "none" },
				c = { fg = "#C0CAF5", bg = "none" },
			},
			copy_mode = {
				a = { bg = "#1E1E2E" },
				b = { bg = "#1E1E2E" },
				c = { bg = "#1E1E2E" },
			},
			search_mode = {
				a = { bg = "#1E1E2E" },
				b = { bg = "#1E1E2E" },
				c = { bg = "#1E1E2E" },
			},
			tab = {
				active = { fg = "#181825", bg = "#89B4FA" },
				inactive = { fg = "#C0CAF5", bg = "#1E1E2E" },
				inactive_hover = { fg = "#EAD7C6", bg = "#1E1E2E" },
			},
		},
		section_separators = {
			left = "",
			right = "",
		},
		component_separators = {
			left = "",
			right = "",
		},
		tab_separators = {
			left = wezterm.nerdfonts.pl_left_half_circle_thick,
			right = wezterm.nerdfonts.pl_right_half_circle_thick,
		},
	},
	sections = {
		tabline_a = { { "workspace", padding = 0 } },
		tabline_b = { " " },
		tabline_c = { " " },
		tab_active = {
			"index",
			":",
			{ "tab", padding = 0 },
			{ "zoomed", padding = 0 },
		},
		tab_inactive = { "index", ":", { "tab", padding = 0 } },
		tabline_x = { " " },
		tabline_y = { " " },
		tabline_z = { { "hostname", padding = 0 } },
	},
	extensions = {},
})

return {
	apply_to_config = function(config)
		tabline.apply_to_config(config)
	end,
}
