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
opt.colorcolumn = '0'
opt.cmdheight = 1
opt.scrolloff = 10
opt.completeopt = "menuone,noinsert,noselect"

vim.keymap.set("n", "<leader>f", "<cmd>Oil<cr>")


vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set ("x", "<leader>p", "\"_dP")
