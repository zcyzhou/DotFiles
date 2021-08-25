-- TODO:
-- 	1. Hunk functions

require('gitsigns').setup {
	current_line_blame = true,
	current_line_blame_opts = {
		delay = 0,
		virt_text_pos = 'eol',
	},
}
