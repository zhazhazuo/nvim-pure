local neoscroll = {
	"karb94/neoscroll.nvim",
	event = "BufEnter",
	config = function()
		require("neoscroll").setup({})
	end,
}

local statusline = {
	"echasnovski/mini.statusline",
	version = "false",
	config = function()
		require("mini.statusline").setup()
	end,
}

local noice = {
	{
		"folke/noice.nvim",
		event = "VimEnter",
		opts = {
			cmdline = {
				view = "cmdline",
			},
			lsp = {
				override = {
					["vim.lsp.util.convert_input_to_markdown_lines"] = true,
					["vim.lsp.util.stylize_markdown"] = true,
					["cmp.entry.get_documentation"] = true,
				},
				signature = {
					enabled = true,
				},
				hover = {
					enabled = true,
				},
			},
			routes = {
				{
					filter = {
						event = "msg_show",
						any = {
							{ find = "%d+L, %d+B" },
							{ find = "; after #%d+" },
							{ find = "; before #%d+" },
						},
					},
					view = "mini",
				},
			},
			presets = {
				bottom_search = true,
				-- command_palette = true,
				long_message_to_split = true,
				-- inc_rename = false, -- enables an input dialog for inc-rename.nvim
				lsp_doc_border = true,
			},
		},
	},
}

return {
	statusline,
	noice,
	neoscroll,
}
