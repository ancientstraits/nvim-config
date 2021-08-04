require 'plugins'

local api = vim.api
local opt = vim.o
local g = vim.g

opt.number = true
opt.relativenumber = true
opt.scrolloff = 999
opt.sidescrolloff = 999
opt.cursorline = true
opt.hidden = true
opt.tabstop = 4
opt.shiftwidth = 4

g.c_syntax_for_h = 1

vim.cmd [[

colo gruvbox
set termguicolors
let mapleader = ' '

]]
