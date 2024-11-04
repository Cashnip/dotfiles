vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opt = vim.opt

opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.smartindent = true
opt.wrap = false

opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false

opt.number = true
opt.relativenumber = true
opt.termguicolors = true
opt.colorcolumn = '100'
opt.cmdheight = 1
opt.scrolloff = 10
opt.completeopt = "menuone,noinsert,noselect"

vim.keymap.set("n", "<leader>f", vim.cmd.Ex)
