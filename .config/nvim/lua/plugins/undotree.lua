return {
    'mbbill/undotree',
    event = "VeryLazy",
    config = function()
        vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
        vim.g.undotree_WindowLayout = 2
        vim.g.undotree_SetFocusWhenToggle = true
        vim.g.undotree_DiffAutoOpen = false
        vim.g.undotree_HelpLine = false
    end,
}
