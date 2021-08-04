nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <leader>tf <Cmd>:lua require'tree'.open()<CR>
nnoremap <leader>tF <Cmd>:lua require'tree'.close()<CR>
nnoremap <leader>ts <Cmd>:SymbolsOutline<CR>
nnoremap <leader>te <Cmd>:TroubleToggle<CR>
nnoremap <leader>fs <Cmd>:lua require'telescope.builtin'.lsp_document_symbols{}<CR>
nnoremap <leader>fe <Cmd>:lua require'telescope.builtin'.lsp_document_diagnostics{}<CR>
