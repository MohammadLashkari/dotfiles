return {
	{
		"nvim-tree/nvim-web-devicons",
	},
	-- {
	-- 	"EdenEast/nightfox.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require("nightfox").setup({
	-- 			options = {
	-- 				transparent = true,
	-- 			},
	-- 		})
	-- 		vim.cmd.colorscheme("nightfox")
	-- 		vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#888888", bg = "none" })
	-- 	end,
	-- },
	-- {
	-- 	"webhooked/kanso.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require("kanso").setup({
	-- 			transparent = true,
	-- 			disableItalics = true,
	-- 			overrides = function(colors)
	-- 				local theme = colors.theme
	-- 				return {
	-- 					WinSeparator = { fg = theme.ui.nontext },
	-- 				}
	-- 			end,
	-- 		})
	-- 		vim.cmd.colorscheme("kanso-zen")
	-- 	end,
	-- },
	{
		"rebelot/kanagawa.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("kanagawa").setup({
				transparent = true,
				keywordStyle = { italic = false },
				statementStyle = { bold = false },
				colors = {
					theme = {
						all = {
							ui = {
								bg_gutter = "none",
							},
						},
					},
				},
				overrides = function(colors)
					local theme = colors.theme
					return {
						Boolean = { bold = false },
						WinSeparator = { fg = theme.ui.nontext },
						TelescopeBorder = { bg = "none" },
					}
				end,
			})
			vim.cmd.colorscheme("kanagawa-dragon")
		end,
	},
}
