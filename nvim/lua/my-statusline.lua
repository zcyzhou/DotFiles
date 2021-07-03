-- Galaxyline plugin config for Neovim
--
-- 			by Chuyang Zhou

local gl = require("galaxyline")
local colors = require('galaxyline.theme').default
local condition = require('galaxyline.condition')
local gls = gl.section


gl.short_line_list = {'NvimTree','vista','dbui','packer'}


-- Left Side
gls.left[1] = {
	RainbowRed = {
		provider = function() return '▊ ' end,
		highlight = {colors.blue,colors.bg}
	},
}

gls.left[2] = {
	ViMode = {
		provider = function()
			-- auto change color according the vim mode
			local mode_color = {
				n = colors.red,
				i = colors.green,
				v=colors.blue,
				[''] = colors.blue,
				V=colors.blue,
				[''] = colors.blue,
				vb = colors.blue,
				c = colors.magenta,
				no = colors.red,
				s = colors.orange,
				S=colors.orange,
				[''] = colors.orange,
				ic = colors.yellow,
				R = colors.violet,
				Rv = colors.violet,
				cv = colors.red,
				ce=colors.red,
				r = colors.cyan,
				rm = colors.cyan,
				['r?'] = colors.cyan,
				['!']  = colors.red,
				t = colors.red
			}
			vim.api.nvim_command('hi GalaxyViMode guifg='..mode_color[vim.fn.mode()])
			return '  '
		end,
		highlight = {colors.red,colors.bg,'bold'},
	},
}

gls.left[3] ={
	FileIcon = {
		provider = 'FileIcon',
		condition = condition.buffer_not_empty,
		highlight = {require('galaxyline.provider_fileinfo').get_file_icon_color,colors.bg},
	},
}

gls.left[4] = {
	FileName = {
		provider = {'FileName','FileSize'},
		condition = condition.buffer_not_empty,
		highlight = {colors.fg,colors.bg,'bold'}
	}
}

gls.left[5] = {
	DiagnosticError = {
		provider = 'DiagnosticError',
		icon = '   ',
		highlight = {colors.red,colors.bg}
	}
}

gls.left[6] = {
	DiagnosticWarn = {
		provider = 'DiagnosticWarn',
		icon = '   ',
		highlight = {colors.yellow,colors.bg},
	}
}

gls.left[7] = {
	DiagnosticHint = {
		provider = 'DiagnosticHint',
		icon = '   ',
		highlight = {colors.cyan,colors.bg},
	}
}

gls.left[8] = {
	DiagnosticInfo = {
		provider = 'DiagnosticInfo',
		icon = '   ',
		highlight = {colors.blue,colors.bg},
	}
}

-- Right Side
gls.right[6] = {
	FileEncode = {
		provider = 'FileEncode',
		condition = condition.hide_in_width,
		separator = ' ',
		separator_highlight = {'NONE',colors.bg},
		highlight = {colors.blue,colors.bg,'bold'}
	}
}

gls.right[1] = {
	DiffAdd = {
		provider = 'DiffAdd',
		condition = condition.hide_in_width,
		icon = '   ',
		highlight = {colors.green,colors.bg},
	}
}

gls.right[2] = {
	DiffModified = {
		provider = 'DiffModified',
		condition = condition.hide_in_width,
		icon = ' 柳',
		highlight = {colors.orange,colors.bg},
	}
}

gls.right[3] = {
	DiffRemove = {
		provider = 'DiffRemove',
		condition = condition.hide_in_width,
		icon = '  ',
		highlight = {colors.red,colors.bg},
	}
}


gls.right[7] = {
	RainbowBlue = {
		provider = function() return '  ▊' end,
		highlight = {colors.blue,colors.bg}
	}
}

gls.right[4] = {
	LineInfo = {
		provider = 'LineColumn',
		separator = ' ',
		separator_highlight = {'NONE',colors.bg},
		highlight = {colors.green,colors.bg,'bold'},
	}
}

gls.right[5] = {
	PerCent = {
		provider = 'LinePercent',
		separator_highlight = {'NONE',colors.bg},
		highlight = {colors.green,colors.bg,'bold'},
	}
}
