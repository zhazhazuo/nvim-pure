local img_clip = {
	"HakonHarnes/img-clip.nvim",
	event = "VeryLazy",
	opts = {
		-- add options here
		-- or leave it empty to use the default settings
		default = {
			dir_path = "5-Achive/Assets",
		},
	},
	keys = {},
}

local markdown_view = {
	"OXY2DEV/markview.nvim",
	lazy = false,
	config = function()
		require("markview").setup({
			preview = {
				icon_provider = "devicons",
			},

			preview_ignore = {
				markdown_inline = {
					-- For enabling using "gd" to navigate in the Obsidian.
					"!internal_links",
				},
			},
		})
	end,
}

local render_markdown = {
	"MeanderingProgrammer/render-markdown.nvim",
	dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" }, -- if you prefer nvim-web-devicons
	enabled = false,
	---@module 'render-markdown'
	---@type render.md.UserConfig
	opts = {},
	lazy = false,
	config = function()
		require("render-markdown").setup({
			heading = { position = "inline" },
			quote = { repeat_linebreak = true },
			win_options = {
				showbreak = { default = "", rendered = "  " },
				breakindent = { default = false, rendered = true },
				breakindentopt = { default = "", rendered = "" },
			},
		})
	end,
}

local obsidian = {
	"epwalsh/obsidian.nvim",
	version = "*", -- recommended, use latest release instead of latest commit
	lazy = true,
	ft = "markdown",
	dependencies = {
		-- Required.
		"nvim-lua/plenary.nvim",
	},
	opts = {
		ui = {
			enable = false,
		},
		workspaces = {
			{
				name = "personal",
				path = "~/Library/Mobile Documents/iCloud~md~obsidian/Documents",
			},
		},
		attachments = {
			img_folder = "5-Achive/Assets",
		},
		completion = {
			nvim_cmp = false,
		},
	},
}

return {
	img_clip,
	markdown_view,
	render_markdown,
	obsidian,
}
