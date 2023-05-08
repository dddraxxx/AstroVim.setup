return {
    -- first key is the mode
    n = {
        -- second key is the lefthand side of the map
        -- mappings seen under group name "Buffer"
        ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
        ["<leader>bs"] = { "<cmd>so<cr>", desc = "source file"}
    },
    i = {
        ["<C-f>"] = {function() require("copilot.suggestion").accept_line() end, desc="accept_line"}
    }
}
