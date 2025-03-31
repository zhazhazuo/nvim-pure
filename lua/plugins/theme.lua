local hard_hack = {
	'hardhackerlabs/theme-vim',
	config = function()
		vim.cmd.colorscheme 'hardhacker'
	end,
}

return {
	hard_hack
}
