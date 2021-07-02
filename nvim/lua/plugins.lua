
return require('packer').startup(
	function()
		
		-- manage packer itself
		use 'wbthomason/packer.nvim'

		-- Themes
		use 'joshdick/onedark.vim'

		-- Treesitter
		use {
			"nvim-treesitter/nvim-treesitter", 
			run = ":TSUpdate",
			config = function() require'my-treesitter' end
		}

		-- Dashborad on startup
		use {
			'glepnir/dashboard-nvim',
			config = function() require'my-dashboard' end
		}

		-- Fuzzy search
		use {
			'nvim-telescope/telescope.nvim',
			requires = {
				{'nvim-lua/popup.nvim'}, 
				{'nvim-lua/plenary.nvim'}
			},
			config = function() require'my-telescope' end
		}

		-- Statusline
		use {
			'glepnir/galaxyline.nvim',
			branch = 'main',
			-- your statusline
			config = function() require'my-statusline' end,
			-- some optional icons
			requires = {'kyazdani42/nvim-web-devicons', opt = true}
		}
		
		-- Git Plugins
		use {
			'lewis6991/gitsigns.nvim',
			config = function() require'my-gitsigns' end
		}
	end
)
