-- return {
--   "snacks.nvim",
--   opts = {
--     dashboard = {
--       sections = {
--         {
--           section = "terminal",
--           cmd = "chafa ~/dotfiles/.config/nvim/starry-night.jpg --format symbols --symbols all --size 60x23; sleep .1",
--           height = 17,
--           padding = 1,
--         },
--         { section = "keys", gap = 1, padding = 1 },
--         { section = "startup" },
--       },
--     },
--   },
-- }

return {
  "snacks.nvim",
  opts = {
    dashboard = {
      enabled = not vim.g.vscode,
      preset = {},
      sections = {
        {
          section = "terminal",
          cmd = '{cat /Users/taptat/.config/nvim/logo.txt; echo "                                           '
            .. vim.version().major
            .. "."
            .. vim.version().minor
            .. "."
            .. vim.version().patch
            .. '"} | { command -v lolcrab >/dev/null && lolcrab || cat; }',
          height = 8,
          align = "center",
          indent = 5,
          padding = 0,
        },
        { section = "keys", gap = 1, padding = 1 },
        { section = "startup" },
      },
    },
  },
}

-- return {
--   "snacks.nvim",
--   opts = {
--     dashboard = {
--       sections = {
--         { section = "terminal", cmd = "fortune -s | cowsay", padding = 1, indent = 8 },
--         { section = "keys", gap = 1, padding = 1 },
--         { section = "startup" },
--       },
--     },
--   },
-- }
