return {
    {
        "tpope/vim-fugitive",
        event = "VeryLazy",
        config = function()
            vim.keymap.set("n", "<leader>G", vim.cmd.Git)
            vim.keymap.set("n", "<leader>gh", ":diffget //2<cr>")
            vim.keymap.set("n", "<leader>gl", ":diffget //3<cr>")
        end,
    },
    {
        'lewis6991/gitsigns.nvim',
        event = "VeryLazy",
    },
}
