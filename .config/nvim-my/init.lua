-- Set <space> as the leader key
-- See `:h mapleader`
-- NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '

require('config.options')
require('config.keymaps')
require('config.autocmds')
require("config.lazy")

