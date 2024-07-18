-- Define mapleader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Highlight active line
vim.opt.cursorline = true

-- Use spaced instead of tabs, use 2 spaces for each tab
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

--Line numbers
vim.wo.number = true

-- Enable true color support
vim.cmd [[ set termguicolors ]]

