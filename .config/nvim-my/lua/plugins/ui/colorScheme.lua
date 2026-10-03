-- return {
--   {
--     "catppuccin/nvim",
--     name = "catppuccin",
--     priority = 1000,
--     opts = {
--       transparent_background = true,
--       float = {
--         transparent = true,
--         solid = false,
--       },
--     },
--   },
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "catppuccin-mocha",
--     },
--   },
-- }

return {
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {
            style = "night",
            transparent = true,
            styles = {
                sidebars = "transparent",
                keywords = { bold = true },
                functions = { bold = true },
                floats = "transparent",
            },
            on_colors = function(colors)
                colors.bg_statusline = colors.none
            end,
            on_highlights = function(hl)
                -- Make the visual selection block background more visible
                hl.Visual = { bg = "#4D4264" }
                hl.MatchParen = { bg = "#4D4264", fg = "#FF9E64" }
            end,
        },
        config = function(_,opts)
            require("tokyonight").setup(opts)
            vim.cmd.colorscheme("tokyonight")
        end,
    },
}

-- return {
-- 	"rose-pine/neovim",
-- 	name = "rose-pine",
-- 	config = function()
-- 		vim.cmd("colorscheme rose-pine")
-- 	end
-- }
