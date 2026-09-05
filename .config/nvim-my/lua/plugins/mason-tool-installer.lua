-- lua/plugins/mason-tool-installer.lua
-- Installs tools (LSP servers + formatters) on startup.
-- The list is derived from lua/config/servers.lua, so a new server only
-- needs to be added there. Non-LSP tools go in the list below.
return {
  'WhoIsSethDaniel/mason-tool-installer.nvim',
  dependencies = { 'mason-org/mason.nvim' },
  opts = function()
    local ensure_installed = vim.tbl_keys(require 'config.servers')
    vim.list_extend(ensure_installed, {
      -- add extra mason tools here
    })
    return { ensure_installed = ensure_installed }
  end,
}
