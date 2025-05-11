vim.g.mapleader = " "

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
vim.keymap.set("v", "<leader>p", [["_dp]])

vim.keymap.set("v", "J", ":m '>+1<cr>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<cr>gv=gv")

vim.keymap.set("n", "<c-d>", "<c-d>zz")
vim.keymap.set("n", "<c-u>", "<c-u>zz")

vim.keymap.set("n", "<leader>s", [[:%s/<c-r><c-w>//gI<left><left><left>]])
vim.keymap.set("v", "<leader>s", [[o:s/<c-r><c-w>//gI<left><left><left>]])

vim.keymap.set("n", "<esc>", "<cmd>nohlsearch<cr>")

vim.keymap.set("n", "<c-right>", "<c-w>5>")
vim.keymap.set("n", "<c-left>", "<c-w>5<")
vim.keymap.set("n", "<c-up>", "<c-w>5+")
vim.keymap.set("n", "<c-down>", "<c-w>5-")

vim.keymap.set("n", "<leader>vd", "<cmd>vsplit | lua vim.lsp.buf.definition()<cr>")
