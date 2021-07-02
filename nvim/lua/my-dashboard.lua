-- Dashboard plugin config
--
-- 			by Chuyang Zhou

local g = vim.g

g.dashboard_default_executive = 'telescope'

g.dashboard_custom_header = {
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣤⣤⣴⣶⣶⣾⣤⣤⣀⡀",
" ⠀⠀⠀⠀⠀⠀⠀⠀⢀⠄⠚⠛⠛⠛⠻⠿⠿⠿⣿⣿⣿⣿⣿⣷⣤⡀",
"⠀⠀⠀⠀⠀⠀⠀⠀⡐⣵⡾⠿⠿⣶⡄⠀⠀⠀⠀⠀⠀⠈⠉⠉⠙⠛⢿⣆",
"⠀⠀⠀⠀⠀⠀⠀⠌⠈⠉⠀⠀⠀⠈⣿⠀⠀⠀⢀⣴⠾⠿⠿⢷⣤⠀⠸⣿⣧",
"⠀⠀⠀⠀⠀⢀⠌⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠁⠀⠀⠀⠀⢻⡇⠀⣿⣿⣇",
"⠀⠀⠀⡀⠔⠁⢀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿",
"⠀⢀⠊⠀⠀⠀⠀⠀⠀⠉⣶⡂⣄⠀⠀⠀⠀⢀⣀⣀⣀⠀⠀⠀⠀⠀⢸⡿⠛⠛⢄",
"⠀⠂⠀⠀⠀⠀⠀⠀⠀⠀⠙⠛⠋⠀⠀⠀⠐⣿⣼⡿⠀⠀⠈⠁⠂⠀⠘⠀⠀⠀⠀⢁",
"⠰⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸",
"⣀⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣈",
"⠀⠈⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⡠⠊",
"⠀⠀⠀⠑⢄⠀⠀⠀⠀⠀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠜",
"⠀⠀⠀⠀⠀⠈⠐⠤⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠤⠐⡁",
"⠀⠀⠀⠀⢀⠄⠀⠀⠀⠀⠀⠀⠐⡉⡩⠄⠀⠢⡈⠉⠁⠀⠀⠀⠀⠀⠂",
"⠀⠀⠀⠀⠃⠀⠀⠀⠀⠀⠀⠀⠁⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⡄",
"⠀⠀⠀⡈⠀⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⠒⠒⠒⠒",
}

g.dashboard_custom_section = {
	a = {description = {"洛 New File                  "}, command = "DashboardNewFile"},
	b = {description = {"  Find File                 "}, command = "Telescope find_files"},
	c = {description = {"  Recents                   "}, command = "Telescope oldfiles"},
	d = {description = {"  Find Word                 "}, command = "Telescope live_grep"},
	e = {description = {"  Bookmarks                 "}, command = "Telescope marks"},
	f = {description = {"  Load Last Session         "}, command = "SessionLoad"}
}

g.dashboard_custom_footer = {
        "Enjoy your time"
}
