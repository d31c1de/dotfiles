-- lua/plugins/conform.lua
return {
  'stevearc/conform.nvim',
  -- event = { 'BufWritePre' }, -- uncomment when enable format on save
  keys = {
    {
      '<leader>f',
      function() require('conform').format { async = true } end,
      mode = { 'n', 'v' },
      desc = '[F]ormat buffer',
    },
  },
  opts = {
    notify_on_error = false,
    format_on_save = function(bufnr)
      local enabled_filetypes = { -- file type to format on save
        -- lua = true,
        -- python = true,
      }
      if enabled_filetypes[vim.bo[bufnr].filetype] then return { timeout_ms = 500 } end
    end,
    default_format_opts = {
      lsp_format = 'fallback', -- external formatter first, LSP as fallback
    },
    formatters_by_ft = {
      lua = { 'stylua' },
    },
  },
}
