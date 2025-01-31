return {
    'nvim-lualine/lualine.nvim',
    config = function()
        require('lualine').setup {
            options = {
                theme = 'iceberg_dark',
                globalstatus = true,
                icons_enabled = false,
                component_separators = '|',
            },
            sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = { 'mode', { 'filename', path = 1 }, 'branch', 'diagnostics', 'diff' },
                lualine_x = { "aerial", "progress" },
                lualine_y = {},
                lualine_z = {},
            }
        }
    end
}
