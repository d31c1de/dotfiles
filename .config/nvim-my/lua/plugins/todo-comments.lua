-- lua/plugins/todo-comments.lua
-- Highlights TODO/FIXME/HACK/... keywords in comments.
return {
  {
    'folke/todo-comments.nvim',
    opts = { signs = false },
  },
}
