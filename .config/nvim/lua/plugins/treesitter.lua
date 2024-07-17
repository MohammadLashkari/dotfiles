return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
        require('nvim-treesitter.configs').setup({
            ensure_installed = {
                'c', 'bash', 'go', 'lua', 'dart', 'python', 'html', 'json', 'yaml', 'markdown', 'vimdoc', 'templ',
            },
            auto_install = true,
            highlight = {
                enable = true,
            },
            indent = {
                enable = true,
            },
        })
    end
}
