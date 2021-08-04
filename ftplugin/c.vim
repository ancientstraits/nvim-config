let b:c_macro = toupper(expand('%:t:r') . '_' . expand('%:e'))

nnoremap <expr> <leader>ti "\i" . "#ifndef " . b:c_macro . "\<CR>" . "#define " . b:c_macro . "\<CR><CR><CR><CR>" . "#endif // !" . b:c_macro . "\<Esc>kki"
