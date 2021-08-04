local map = vim.api.nvim_set_keymap

map('n', '<leader>ff', '<Cmd>lua require"telescope.builtin".find_files()<CR>', {noremap = true})
map('n', '<leader>fg', '<Cmd>lua require"telescope.builtin".live_grep()<CR>', {noremap = true})
map('n', '<leader>fb', '<Cmd>lua require"telescope.builtin".buffers()<CR>', {noremap = true})
map('n', '<leader>fh', '<Cmd>lua require"telescope.builtin".help_tags()<CR>', {noremap = true})
