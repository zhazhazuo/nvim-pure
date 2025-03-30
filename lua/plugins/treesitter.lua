local config = {
	{
	"nvim-treesitter/nvim-treesitter",
	version = false, -- last release is way too old and doesn't work on Windows
	build = ":TSUpdate",
	opts = {
		highlight = { enable = true },
		indent = { enable = true },
		textobjects = { enable = true },
		incremental_selection = {
			enable = true,
			keymaps = {
				init_selection = "<C-space>",
				node_incremental = "<C-space>",
				scope_incremental = false,
				node_decremental = "<bs>",
			},
		},
	},
	config = function(_, opts)
		require("nvim-treesitter.configs").setup(opts)
	end,
},
	{
    "windwp/nvim-ts-autotag",
    -- event = "LazyFile",
    opts = {},
  },

{
		'windwp/nvim-autopairs',
	config = function()
		require("nvim-autopairs").setup()
	end
}
}

return config
