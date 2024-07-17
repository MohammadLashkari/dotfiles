return {
    'nvim-tree/nvim-tree.lua',
    config = function()
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1
        require("nvim-tree").setup({
            vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<cr>'),
            renderer = {
                indent_markers = { enable = true },
                group_empty = true,
                icons = {
                    show = {
                        file = true,
                        folder = false,
                        folder_arrow = true,
                        git = true
                    }
                }
            }
        })
    end
}
