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
key_mapper('v', 'H', '^')
key_mapper('n', 'L', '$')
key_mapper('v', 'L', '$')
key_mapper('n', 'J', '10j')
key_mapper('n', 'K', '10k')
key_mapper('n', '<leader>wj', '<C-w>j')
key_mapper('n', '<leader>wk', '<C-w>k')
key_mapper('n', '<leader>wh', '<C-w>h')
key_mapper('n', '<leader>wl', '<C-w>l')
key_mapper('n', 'j', 'gjzz')
key_mapper('n', 'k', 'gkzz')

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

key_mapper('n', '<leader>ss', ":SessionSave<cr>")
key_mapper('n', '<leader>sl', ":SessionLoad<cr>")

-- GitSigns key mappings
key_mapper('n', '<leader>hs', ":lua require'gitsigns'.stage_hunk()<CR>")
key_mapper('v', '<leader>hs', ":lua require'gitsigns'.stage_hunk({vim.fn.line('.'), vim.fn.line('v')})<CR>")
key_mapper('n', '<leader>hu', ":lua require'gitsigns'.undo_stage_hunk()<CR>")
key_mapper('n', '<leader>hr', ":lua require'gitsigns'.reset_hunk()<CR>")
key_mapper('v', '<leader>hr', ":lua require'gitsigns'.reset_hunk({vim.fn.line('.'), vim.fn.line('v')})<CR>")
key_mapper('n', '<leader>hR', ":lua require'gitsigns'.reset_buffer()<CR>")
key_mapper('n', '<leader>hp', ":lua require'gitsigns'.preview_hunk()<CR>")

-- File Explorer nvim-tree
key_mapper('n', '<leader>ft', ":NvimTreeToggle<cr>")

-- Comment plugin
key_mapper('n', '<leader>cc', ":CommentToggle<cr>")
key_mapper('v', '<leader>cc', ":CommentToggle<cr>")
