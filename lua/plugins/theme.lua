local hard_hack = {
	"hardhackerlabs/theme-vim",
	config = function()
		-- vim.cmd.colorscheme("hardhacker")
	end,
}

local habamax = { "ntk148v/habamax.nvim", dependencies = { "rktjmp/lush.nvim" } }

vim.cmd.colorscheme("habamax")

return {
	habamax,
	hard_hack,
}
