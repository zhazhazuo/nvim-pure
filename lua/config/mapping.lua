local map = vim.keymap.set

map("n", "<leader>gg", "<cmd> LazyGit <CR>", {
  desc = "LazyGit",
})

map("n","<C-Q>", "<cmd> nohlsearch <CR>", {
	desc = "Remove Search HL"
})

map('n', "<leader>x", "<cmd> bp|bd#<CR>", {
	desc = "Close Current Buffer"
})
