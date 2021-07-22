-- Plugin list for Neovim
--
-- 			by Chuyang Zhou

-- TODO:
-- 	1. nvim-tree file explorer
-- 	2. which-key

return require('packer').startup(
	function()
		
		-- manage packer itself
		use 'wbthomason/packer.nvim'

		-- Themes
		use 'joshdick/onedark.vim'

		-- neovim org mode
		use {
			'vhyrro/neorg',
			config = function() require'my-neorg' end
		}

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

		-- use {
		-- 	"akinsho/nvim-bufferline.lua",
		-- 	config = function() require'my-bufferline' end
		-- }
		
		-- Git Plugins
		use {
			'lewis6991/gitsigns.nvim',
			config = function() require'my-gitsigns' end
		}

		-- Auto Pairs
		-- use {
		-- 	"windwp/nvim-autopairs",
		-- 	config = function() require'my-autopairs' end
		-- }
		use 'jiangmiao/auto-pairs'
		
		-- File explorer
		use {
			"kyazdani42/nvim-tree.lua",
			-- cmd = "NvimTreeToggle",
			config = function() require'my-nvimtree' end
		}

		-- AutoComplete and Linting Plugins
		use {
			"neoclide/coc.nvim",
			branch = 'release',
			config = function() require'my-coc' end
		}

		-- use {
		-- 	"dense-analysis/ale",
		-- }

		-- Markdown Previewer
		use {
			'iamcco/markdown-preview.nvim',
			run = [[sh -c 'cd app && yarn install']]
		}

		-- Comment plugin
		use {
			"terrortylor/nvim-comment",
			config = function() require'my-comment' end
		}

		-- Rust plugin
		use 'rust-lang/rust.vim'
	end
)
