return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    picker = {
      sources = {
        notifications = {
          win = { preview = { wo = { wrap = true } } },
        },
        keymaps = {
          -- layout = { hidden = { "preview" } },
          win = { preview = { wo = { wrap = true } } },
        },
      },
      -- layout = {
      --   preset = "vertical",
      -- },
    },
  },
}
