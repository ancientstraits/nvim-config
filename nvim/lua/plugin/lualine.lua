require 'lualine'.setup {
	options = {
		theme = 'gruvbox'
	},
	sections = {
		lualine_c = {"os.data('%a')", 'data', require'lsp-status'.status}
	}
}
