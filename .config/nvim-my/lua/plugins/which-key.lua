-- lua/plugins/which-key.lua
-- Popup listing available keymaps as you type a prefix (<leader>).
-- `spec` documents the group names; the [S]earch / [T]oggle prefixes must
-- match the `desc`s used in the actual keymaps (keymaps.lua, autocmds.lua).
return {
  {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    opts = {
      delay = 0,
      icons = { mappings = vim.g.have_nerd_font },
      spec = {
        { '<leader>s', group = '[S]earch', mode = { 'n', 'v' } },
        { '<leader>t', group = '[T]oggle' },
        { '<leader>h', group = 'Git [H]unk', mode = { 'n', 'v' } },
        { 'gr', group = 'LSP Actions', mode = { 'n' } },
      },
    },
  },
}
