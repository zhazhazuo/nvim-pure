local tmux_navigator = {
	"christoomey/vim-tmux-navigator",
	event = "VimEnter",
	cmd = {
		"TmuxNavigateLeft",
		"TmuxNavigateDown",
		"TmuxNavigateUp",
		"TmuxNavigateRight",
		"TmuxNavigatePrevious",
	},
	keys = {
		{ "<C-h>",  "<cmd><C-U>TmuxNavigateLeft<cr>" },
		{ "<C-j>",  "<cmd><C-U>TmuxNavigateDown<cr>" },
		{ "<C-k>",  "<cmd><C-U>TmuxNavigateUp<cr>" },
		{ "<C-l>",  "<cmd><C-U>TmuxNavigateRight<cr>" },
		{ "<C-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
	},
}

local leap = {
	"ggandor/leap.nvim",
	event = "Vimenter",
	config = function()
		vim.keymap.set({ "n", "x", "o" }, "s", "<Plug>(leap-forward)")
		vim.keymap.set({ "n", "x", "o" }, "S", "<Plug>(leap-backward)")
		vim.keymap.set({ "n", "x", "o" }, "ts", "<Plug>(leap-from-window)")
	end,
}

return {
	tmux_navigator,
	leap
}
