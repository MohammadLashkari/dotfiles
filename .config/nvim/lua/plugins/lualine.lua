return {
    'nvim-lualine/lualine.nvim',
    config = function()
        require('lualine').setup {
            options = {
                globalstatus = true,
                theme = "codedark",
                icons_enabled = false,
                component_separators = '|',
            },
            sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = { 'mode', 'filename', 'branch', 'diagnostics' },
                lualine_x = { 'diff', 'filetype', 'progress' },
                lualine_y = {},
                lualine_z = {},
            }
        }
    end
}
