-- init.lua
-- Entry point: Neovim reads this file at startup.
-- Order matters here — leaders must be set before plugins load:
--   1. options   (vim.o/vim.g settings, leaders)
--   2. keymaps   (editor-general mappings)
--   3. autocmds  (event handlers incl. LspAttach)
--   4. lazy      (plugin manager; imports lua/plugins/)
require 'config.options'
require 'config.keymaps'
require 'config.autocmds'
require 'config.lazy'
