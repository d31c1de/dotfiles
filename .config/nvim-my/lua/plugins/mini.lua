-- lua/plugins/mini.lua
-- mini.nvim modules used here:
--   mini.ai       — around/inside textobjects (va), aa/ii extensions)
--   mini.surround — add/delete/replace surrounding brackets (sa", ds", sr")
--   mini.pairs    — auto-close brackets while typing
-- Uses `config` (not `opts`) because several modules need their own setup.
return {
  'nvim-mini/mini.nvim',
  config = function()
    if vim.g.have_nerd_font then
      require('mini.icons').setup()
      MiniIcons.mock_nvim_web_devicons()
    end

    require('mini.ai').setup {
      mappings = {
        around_next = 'aa',
        inside_next = 'ii',
      },
      n_lines = 500,
    }

    require('mini.surround').setup()

    require('mini.pairs').setup()
  end,
}
