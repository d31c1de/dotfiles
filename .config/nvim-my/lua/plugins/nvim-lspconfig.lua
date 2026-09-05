-- lua/plugins/nvim-lspconfig.lua
-- LSP coordinator: configures and enables every server declared in
-- lua/config/servers.lua. Lazy-loaded on BufReadPre/BufNewFile, i.e.
-- only when a real file is opened.
return {
  'neovim/nvim-lspconfig',
  event = { 'BufReadPre', 'BufNewFile' },
  dependencies = {
    'mason-org/mason.nvim',
    'mason-org/mason-lspconfig.nvim',
    'WhoIsSethDaniel/mason-tool-installer.nvim',
  },
  config = function()
    local servers = require 'config.servers'
    for name, server in pairs(servers) do
      vim.lsp.config(name, server) -- register per-server settings
      vim.lsp.enable(name) -- start it when matching buffers open
    end
  end,
}
