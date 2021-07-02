-- Mapping config file for Neovim
--
-- 			by Chuyang Zhou

-- TODO:
-- 	1. gitsigns key mapping
-- 	2. Telescope ke mappings

local function key_mapper(mode, key, map_to)
    local options = {noremap = true, silent = true}
    vim.api.nvim_set_keymap(mode, key, map_to, options)
end

-- Key mappings
key_mapper('i', 'jj', '<esc>')
key_mapper('n', 'H', '^')
key_mapper('n', 'L', '$')
key_mapper('n', 'J', '10j')
key_mapper('n', 'K', '10k')
key_mapper('n', '<leader>wj', '<C-w>j')
key_mapper('n', '<leader>wk', '<C-w>k')
key_mapper('n', '<leader>wh', '<C-w>h')
key_mapper('n', '<leader>wl', '<C-w>l')

-- Telescope Key mappings
key_mapper('n', '<leader>ff', ':Telescope find_files<cr>')
key_mapper('n', '<leader>fb', ':Telescope file_browser<cr>')
key_mapper('n', '<leader>gn', ":lua require'my-telescope'.grep_notes()<cr>")
key_mapper('n', '<leader>fn', ":lua require'my-telescope'.find_notes()<cr>")
key_mapper('n', '<leader>bn', ":lua require'my-telescope'.browse_notes()<cr>")
key_mapper('n', ',g', ":Telescope live_grep<cr>")
key_mapper('n', ',h', ":Telescope help_tags<cr>")
key_mapper('n', '<leader>key', ":Telescope keymaps<cr>")
key_mapper('n', ',b', ":Telescope buffers<cr>")
key_mapper('n', ',m', ":Telescope man_pages<cr>")

