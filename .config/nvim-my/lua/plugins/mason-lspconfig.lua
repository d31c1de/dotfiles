-- lua/plugins/mason-lspconfig.lua
-- Bridge between mason package names and lspconfig server names.
-- automatic_enable = false: servers are enabled explicitly in nvim-lspconfig.lua.
return {
  'mason-org/mason-lspconfig.nvim',
  dependencies = { 'mason-org/mason.nvim' },
  opts = { automatic_enable = false },
}
