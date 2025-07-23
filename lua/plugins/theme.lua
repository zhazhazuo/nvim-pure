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
	priority = 1000,
	config = function()
		-- Optionally configure and load the colorscheme
		-- directly inside the plugin declaration.
		vim.g.gruvbox_material_enable_italic = true
		vim.g.gruvbox_material_transparent_background = 2
		vim.g.gruvbox_material_enable_bold = 1
		vim.g.gruvbox_material_float_style = "dim"
		vim.g.gruvbox_material_diagnostic_virtual_text = "highlighted"
		vim.g.gruvbox_material_diagnostic_line_highlight = 1
		vim.g.gruvbox_material_better_performance = 1

		vim.cmd.colorscheme("gruvbox-material")

		vim.cmd([[
			highlight @markup.heading.2.markdown guifg=#F1FA8C gui=bold
			highlight @markup.heading.3.markdown guifg=#8BE9FD gui=bold
			highlight @markup.heading.4.markdown guifg=#50FA7B gui=bold
			highlight @markup.heading.5.markdown guifg=#BD93F9 gui=bold
			highlight @markup.heading.6.markdown guifg=#FF79C6 gui=bold
		]])
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
