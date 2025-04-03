local map = vim.keymap.set

map("n", "<leader>gg", "<cmd> LazyGit <CR>", {
	desc = "LazyGit",
})

map("n", "<Esc>", "<cmd> nohlsearch <CR>", {
	desc = "Remove Search HL",
})

map("n", "<C-Q>", "<cmd> qa <CR>", {
	desc = "Quit Vim",
})

map("n", "<leader>x", function()
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
	noremap = true,
	nowait = true,
})

map("n", "<leader>k", '<cmd> execute "%bdelete|edit#|bdelete#"<CR>', { desc = "Only keep current buffer" })

map("n", "<leader>ss", function()
	require("persistence").load()
end, {
	desc = "Reset the Workspace",
})

-- For motion
map("i", "<C-h>", "<Left>", { desc = "move left" })
map("i", "<C-l>", "<Right>", { desc = "move right" })
map("i", "<C-j>", "<Down>", { desc = "move down" })
map("i", "<C-k>", "<Up>", { desc = "move up" })
map("i", "<C-E>", "<C-o>$", { noremap = true, desc = "move to end" })

-- For terminal
map("t", "<C-X>", "<C-\\><C-n>", { desc = "Quit from T mode" })

-- For LSP
map("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<cr>")
map("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>")
