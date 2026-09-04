-- lua/plugins/mason-lspconfig.lua
return {
  'mason-org/mason-lspconfig.nvim',
  dependencies = { 'mason-org/mason.nvim' },
  opts = { automatic_enable = false },
}
