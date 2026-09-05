-- lua/plugins/gitsigns.lua
-- Git signs in the gutter (+/~/_ on changed lines).
-- Lazy-loaded on buffer open. No keymaps here — hunk staging/navigation
-- keymaps can be added with an `on_attach` inside `opts` if wanted.
return {
  'lewis6991/gitsigns.nvim',
  enabled = true,
  opts = {
    signs = {
      add = { text = '+' },
      change = { text = '~' },
      delete = { text = '_' },
      topdelete = { text = '‾' },
      changedelete = { text = '~' },
    },
  },
}
