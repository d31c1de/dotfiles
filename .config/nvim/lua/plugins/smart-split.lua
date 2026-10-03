return {
    "mrjones2014/smart-splits.nvim",
    lazy = false,
    keys = {
        -- Resizing splits
        { "<C-Left>", function() require("smart-splits").resize_left() end, mode = {"n","t","i"}, desc = "Resize left" },
        { "<C-Down>", function() require("smart-splits").resize_down() end, mode = {"n","t","i"}, desc = "Resize down" },
        { "<C-Up>", function() require("smart-splits").resize_up() end, mode = {"n","t","i"}, desc = "Resize up" },
        { "<C-Right>", function() require("smart-splits").resize_right() end, mode = {"n","t","i"}, desc = "Resize right" },
        -- Moving between splits
        { "<C-h>", function() require("smart-splits").move_cursor_left() end, mode = {"n","t","i"}, desc = "Move left" },
        { "<C-j>", function() require("smart-splits").move_cursor_down() end, mode = {"n","t","i"}, desc = "Move down" },
        { "<C-k>", function() require("smart-splits").move_cursor_up() end, mode = {"n","t","i"}, desc = "Move up" },
        { "<C-l>", function() require("smart-splits").move_cursor_right() end, mode = {"n","t","i"}, desc = "Move right" },
    },
}
