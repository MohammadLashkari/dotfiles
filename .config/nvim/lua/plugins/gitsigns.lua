return {
    'lewis6991/gitsigns.nvim',
    event = "VeryLazy",
    config = function()
        require('gitsigns').setup()
        vim.keymap.set('n', '<leader>gp', '<cmd>Gitsigns preview_hunk<cr>')
    end
}
