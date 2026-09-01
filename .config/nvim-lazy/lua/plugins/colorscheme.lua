return {
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "mocha",
      transparent_background = true,
      integrations = {
        noice = true,
        mason = true,
      },
      custom_highlights = function(colors)
        return {
          -- Floating windows
          NormalFloat = { bg = "NONE" },
          FloatBorder = { bg = "NONE", fg = colors.overlay1 },
          FloatTitle = { bg = "NONE" },

          -- LSP hover / signature help
          LspInfoBorder = { bg = "NONE" },

          -- Lazy.nvim popup
          LazyNormal = { bg = "NONE" },
          LazyBackdrop = { bg = "NONE" },

          -- Mason popup
          MasonNormal = { bg = "NONE" },

          -- Telescope
          TelescopeNormal = { bg = "NONE" },
          TelescopeBorder = { bg = "NONE", fg = colors.overlay1 },
          TelescopePromptNormal = { bg = "NONE" },
          TelescopePromptBorder = { bg = "NONE", fg = colors.overlay1 },
          TelescopeResultsNormal = { bg = "NONE" },
          TelescopePreviewNormal = { bg = "NONE" },

          -- Noice (cmdline popup, LSP docs)
          NoiceCmdlinePopup = { bg = "NONE" },
          NoiceCmdlinePopupBorder = { bg = "NONE", fg = colors.overlay1 },
          NoicePopup = { bg = "NONE" },
          NoicePopupBorder = { bg = "NONE", fg = colors.overlay1 },

          -- Which-key
          WhichKeyFloat = { bg = "NONE" },

          -- nvim-cmp completion menu
          Pmenu = { bg = "NONE" },
          PmenuSbar = { bg = "NONE" },
        }
      end,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-nvim",
    },
  },
}
