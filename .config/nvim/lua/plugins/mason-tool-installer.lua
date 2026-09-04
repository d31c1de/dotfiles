-- lua/plugins/mason-tool-installer.lua
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
