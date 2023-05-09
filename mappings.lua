local maps = {
    -- first key is the mode
    n = {
        -- second key is the lefthand side of the map
        -- mappings seen under group name "Buffer"
        ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
        ["<leader>bs"] = { "<cmd>so<cr>", desc = "source file"},
        ["<C-a>"] = {"ggVG", desc = "select all"},
    },
    i = {
        ["<C-f>"] = {function() require("copilot.suggestion").accept_line() end, desc="accept_line"},
    },
    v = {}
}

-- change default keymaps for plugins
local utils = require "astronvim.utils"
local is_available = utils.is_available

if is_available "Comment.nvim" then
    maps.n["<leader>;"] = {
        function() require("Comment.api").toggle.linewise.count(vim.v.count > 0 and vim.v.count or 1) end,
        desc = "Comment line",
    }
    maps.v["<leader>;"] =
    { "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>", desc = "Toggle comment line" }
end

return maps
