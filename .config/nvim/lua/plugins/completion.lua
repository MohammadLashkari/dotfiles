return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "saadparwaiz1/cmp_luasnip",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-cmdline",
        "hrsh7th/cmp-nvim-lsp",
        "L3MON4D3/LuaSnip",
        "rafamadriz/friendly-snippets",
        "windwp/nvim-autopairs",
    },
    config = function()
        local cmp = require("cmp")
        local luasnip = require("luasnip")
        require('nvim-autopairs').setup()
        require('luasnip.loaders.from_vscode').lazy_load()
        local cmp_autopairs = require('nvim-autopairs.completion.cmp')
        cmp.event:on(
            'confirm_done',
            cmp_autopairs.on_confirm_done()
        )
        cmp.setup {
            preselect = cmp.PreselectMode.None,
            view = {
                docs = { auto_open = false }
            },
            window = {
                completion = cmp.config.window.bordered(),
                documentation = cmp.config.window.bordered(),
            },
            sources = {
                { name = "nvim_lsp" },
                { name = "luasnip" },
                { name = "buffer" },
                { name = "path" },
            },
            mapping = {
                ["<c-n>"] = cmp.mapping.select_next_item { behavior = cmp.SelectBehavior.Select },
                ["<c-p>"] = cmp.mapping.select_prev_item { behavior = cmp.SelectBehavior.Select },
                ["<c-u>"] = cmp.mapping.scroll_docs(-4),
                ["<c-d>"] = cmp.mapping.scroll_docs(4),
                ["<c-e>"] = cmp.mapping.close(),
                ["<cr>"] = cmp.mapping.confirm { select = true },
                ["<c-space>"] =
                    function()
                        if cmp.visible() then
                            if cmp.visible_docs() then
                                cmp.close_docs()
                            else
                                cmp.open_docs()
                            end
                        else
                            cmp.complete()
                        end
                    end,
            },
            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end,
            },
        }

        luasnip.config.set_config {
            history = false,
            updateevents = "TextChanged,TextChangedI",
        }

        vim.keymap.set({ "i", "s" }, "<c-j>", function()
            if luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            end
        end, { silent = true })

        vim.keymap.set({ "i", "s" }, "<c-k>", function()
            if luasnip.jumpable(-1) then
                luasnip.jump(-1)
            end
        end, { silent = true })

        cmp.setup.filetype({ "sql", "mysql", "plsql" }, {
            sources = {
                { name = "vim-dadbod-completion" },
                { name = "buffer" },
            },
        })
    end,
}
