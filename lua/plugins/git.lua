local lazygit = {
	{
		"kdheepak/lazygit.nvim",
		cmd = "LazyGit",
		config = function()
			require("telescope").load_extension "lazygit"
		end,
	},
}

local config = {
	lazygit
}

return config
