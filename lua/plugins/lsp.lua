local codeAction = {
	"aznhe21/actions-preview.nvim",
	enabled = false,
	keys = {
		{
			"gra",
			function()
				require("actions-preview").code_actions()
			end,
			desc = "Toggle Spectre",
		},
	},
}

local tinyCodeAction = {
	"rachartier/tiny-code-action.nvim",
	dependencies = {
		{ "nvim-lua/plenary.nvim" },
	},
	event = "LspAttach",
	opts = {
		picker = {
			"snacks",
		},
	},
	config = function()
		vim.keymap.set("n", "gra", function()
			require("tiny-code-action").code_action()
		end, { noremap = true, silent = true })
	end,
}

local indentScope = {
	"echasnovski/mini.indentscope",
	event = "BufEnter",
	opts = {
		symbol = "│",
		options = { try_as_border = true },
	},
	init = function()
		vim.api.nvim_create_autocmd("FileType", {
			pattern = {
				"help",
				"neo-tree",
				"Trouble",
				"trouble",
				"lazy",
				"dashboard",
				"mason",
				"notify",
				"toggleterm",
			},
			callback = function()
				vim.b.miniindentscope_disable = true
			end,
		})
	end,
}

local hlarg = {
	"m-demare/hlargs.nvim",
	config = function()
		require("hlargs").setup()
	end,
}

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
			"<leader>sP",
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
	indentScope,
	context,
	spectre,
	trouble,
	comment,
	lspconfig,
	mason,
	codeAction,
	tinyCodeAction,
}
