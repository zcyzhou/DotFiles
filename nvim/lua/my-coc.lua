vim.cmd("source $HOME/.config/nvim/lsp.vim")


vim.cmd([[
if exists('*complete_info')
	inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
	imap <expr> <cr> pumvisible() "\<C-y>" : "\<C-g>u\<CR>"
endif
]])
