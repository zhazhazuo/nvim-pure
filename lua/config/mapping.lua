local map = vim.keymap.set

map("n", "<leader>gg", "<cmd> LazyGit <CR>", {
  desc = "LazyGit",
})

map("n","<C-Q>", "<cmd> nohlsearch <CR>", {
	desc = "Remove Search HL"
})
