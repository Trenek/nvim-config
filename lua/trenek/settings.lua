-- line numbers
vim.o.number = true
vim.o.relativenumber = false

-- tabs
vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

-- line breaks
vim.o.wrap = true
vim.o.linebreak = true
vim.o.breakindent = true
vim.o.showbreak = "ͱ"

-- undo tree does backups instead of vim
vim.o.swapfile = false
vim.o.backup = false
vim.o.undodir = vim.fn.stdpath('data') .. "/undodir"
vim.o.undofile = true

vim.o.termguicolors = true
