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
		use {'dracula/vim', as = 'dracula'}
		use {
			'olimorris/onedarkpro.nvim',
			config = function() require'my-onedark' end
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
		-- use {
		-- 	'glepnir/galaxyline.nvim',
		-- 	branch = 'main',
		-- 	-- your statusline
		-- 	config = function() require'my-statusline' end,
		-- 	-- some optional icons
		-- 	requires = {'kyazdani42/nvim-web-devicons', opt = true}
		-- }

		use {
			'nvim-lualine/lualine.nvim',
			requires = { 'kyazdani42/nvim-web-devicons', opt = true },
			config = function() require'my-lualine' end
		}

		-- Git Plugins
		use {
			'lewis6991/gitsigns.nvim',
			config = function() require'my-gitsigns' end
		}

		-- Auto Pairs
		use {
			"windwp/nvim-autopairs",
			config = function() require'my-autopairs' end
		}
		
		-- File explorer
		use {
			"kyazdani42/nvim-tree.lua",
			-- cmd = "NvimTreeToggle",
			config = function() require'my-nvimtree' end
		}

		-- Comment plugin
		use {
			"terrortylor/nvim-comment",
			config = function() require'my-comment' end
		}

		-- LSP config
		use {
			"neovim/nvim-lspconfig",
			config = function() require'my-lsp' end
		}


		use {
			"hrsh7th/nvim-cmp",
			config = function() require'my-nvim-cmp' end
		}

		use 'onsails/lspkind-nvim'
		use 'hrsh7th/cmp-nvim-lsp'
		use 'hrsh7th/cmp-buffer'
		use 'hrsh7th/cmp-path'
		use 'hrsh7th/cmp-cmdline'
		-- For luasnip users.
		use {
			'L3MON4D3/LuaSnip',
			config = function() require'my-snippets' end
		}
		use 'saadparwaiz1/cmp_luasnip'

		-- For ultisnips users.
		use 'SirVer/ultisnips'
		use 'quangnguyen30192/cmp-nvim-ultisnips'
		-- Rust plugin
		use 'rust-lang/rust.vim'

		use {
			"ray-x/lsp_signature.nvim",
			config = function() require'my-lsp-signature' end
		}
	end
)

