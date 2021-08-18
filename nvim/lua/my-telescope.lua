
-- TODO:
-- 	1. GitHub plugin
-- 	2. Extra plugins

local actions = require('telescope.actions')

require('telescope').setup{
	defaults = {
		mappings = {
			i = {["jq"] = actions.close},
			n = {["q"] = actions.close}
		},
		vimgrep_arguments = {
			'rg',
			'--color=never',
			'--no-heading',
			'--with-filename',
			'--line-number',
			'--column',
			'--smart-case'
		},
		prompt_prefix = "❯ ",
		selection_caret = "> ",
		entry_prefix = "  ",
		initial_mode = "insert",
		selection_strategy = "reset",
		sorting_strategy = "ascending",
		layout_strategy = "horizontal",
		layout_config = {
			width = 120,		-- width of whole pane
			prompt_position = "top",
			horizontal = {
				width_padding = 0.05,
                		height_padding = 0.1,
                		preview_width = 80,
				mirror = false,
			},
			vertical = {
				width_padding = 0.05,
                		height_padding = 1,
                		preview_height = 0.5,
				mirror = false,
			},
		},
		file_sorter =  require'telescope.sorters'.get_fuzzy_file,
		file_ignore_patterns = {},
		generic_sorter =  require'telescope.sorters'.get_generic_fuzzy_sorter,
		winblend = 0,
		border = {},
		borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
		color_devicons = true,
		use_less = true,
		set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil,
		file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
		grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
		qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,

		-- Developer configurations: Not meant for general override
		buffer_previewer_maker = require'telescope.previewers'.buffer_previewer_maker
	}
}

-- Some useful extra functions
local M = {}

function M.grep_notes()
	local opts = {}
	opts.hidden = true
	opts.search_dirs = {'~/Notes/'}
	opts.prompt_prefix = '   ' 
	opts.prompt_title = ' Grep Notes'
	opts.shorten_path = true
	require'telescope.builtin'.live_grep(opts)
end

function M.find_notes()
	require('telescope.builtin').find_files {
		prompt_title = ' Find Notes',
		shorten_path = false,
		cwd = '~/Notes/',
		layout_strategy = 'horizontal',
		layout_config = {preview_width = 0.65}
	}
end

function M.browse_notes()
	require('telescope.builtin').file_browser {
		prompt_title = ' Browse Notes',
		prompt_prefix = ' ﮷  ',
		shorten_path = false,
		cwd = '~/Notes/',
		layout_strategy = 'horizontal',
		layout_config = {preview_width = 0.65}
	}
end

return M
