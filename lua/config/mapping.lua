local map = vim.keymap.set

map("n", "<leader>gg", "<cmd> LazyGit <CR>", {
	desc = "LazyGit",
})

map("n", "<C-Q>", "<cmd> nohlsearch <CR>", {
	desc = "Remove Search HL"
})

map('n', "<leader>x", "<cmd>close<CR>", {
	desc = "Close Current Buffer"
})

map("i", "<C-h>", "<Left>", { desc = "move left" })
map("i", "<C-l>", "<Right>", { desc = "move right" })
map("i", "<C-j>", "<Down>", { desc = "move down" })
map("i", "<C-k>", "<Up>", { desc = "move up" })
