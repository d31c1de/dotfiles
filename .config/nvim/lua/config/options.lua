-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.snacks_animate = false

-- No usable perl on this machine, so silence the provider warning
vim.g.loaded_perl_provider = 0

-- The gem bin dir isn't on PATH, so point ruby provider at it directly
vim.g.ruby_host_prog = "/opt/homebrew/lib/ruby/gems/4.0.0/bin/neovim-ruby-host"

-- Dedicated venv for the python provider so pyenv doesn't need pynvim everywhere
vim.g.python3_host_prog = vim.fn.stdpath("data") .. "/venv/bin/python3"

vim.opt.guicursor:append("v:hor20")
vim.diagnostic.enable(false)
vim.o.winborder = "single"
