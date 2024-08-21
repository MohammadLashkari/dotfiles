vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.undofile = true

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.smartcase = true
vim.opt.ignorecase = true
vim.opt.hlsearch = false

vim.opt.updatetime = 400
vim.opt.timeoutlen = 400

vim.opt.wrap = false
-- vim.opt.linebreak = true
-- vim.opt.showbreak = '->'

vim.opt.scrolloff = 13
vim.opt.mouse = 'a'
vim.opt.signcolumn = 'yes'
vim.opt.inccommand = 'split'
vim.opt.termguicolors = true
vim.opt.showmode = false
vim.opt.formatoptions:remove 'o'
vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }
-- vim.opt.termbidi = true
