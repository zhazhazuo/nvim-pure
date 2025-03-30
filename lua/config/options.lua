require('config.lspconfig')

local opt = vim.opt

-- remove the '~' in the empty content.
opt.fillchars = { eob = ' ' }

-- Sync with system clipborad
opt.clipboard = vim.env.SSH_TTY and "" or "unnamedplus"

-- Confirm to save changes before exiting modified buffer
opt.confirm = true

-- highlight the current line
opt.cursorline = true

-- Relative line numbers
opt.number = true
opt.relativenumber = true 

opt.tabstop = 2
opt.shiftround = true -- Round indent
opt.shiftwidth = 2 -- Size of an indent

-- Ture color support
opt.termguicolors = true

-- Allow cursor to move where there is no text in visual block mode
opt.virtualedit = "block" 

-- Command-line completion mode
opt.wildmode = "longest:full,full" 

-- Minimum window width
opt.winminwidth = 5 

-- Disable line wrap
opt.wrap = false 

opt.smoothscroll = true
opt.foldexpr = "v:lua.require'lazyvim.util'.ui.foldexpr()"
opt.foldmethod = "expr"
opt.foldtext = ""


opt.smartcase = true
-- For insert mode to automatically create indent
opt.smartindent = true

-- Enable persistent undo
opt.undofile = true
