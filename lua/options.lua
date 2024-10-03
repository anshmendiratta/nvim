vim.cmd("set termguicolors")
vim.cmd("set background=dark")
vim.cmd("set laststatus=0")

vim.wo.fillchars = "eob: "
vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.signcolumn = "no"

vim.opt.inccommand = "split"
vim.opt.undofile = true

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.o.hlsearch = true
vim.o.mouse = ""
vim.o.breakindent = true
vim.o.undofile = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.updatetime = 250
vim.o.timeoutlen = 300
vim.o.completeopt = "menu,menuone,noselect"

vim.cmd("let g:python3_host_prog = '/Users/anshmendiratta/miniconda3/bin/python3'")
