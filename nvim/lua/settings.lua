-- Settings config for Neovim
--
-- 			by Chuyang Zhou

local o = vim.o
local wo = vim.wo
local bo = vim.bo

-- Global settings
o.termguicolors = true		-- Correct colors		
o.mouse = 'a'
o.clipboard = 'unnamedplus'	-- enable global clipboard
o.splitright = true
o.splitbelow = true
o.startofline = true
-- o.wrap = false

-- Buffer local options
bo.syntax = 'ON'
bo.textwidth = 100

-- Window local options
wo.nu = true
wo.rnu = true
