return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.6',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>f', builtin.find_files)
        vim.keymap.set('n', '<leader>fw', builtin.grep_string)
        vim.keymap.set('n', '<leader>fg', builtin.live_grep)
        vim.keymap.set('n', '<leader>fb', builtin.buffers)
        vim.keymap.set('n', '<leader>fd', builtin.diagnostics)
        vim.keymap.set('n', '<leader>fc', builtin.git_commits)
        vim.keymap.set('n', '<leader>fs', builtin.lsp_document_symbols)
        vim.keymap.set('n', '<leader>/', function()
            builtin.current_buffer_fuzzy_find(
                require('telescope.themes').get_dropdown({
                    winblend = 10,
                    previewer = false,
                    layout_config = { width = 0.7 },
                })
            )
        end
        )
    end
}
