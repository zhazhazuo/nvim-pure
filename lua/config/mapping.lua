local map = vim.keymap.set

map("n", "<leader>gg", "<cmd> LazyGit <CR>", {
	desc = "LazyGit",
})

map("n", "<C-Q>", "<cmd> nohlsearch <CR>", {
	desc = "Remove Search HL",
})

map("n", "<leader>x", function()
	local filetype = vim.bo.filetype
	local win_type = vim.fn.win_gettype()

	if win_type == "quickfix" then
		vim.cmd("cclose")
	elseif win_type == "loclist" then
		vim.cmd("lclose")
		-- Close current buffer (if not special)
	else
		vim.cmd("bdelete")
	end
end, {
	desc = "Close Current Buffer",
})

map(
	"n",
	"<leader>k",
	'<cmd> execute "%bdelete|edit#|bdelete#"<CR>',
	{ desc = "Only keep current buffer" }
)

map("n", "<leader>ss", function()
	require("persistence").load()
end, {
	desc = "Reset the Workspace",
})

map("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<cr>")

map("i", "<C-h>", "<Left>", { desc = "move left" })
map("i", "<C-l>", "<Right>", { desc = "move right" })
map("i", "<C-j>", "<Down>", { desc = "move down" })
map("i", "<C-k>", "<Up>", { desc = "move up" })
