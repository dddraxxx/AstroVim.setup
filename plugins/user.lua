-- return {
--     "sainnhe/sonokai",
--     init = function() -- init function runs before the plugin is loaded
--     vim.g.sonokai_style = "shusia"
--     end,
-- }

return {
      {
            "catppuccin/nvim",
            name = "catppuccin",
            config = function()
                  require("catppuccin").setup {
                        flavour = "mocha"
                  }
            end,
      }
}
