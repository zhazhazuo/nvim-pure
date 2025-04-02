local comment = {
	"folke/todo-comments.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	},
}

-- show the above context when it is outside
local context = {
	"nvim-treesitter/nvim-treesitter-context",
	event = "BufReadPost",
	opts = {
		throttle = true,
		max_lines = 0,
		patterns = {
			default = {
				"class",
				"function",
				"method",
			},
		},
	},
}

local spectre = {
	"nvim-pack/nvim-spectre",
	build = false,
	cmd = "Spectre",
	opts = { open_cmd = "noswapfile vnew" },
	keys = {
		{
			"<leader>S",
			function()
				require("spectre").Toggle()
			end,
			desc = "Toggle Spectre",
		},
		{
			"<leader>sp",
			function()
				require("spectre").open_file_search({ select_word = true })
			end,
			desc = "Search Word in Current File (Spectre)",
		},
	},
}

local trouble = {
	"folke/trouble.nvim",
	opts = {}, -- for default options, refer to the configuration section for custom setup.
	cmd = "Trouble",
	keys = {
		{
			"<leader>xx",
			"<cmd>Trouble diagnostics toggle<cr>",
			desc = "Diagnostics (Trouble)",
		},
		{
			"<leader>xX",
			"<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
			desc = "Buffer Diagnostics (Trouble)",
		},
		{
			"<leader>cs",
			"<cmd>Trouble symbols toggle focus=false<cr>",
			desc = "Symbols (Trouble)",
		},
		{
			"<leader>cl",
			"<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
			desc = "LSP Definitions / references / ... (Trouble)",
		},
		{
			"<leader>xL",
			"<cmd>Trouble loclist toggle<cr>",
			desc = "Location List (Trouble)",
		},
		{
			"<leader>xQ",
			"<cmd>Trouble qflist toggle<cr>",
			desc = "Quickfix List (Trouble)",
		},
	},
}

local lspconfig = {
	"neovim/nvim-lspconfig",
	dependencies = {
		"mason.nvim",
		{ "williamboman/mason-lspconfig.nvim", config = function() end },
	},
}

local mason = {
	"williamboman/mason.nvim",
	cmd = "Mason",
	build = ":MasonUpdate",
	config = function(_, opts)
		require("mason").setup(opts)
	end,
}

return {
	context,
	spectre,
	trouble,
	comment,
	lspconfig,
	mason,
}
