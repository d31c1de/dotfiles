-- lua/plugins/nvim-treesitter.lua
-- Syntax highlighting, folding, textobjects. Wraps Neovim's native
-- treesitter. Lazy-loaded on buffer open; `build` updates parsers.
return {
  'nvim-treesitter/nvim-treesitter',
  branch = 'main', -- was: version = 'main'
  build = ':TSUpdate', -- update parsers after plugin update
  event = { 'BufReadPre', 'BufNewFile' }, -- lazy-load: highlight only when a file opens
  opts = {
    ensure_installed = {
      'bash',
      'c',
      'diff',
      'html',
      'lua',
      'luadoc',
      'markdown',
      'markdown_inline',
      'query',
      'vim',
      'vimdoc',
    },
    auto_install = true, -- missing parser on FileType? install it automatically
  },
}
