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

" luasnip
" Expand
imap <A-i> <Plug>luasnip-expand
smap <A-i> <Plug>luasnip-expand

" Expand or jump
imap <expr> <A-r>   luasnip#expand_or_jumpable()  ? '<Plug>luasnip-expand-or-jump' : '<A-r>'
smap <expr> <A-r>	luasnip#expand_or_jumpable()  ? '<Plug>luasnip-expand-or-jump' : '<A-r>'

" Jump forward or backward
" imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
" smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
imap <expr> <A-q>	luasnip#jumpable(-1)  ? lua require'luasnip'.jump(-1)      : '<A-q>'
smap <expr> <A-q>	luasnip#jumpable(-1)  ? lua require'luasnip'.jump(-1)      : '<A-q>'

" Select or cut text to use as $TM_SELECTED_TEXT in the next snippet.
" See https://github.com/hrsh7th/vim-vsnip/pull/50
" nmap        s   <Plug>(vsnip-select-text)
" xmap        s   <Plug>(vsnip-select-text)
" nmap        S   <Plug>(vsnip-cut-text)
" xmap        S   <Plug>(vsnip-cut-text)

" If you want to use snippet for multiple filetypes, you can `g:vsnip_filetypes` for it.
" let g:vsnip_filetypes = {}
" let g:vsnip_filetypes.javascriptreact = ['javascript']
" let g:vsnip_filetypes.typescriptreact = ['typescript']

inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm('<CR>')
inoremap <silent><expr> <A-e>     compe#close('<A-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })

