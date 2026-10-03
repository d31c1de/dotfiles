return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    opts = {
        ensure_installed = "all",
        highlight = { enable = true },
        incremental_selection = { enable = true },
        textobjects = { enable = true },
    },
}
