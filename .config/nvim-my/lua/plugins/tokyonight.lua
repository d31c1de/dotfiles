-- lua/plugins/tokyonight.lua
-- Colorscheme. lazy = false + priority 1000: loads before anything else
-- so there's no default-theme flash at startup.
return {
  {
    'folke/tokyonight.nvim',
    enabled = true,
    lazy = false,
    priority = 1000,
    opts = {
      comments = { italic = false },
      style = 'night',
      transparent = false, -- Enable this to disable setting the background color
      styles = {
        sidebars = 'dark', -- style for sidebars, logging windows and floating windows
        floats = 'dark', -- style for floating windows
      },
    },
    config = function(_, opts)
      require('tokyonight').setup(opts) -- pass the options to setup
      vim.cmd [[colorscheme tokyonight]]
    end,
  },
}
