return {
    'sainnhe/gruvbox-material',
    lazy = false,
    priority = 1000,
    config = function()
        vim.g.gruvbox_material_better_performance = 1
        vim.g.gruvbox_material_transparent_background = 1
        vim.g.gruvbox_material_float_style = "dim"
        vim.g.gruvbox_material_diagnostic_virtual_text = "colored"
        vim.cmd.colorscheme('gruvbox-material')
    end
}

-- rebelot/kanagawa.nvim
-- catppuccin/nvim
-- rose-pine/neovim
-- marko-cerovac/material.nvim
-- sainnhe/gruvbox-material
