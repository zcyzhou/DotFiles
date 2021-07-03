-- Neovim config file created by Chuyang Zhou
--

vim.g.mapleader = ' '
vim.g.colors_name = 'onedark'


-- Load normal settings and key mappings
require('mappings')
require('settings')

-- Load config for plugins
require('plugins')
require('my-treesitter')

