require 'plugins'

local api = vim.api
local opt = vim.o

opt.number = true
opt.relativenumber = true
opt.scrolloff = 999
opt.sidescrolloff = 999
opt.cursorline = true
opt.hidden = true

vim.cmd [[

colo gruvbox
set termguicolors
let mapleader = ' '

]]
