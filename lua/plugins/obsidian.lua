local render_markdown = {
	"MeanderingProgrammer/render-markdown.nvim",
	-- dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" }, -- if you use the mini.nvim suite
	-- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
	dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" }, -- if you prefer nvim-web-devicons
	---@module 'render-markdown'
	---@type render.md.UserConfig
	opts = {},
	lazy = false,
	config = function()
		require("render-markdown").setup {
			heading = { position = "inline" },
			quote = { repeat_linebreak = true },
			win_options = {
				showbreak = { default = "", rendered = "  " },
				breakindent = { default = false, rendered = true },
				breakindentopt = { default = "", rendered = "" },
			},
		}
	end,
}

return {
	render_markdown
}
