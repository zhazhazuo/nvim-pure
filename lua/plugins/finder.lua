local snipe = {
	"leath-dub/snipe.nvim",
	event = "VimEnter",
	keys = {
		{
			"<leader>fn",
			function()
				require("snipe").open_buffer_menu()
			end,
			desc = "Open Snipe buffer menu",
		},
	},
	opts = {},
}

local telescope = {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
		},
	},
	opts = {
		extensions_list = { "fzf" },
	},
}

-- FIXME: it does not work.
local harpoon = {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")

		harpoon:setup()

		vim.keymap.set("n", "<leader>a", function()
			harpoon:list():add()
		end)
		vim.keymap.set("n", "<C-e>", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end)

		vim.keymap.set("n", "<C-h>", function()
			harpoon:list():select(1)
		end)
		vim.keymap.set("n", "<C-t>", function()
			harpoon:list():select(2)
		end)
		vim.keymap.set("n", "<C-n>", function()
			harpoon:list():select(3)
		end)
	end,
}

return {
	snipe,
	harpoon,
	telescope,
}
