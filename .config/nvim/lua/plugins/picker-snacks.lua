return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    picker = {
      layout = {
        preset = "default",
      },
      layouts = {
        default = {
          layout = {
            box = "horizontal",
            width = 0.8,
            min_width = 120,
            height = 0.8,
            {
              box = "vertical",
              border = true,
              title = "{title} {live} {flags}",
              { win = "input", height = 1, border = "bottom" },
              { win = "list", border = "none" },
            },
            { win = "preview", title = "{preview}", border = true, width = 0.3 },
          },
        },
      },
    },
  },
}
