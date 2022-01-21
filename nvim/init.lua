-- Neovim config file created by Chuyang Zhou
--

vim.g.mapleader = ' '
vim.cmd('colo onedark')


-- Load normal settings and key mappings
require('mappings')
require('settings')

-- Load config for plugins
require('plugins')
require('my-treesitter')

