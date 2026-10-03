return {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    presets = {
      lsp_doc_border = "single",
    },
    views = {
      hover = {
        border = {
          style = "single",
          padding = { 0, 1 },
        },
      },
      cmdline_popup = {
        border = {
          style = "single", -- Options: "none", "single", "double", "rounded", "solid", "shadow"
          padding = { 0, 1 },
        },
      },
      popupmenu = {
        border = {
          style = "single", -- Changes the border for the completions dropdown
          padding = { 0, 1 },
        },
      },
    },
  },
}
