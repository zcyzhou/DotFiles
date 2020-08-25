set nocompatible
filetype off
set backspace=indent,eol,start

syntax enable
syntax on

set number
set rnu!

set updatetime=100

set encoding=utf-8

set fileformat=unix

set cindent
set tabstop=4
set shiftwidth=4
set smartindent

set showmatch
set matchtime=2

set nowrap

set laststatus=2

set mouse=a

set incsearch
set ignorecase
set smartcase

set wrap linebreak nolist

autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

"Plugins
" set rtp+=~/.vim/bundle/Vundle.vim

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'

Plug 'scrooloose/nerdtree'

Plug 'airblade/vim-gitgutter'

Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'tpope/vim-markdown'

Plug 'jiangmiao/auto-pairs'

Plug 'majutsushi/tagbar'
 

call plug#end()

filetype plugin indent on

"配置nerdtree
"F2快捷键调出和隐藏
map <F2> :NERDTreeToggle<CR>
let NERDTreeChDirMode=1
let NERDTreeIgnore=['\~$','\.pyc$','\.swp$']
let NERDTreeWinSize=20
"vim没有文件打开时自动打开nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"vim打开文件夹时自动打开nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
"关闭vim时如果除了nerdtree没有别的文件那么自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"NERDTree显示git的信息
let g:NERDTreeShowGitStatus = 1
let g:NERDTreeUpdateOnWrite = 1
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

"调出Tagbar
map <F3> :TagbarToggle<CR>
"tagbar尺寸
let g:tagbar_width=30


" Config for cocnvim
"
" Use tab for navigating completion
inoremap <silent><expr> <TAB>
	\ pumvisible() ? "\<C-n>":
	\ <SID>check_back_space() ? "\<TAB>":
	\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>":"\<C-h>"

function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1] =~# '\s'
endfunction

if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif
