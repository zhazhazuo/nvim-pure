return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"mason.nvim",
			{ "williamboman/mason-lspconfig.nvim", config = function() end },
    },
	},

	{
		"williamboman/mason.nvim",
		cmd = "Mason",
		build = ":MasonUpdate",
		config = function (_, opts)
			require("mason").setup(opts)
		end
	}

}
