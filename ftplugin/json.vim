fu! GetChar()
	let l:col = col('.') - 1
	return getline('.')[col:col]
endfu


inoremap <expr> : GetChar() == '"' ? "\<Esc>la: " : ":"
