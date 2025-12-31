require("config.lazy")

local opt = vim.opt

opt.number = true -- line numbers
opt.relativenumber = true
opt.wrap = true -- wraps long lines
opt.mouse = ""
opt.showmatch = true -- matching brackets
opt.ttyfast = true --          faster scrolling-speed
opt.showmode = false
opt.tabstop = 4
opt.shiftwidth = 4
opt.ruler = true
opt.foldcolumn = "2"
opt.autoindent = true
opt.smartindent = true
opt.splitright = true -- terminal position
opt.clipboard = "unnamedplus" -- yank copies into system clipboard
opt.termguicolors = true

vim.cmd("syntax on")
vim.cmd("colorscheme tokyonight-night")
