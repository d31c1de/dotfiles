return {
  'nvim-telescope/telescope.nvim',
  keys = {
    { '<leader>sh', '<cmd>Telescope help_tags<CR>', desc = '[S]earch [H]elp' },
    { '<leader>sk', '<cmd>Telescope keymaps<CR>', desc = '[S]earch [K]eymaps' },
    { '<leader>sf', '<cmd>Telescope find_files<CR>', desc = '[S]earch [F]iles' },
    { '<leader>ss', '<cmd>Telescope builtin<CR>', desc = '[S]earch [S]elect Telescope' },
    { '<leader>sw', '<cmd>Telescope grep_string<CR>', mode = { 'n', 'v' }, desc = '[S]earch current [W]ord' },
    { '<leader>sg', '<cmd>Telescope live_grep<CR>', desc = '[S]earch by [G]rep' },
    { '<leader>sd', '<cmd>Telescope diagnostics<CR>', desc = '[S]earch [D]iagnostics' },
    { '<leader>sr', '<cmd>Telescope resume<CR>', desc = '[S]earch [R]esume' },
    { '<leader>s.', '<cmd>Telescope oldfiles<CR>', desc = '[S]earch Recent Files ("." for repeat)' },
    { '<leader>sc', '<cmd>Telescope commands<CR>', desc = '[S]earch [C]ommands' },
    { '<leader><leader>', '<cmd>Telescope buffers<CR>', desc = '[ ] Find existing buffers' },
    {
      '<leader>/',
      function()
        require('telescope.builtin').current_buffer_fuzzy_find(
          require('telescope.themes').get_dropdown { winblend = 10, previewer = false }
        )
      end,
      desc = '[/] Fuzzily search in current buffer',
    },
    {
      '<leader>s/',
      function()
        require('telescope.builtin').live_grep {
          grep_open_files = true,
          prompt_title = 'Live Grep in Open Files',
        }
      end,
      desc = '[S]earch [/] in Open Files',
    },
    {
      '<leader>sn',
      function()
        require('telescope.builtin').find_files { cwd = vim.fn.stdpath 'config', follow = true }
      end,
      desc = '[S]earch [N]eovim files',
    },
  },
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope-ui-select.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
      enabled = vim.fn.executable 'make' == 1,
    },
  },
  opts ={
      extensions = {
        ['ui-select'] = { require('telescope.themes').get_dropdown() },
      },
    },
  config = function(_, opts)
    require('telescope').setup(opts)
    pcall(require('telescope').load_extension, 'fzf')
    pcall(require('telescope').load_extension, 'ui-select')
  end,
}
