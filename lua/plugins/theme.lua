local firely = {
	"christianrickert/vim-firefly",
}

local xcode = {
	"arzg/vim-colors-xcode",
	config = function()
		-- vim.cmd.colorscheme("xcodehc")
	end,
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

local grubox = {
	"sainnhe/gruvbox-material",
	lazy = false,
	-- priority = 1000,
	config = function()
		-- Optionally configure and load the colorscheme
		-- directly inside the plugin declaration.
		vim.g.gruvbox_material_enable_italic = true
		vim.g.gruvbox_material_transparent_background = 2
		vim.g.gruvbox_material_enable_bold = 1
		vim.g.gruvbox_material_float_style = 'dim'
		vim.g.gruvbox_material_diagnostic_virtual_text = "highlighted"
		vim.g.gruvbox_material_diagnostic_line_highlight = 1
		vim.g.gruvbox_material_better_performance = 1

		vim.cmd.colorscheme("gruvbox-material")
	end,
}

-- the built-in habamax theme
-- vim.cmd.colorscheme("habamax")
-- vim.cmd.colorscheme("anysphere")

return {
	firely,
	xcode,
	oxocarbon,
	hard_hack,
	grubox,
}
