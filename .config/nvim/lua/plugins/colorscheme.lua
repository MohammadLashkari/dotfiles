return {
    {
        'nvim-tree/nvim-web-devicons',
    },
    {
        "rebelot/kanagawa.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("kanagawa").setup({
                keywordStyle = { italic = false },
                statementStyle = { bold = false },
                colors = {
                    theme = {
                        all = {
                            ui = {
                                bg_gutter = "none",
                            },
                        }
                    }
                },
                overrides = function(colors)
                    local theme = colors.theme
                    return {
                        Boolean = { bold = false },
                        WinSeparator = { fg = theme.ui.nontext },
                        NormalFloat = { bg = "none" },
                        FloatBorder = { bg = "none" },
                        FloatTitle = { bg = "none" },
                        NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },
                        LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
                        MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
                        TelescopeBorder = { bg = "none" },
                    }
                end,
            })
            vim.cmd.colorscheme("kanagawa-dragon")
        end
    }

    -- {
    --     'sainnhe/gruvbox-material',
    --     lazy = false,
    --     priority = 1000,
    --     config = function()
    --         vim.g.gruvbox_material_better_performance = 1
    --         vim.g.gruvbox_material_transparent_background = 1
    --         vim.g.gruvbox_material_float_style = "dim"
    --         vim.g.gruvbox_material_diagnostic_virtual_text = "colored"
    --         vim.cmd.colorscheme('gruvbox-material')
    --     end
    -- }
}
