require 'nvim-treesitter.configs'.setup {
	ensure_installed = 'maintained',
	ignore_install = {"html", "css", "cmake"},
	highlight = {
		enable = true,
		disable = {"html", "css", "cmake"}
	},
}
