return {
    {
        'nvim-tree/nvim-web-devicons',
    },
    {
        "vague2k/vague.nvim",
        config = function()
            require("vague").setup({
                transparent = true,
            })
            vim.cmd.colorscheme("vague")
        end
    }
}
-- {
--     "EdenEast/nightfox.nvim",
--     lazy = false,
--     priority = 1000,
--     config = function()
--         require("nightfox").setup({
--             options = {
--                 transparent = true,
--             },
--         })
--         vim.cmd.colorscheme("carbonfox")
--     end
-- }
-- }
--     {
--         "rebelot/kanagawa.nvim",
--         lazy = false,
--         priority = 1000,
--         config = function()
--             require("kanagawa").setup({
--                 transparent = true,
--                 keywordStyle = { italic = false },
--                 statementStyle = { bold = false },
--                 colors = {
--                     theme = {
--                         all = {
--                             ui = {
--                                 bg_gutter = "none",
--                             },
--                         }
--                     }
--                 },
--             })
--             vim.cmd.colorscheme("kanagawa-dragon")
--         end
--     }
-- }
