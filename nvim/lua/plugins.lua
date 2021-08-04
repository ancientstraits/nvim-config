vim.cmd [[packadd packer.nvim]]

return require 'packer'.startup {
function()
	use 'wbthomason/packer.nvim'

	use 'ap/vim-css-color'

	use 'joshdick/onedark.vim'
	use 'folke/tokyonight.nvim'
	use 'morhetz/gruvbox'
	use 'akinsho/nvim-toggleterm.lua'

	use 'windwp/nvim-autopairs'
	
	use {
		'hoob3rt/lualine.nvim',
		requires = {'kyazdani42/nvim-web-devicons', opt = true}
	}
	use 'romgrk/barbar.nvim'

	use 'Xuyuanp/scrollbar.nvim'
	use 'b3nj5m1n/kommentary'


	-- LSP plugins
	use 'neovim/nvim-lspconfig'
	use 'nvim-lua/lsp-status.nvim'
	use 'hrsh7th/nvim-compe'
	use 'folke/trouble.nvim'
	use 'glepnir/lspsaga.nvim'
	use 'simrat39/symbols-outline.nvim'

	-- Snippets
	use 'hrsh7th/vim-vsnip'
	use 'rafamadriz/friendly-snippets'

	use 'tjdevries/astronauta.nvim'
	use 'kyazdani42/nvim-tree.lua'
	use {
	    'nvim-treesitter/nvim-treesitter',
	    run = ':TSUpdate'
	}

	use {
		'nvim-telescope/telescope.nvim',
		requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
	}



	use 'nvim-lua/plenary.nvim'
	use {
		'glacambre/firenvim',
    		run = function() vim.fn['firenvim#install'](0) end 
	}
	
	use 'kyazdani42/nvim-web-devicons'
end,

config = {
	display = {
		open_fn = require 'packer.util'.float,
	}
}
}


