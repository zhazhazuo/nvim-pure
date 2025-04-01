local comment = {
	"folke/todo-comments.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	}
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
	end
}

return {
	comment,
	lspconfig,
	mason,
}
