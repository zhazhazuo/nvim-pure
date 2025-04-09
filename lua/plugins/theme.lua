local firely = {
	"christianrickert/vim-firefly",
}

local xcode = {
	"arzg/vim-colors-xcode",
}

local hard_hack = {
	"hardhackerlabs/theme-vim",
	config = function()
		-- vim.cmd.colorscheme("hardhacker")
	end,
}

local oxocarbon = {
	"nyoom-engineering/oxocarbon.nvim",
	config = function()
		-- vim.cmd.colorscheme("oxocarbon")
	end,
}

-- the built-in habamax theme
vim.cmd.colorscheme("habamax")

return {
	firely,
	xcode,
	oxocarbon,
	hard_hack,
}
