local map = vim.api.nvim_set_keymap
map('n', '<leader>tt', '<Cmd>ToggleTerm direction=horizontal<CR>', {noremap = true})
map('n', '<leader>ft', '<Cmd>ToggleTerm direction=float<CR>', {noremap = true})

vim.cmd [[
tnoremap <Esc> <C-\><C-n>
]]
