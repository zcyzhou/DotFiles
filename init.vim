if empty(glob('$HOME/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo $HOME/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

let g:polyglot_disabled = ['sensible']

call plug#begin('~/.nvim/plugged')

" ----------------------------------------------------------------------------
" Text edit plugins
" ----------------------------------------------------------------------------

  Plug 'AndrewRadev/splitjoin.vim'
  Plug 'tpope/vim-surround'
  Plug 'bkad/CamelCaseMotion'
  Plug 'jeffkreeftmeijer/vim-numbertoggle'
  Plug 'terryma/vim-expand-region'
  " multiple-cursors is deprecated now, use vim-visual-multi instead
  " Plug 'terryma/vim-multiple-cursors'
  Plug 'mg979/vim-visual-multi', {'branch': 'master'}
  Plug 'tommcdo/vim-exchange'
  Plug 'matze/vim-move'
  Plug 'tpope/vim-speeddating'
  Plug 'godlygeek/tabular'
  Plug 'svermeulen/vim-cutlass'
  Plug 'vim-scripts/ingo-library' | Plug 'vim-scripts/EnhancedJumps'
  Plug 'rhysd/clever-f.vim'
  Plug 'editorconfig/editorconfig-vim'

" ----------------------------------------------------------------------------
" Marks plugins
" ----------------------------------------------------------------------------

  Plug 'MattesGroeger/vim-bookmarks'
  Plug 'kshenoy/vim-signature'

" ----------------------------------------------------------------------------
" Autocomplete plugins
" ----------------------------------------------------------------------------

  Plug 'jiangmiao/auto-pairs'

" ----------------------------------------------------------------------------
" Languse server protocol plugins
" ----------------------------------------------------------------------------

  Plug 'neoclide/coc.nvim', {'branch': 'release'}

" ----------------------------------------------------------------------------
" Debugging
" ----------------------------------------------------------------------------

  Plug 'puremourning/vimspector'

" ----------------------------------------------------------------------------
" Snippets plugins
" ----------------------------------------------------------------------------

  Plug 'honza/vim-snippets'

" ----------------------------------------------------------------------------
" Version plugins
" ----------------------------------------------------------------------------

  Plug 'scrooloose/nerdtree' |
  Plug 'scrooloose/nerdcommenter' |
  Plug 'Xuyuanp/nerdtree-git-plugin'

  Plug 'airblade/vim-gitgutter' |
  Plug 'tpope/vim-fugitive' |
  Plug 'gregsexton/gitv' |
  Plug 'lambdalisue/vim-unified-diff' |
  Plug 'christoomey/vim-conflicted'

  Plug 'rhysd/git-messenger.vim'

  Plug 'will133/vim-dirdiff'
  Plug 'rhysd/committia.vim'

  Plug 'simnalamburt/vim-mundo'

" ----------------------------------------------------------------------------
" Tmux plugins
" ----------------------------------------------------------------------------

  " Plug 'christoomey/vim-tmux-navigator'
  " Plug 'edkolev/tmuxline.vim'
  " Plug 'tmux-plugins/vim-tmux' | Plug 'tmux-plugins/vim-tmux-focus-events'
  " Plug 'wellle/tmux-complete.vim'
  " Plug 'benmills/vimux'

" ----------------------------------------------------------------------------
" Search plugins
" ----------------------------------------------------------------------------

  Plug 'easymotion/vim-easymotion'
  Plug 'mileszs/ack.vim'

  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } |
  Plug 'junegunn/fzf.vim'

  Plug 'haya14busa/incsearch.vim'

" ----------------------------------------------------------------------------
" Floaterm plugin
" ----------------------------------------------------------------------------

  Plug 'voldikss/vim-floaterm'

" ----------------------------------------------------------------------------
" Autostart plugins
" ----------------------------------------------------------------------------

  Plug 'airblade/vim-rooter'
  Plug 'mhinz/vim-startify'
  Plug 'farmergreg/vim-lastplace'

" ----------------------------------------------------------------------------
" Highlight plugins
" ----------------------------------------------------------------------------

  Plug 'itchyny/vim-cursorword'
  Plug 'machakann/vim-highlightedyank'
  Plug 't9md/vim-quickhl'
  Plug 'inside/vim-search-pulse'

" ----------------------------------------------------------------------------
" Terminal plugins
" ----------------------------------------------------------------------------

  Plug 'skywind3000/asyncrun.vim'
  Plug 'tpope/vim-dispatch' | Plug 'radenling/vim-dispatch-neovim'
  Plug 'lambdalisue/suda.vim'
  Plug 'tpope/vim-eunuch'

" ----------------------------------------------------------------------------
" Workspace plugins
" ----------------------------------------------------------------------------

  Plug 'dhruvasagar/vim-zoom'
  Plug 'wesQ3/vim-windowswap'
  Plug 'roman/golden-ratio'
  Plug 'chrisbra/NrrwRgn'

" ----------------------------------------------------------------------------
" View plugins
" ----------------------------------------------------------------------------

  Plug 'fidian/hexmode'
  " Plug 'hecal3/vim-leader-guide'
  Plug 'junegunn/goyo.vim' | Plug 'amix/vim-zenroom2'
  Plug 'junegunn/limelight.vim'
  Plug 'nathanaelkane/vim-indent-guides'

" ----------------------------------------------------------------------------
" Tags plugins
" ----------------------------------------------------------------------------

  Plug 'preservim/tagbar'
  Plug 'skywind3000/vim-preview'

" ----------------------------------------------------------------------------
" External tools plugins
" ----------------------------------------------------------------------------

  Plug 'lambdalisue/vim-gista'
  Plug 'tpope/vim-dadbod'

" ----------------------------------------------------------------------------
" Theme plugins
" ----------------------------------------------------------------------------

  Plug 'joshdick/onedark.vim'
  Plug 'arcticicestudio/nord-vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'ryanoasis/vim-devicons'

" ----------------------------------------------------------------------------
" Syntax plugins
" ----------------------------------------------------------------------------

  Plug 'Chiel92/vim-autoformat'
  Plug 'w0rp/ale'
  Plug 'plasticboy/vim-markdown'
  Plug 'ntpeters/vim-better-whitespace'
  " Following to plugins are for enhanced syntax highlighting
  " Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
  Plug 'sheerun/vim-polyglot'

" LaTex Plugins
  Plug 'lervag/vimtex'

call plug#end()

filetype plugin on

set noswapfile
set nobackup
set nowritebackup

set cindent
set cmdheight=1
set conceallevel=2
set cursorline
set encoding=utf-8
" set expandtab
set foldmethod=indent
set formatoptions-=t
set gdefault
set hidden
set ignorecase
set iskeyword=@,48-57,_,192-255
set lazyredraw
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
set nocompatible
set noendofline
set noerrorbells
set nofixendofline
set nofoldenable
set novisualbell
" set nowrap
set number
set sel=old
set shortmess+=c
set signcolumn=yes
set splitbelow
set splitright
" set sw=2
" set t_vb=
" set ts=2
set undofile
set updatetime=300
set viewoptions=folds
set wildmode=longest:full,full

let mapleader = "\<Space>"


cnoremap <C-A> <Home>
cnoremap <C-E> <End>
cnoremap <C-K> <C-U>

inoremap <C-a> <C-o>^
inoremap <C-e> <C-o>$

nnoremap <C-U> 11kzz
nnoremap <C-D> 11jzz
nnoremap j gjzz
nnoremap k gkzz

nmap Z :qall!<CR>

nnoremap vv V
nnoremap V v$

inoremap jj <esc>

nnoremap Q @q
nnoremap Y y$

noremap H ^
noremap L $

noremap q/ :History/<CR>
noremap q: :History:<CR>

nnoremap <expr> gb '`[' . strpart(getregtype(), 0, 1) . '`]'

nnoremap / /\v
vnoremap / /\v

xnoremap <  <gv
xnoremap >  >gv

nnoremap M D
nnoremap m d
nnoremap mm dd
xnoremap m d

nnoremap , m
nnoremap ; `

vnoremap . :normal .<CR>

map <silent> <M-Up> <C-W>+
map <silent> <M-Down> <C-W>-
map <silent> <M-Right> <C-w>>
map <silent> <M-Left> <C-w><

noremap <Tab> :bn<CR>
noremap <S-Tab> :bp<CR>

vnoremap <Leader>y "+y
nnoremap <Leader>Y "+yg_
nnoremap <Leader>y "+y
nnoremap <Leader>yy "+yy

nnoremap <Leader>yf :let @+ = expand("%:p")<CR>
nnoremap <Leader>yl :let @+ = join([expand('%'),  line(".")], ':')<CR>
nnoremap <Leader>yr :let @+ = expand("%")<CR>

nnoremap <Leader>p "+p
nnoremap <Leader>P "+P
vnoremap <Leader>p "+p
vnoremap <Leader>P "+P
nnoremap <Leader>pp :setlocal paste!<cr>

nnoremap <Leader>wH <C-W>H
nnoremap <Leader>wJ <C-W>J
nnoremap <Leader>wK <C-W>K
nnoremap <Leader>wL <C-W>L
nnoremap <Leader>wd <C-W>q
nnoremap <Leader>wh <C-W><C-H>
nnoremap <Leader>wj <C-W><C-J>
nnoremap <Leader>wk <C-W><C-K>
nnoremap <Leader>wl <C-W><C-L>
nnoremap <Leader>wo :only<cr>
nnoremap <Leader>wr <C-W>R
nnoremap <Leader>ws :sp %<cr>
nnoremap <Leader>wt <C-W>T
nnoremap <Leader>wv :vsp %<cr>
nnoremap <leader>we :vert new <c-r>=expand("%:p:h")<cr>/

noremap <Leader>ld :lclose<CR>
noremap <Leader>ln :lnext<CR>
noremap <Leader>lo :lopen<CR>
noremap <Leader>lp :lprev<CR>

noremap <Leader>qd :cclose<CR>
noremap <Leader>qf :cfirst<CR>
noremap <Leader>ql :clast<CR>
noremap <Leader>qn :cnext<CR>
noremap <Leader>qo :copen<CR>
noremap <Leader>qp :cprev<CR>

nnoremap <leader>ee :edit <c-r>=expand("%:p:h")<CR>/
nnoremap <Leader>ev :edit $MYVIMRC<CR>
nnoremap <leader>ez :edit $HOME/.zshrc<CR>
nnoremap <leader>et :edit $HOME/.tmux.conf<CR>

map <Leader>tc :tabnew<cr>
map <Leader>td :tabclose<cr>
map <Leader>te :tabedit <c-r>=expand("%:p:h")<cr>/
map <Leader>tm :tabmove<space>
map <Leader>tn gt
map <Leader>to :tabonly<cr>
map <Leader>tp gT
map <Leader>ts :tab split<cr>

nnoremap <Leader>rr :vsplit term://zsh<CR>A
nnoremap <Leader>rs :split term://zsh<CR>
nnoremap <Leader>re :vsplit term://

" ----------------------------------------------------------------------------
" Plug 'mileszs/ack.vim'
" ----------------------------------------------------------------------------

let g:qf_mapping_ack_style = 1
let g:qf_nowrap = 1

if executable('ag')
    let g:ackprg = "ag --vimgrep -s --hidden --ignore .git
            \ --nocolor --nogroup --column --smart-case --follow
            \ -p $HOME/.ackignore"
endif

nnoremap <Leader>a :Ag <C-R><C-W><CR>
nnoremap <Leader>aa :Ack<Space>
nnoremap \ /<C-R>+

" ----------------------------------------------------------------------------
" Plug 'junegunn/fzf.vim'
" ----------------------------------------------------------------------------

command! -bang -nargs=? -complete=dir HFiles
  \ call fzf#vim#files(<q-args>, {'source': 'ag --hidden --ignore .git -g ""'}, <bang>0)
noremap <Leader>fb :Buffers<CR>
noremap <Leader>fc :Commits<CR>
noremap <Leader>ff :Files<CR>
noremap <Leader>fi :HFiles<CR>
noremap <Leader>fg :GFiles<CR>
noremap <Leader>fh :History<CR>
noremap <Leader>fl :Lines<CR>
noremap <Leader>ft :Tags<CR>

noremap <Leader>ss :Filetypes<CR>
noremap <Leader>sc :BCommits<CR>
noremap <Leader>sl :BLines<CR>
noremap <Leader>st :BTags<CR>

noremap ,, :Marks<CR>

" ----------------------------------------------------------------------------
" Plug 'inside/vim-search-pulse'
" ----------------------------------------------------------------------------

let g:vim_search_pulse_mode = 'cursor_line'
let g:vim_search_pulse_disable_auto_mappings = 1

nmap n nzz<Plug>Pulse
nmap N Nzz<Plug>Pulse
nmap * *zz<Plug>Pulse
nmap # #zz<Plug>Pulse
cmap <silent> <expr> <enter> search_pulse#PulseFirst()

" ----------------------------------------------------------------------------
" Plug 'haya14busa/incsearch.vim'
" ----------------------------------------------------------------------------

inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"
map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" ----------------------------------------------------------------------------
" Plug 'lyuts/vim-rtags'
" ----------------------------------------------------------------------------

" let g:rtagsUseLocationList = 0

" ----------------------------------------------------------------------------
" Plug 'scrooloose/nerdtree'
" ----------------------------------------------------------------------------

let g:NERDTreeWinPos = "left"
let g:NERDSpaceDelims = 1

noremap <silent> <Leader>nn :NERDTreeToggle<CR>

" ----------------------------------------------------------------------------
" Plug 'majutsushi/tagbar'
" ----------------------------------------------------------------------------

noremap <silent> <Leader>tt :TagbarToggle<CR>

" ----------------------------------------------------------------------------
" Plug 't9md/vim-quickhl'
" ----------------------------------------------------------------------------

nmap <Leader>hd <Plug>(quickhl-manual-reset)
nmap <Leader>hh <Plug>(quickhl-manual-this-whole-word)
xmap <Leader>hh <Plug>(quickhl-manual-this-whole-word)

let g:quickhl_manual_colors = [
    \ "ctermfg=16  ctermbg=153 guifg=#ffffff guibg=#0a7383",
    \ "ctermfg=16  ctermbg=1   guibg=#a07040 guifg=#ffffff",
    \ "ctermfg=16  ctermbg=2   guibg=#4070a0 guifg=#ffffff",
    \ "ctermfg=16  ctermbg=4   guibg=#40a070 guifg=#ffffff",
    \ "ctermfg=16  ctermbg=5   guibg=#0070e0 guifg=#ffffff",
    \ "ctermfg=16  ctermbg=6   guibg=#007020 guifg=#ffffff",
    \ "ctermfg=16  ctermbg=7   guibg=#d4a00d guifg=#ffffff",
    \ "ctermfg=16  ctermbg=215 guibg=#06287e guifg=#ffffff",
    \ ]

" ----------------------------------------------------------------------------
" Plug 'easymotion/vim-easymotion'
" ----------------------------------------------------------------------------

nmap s <Plug>(easymotion-overwin-f2)
nmap S <Plug>(easymotion-overwin-w)
map <Leader>J <Plug>(easymotion-j)
map <Leader>K <Plug>(easymotion-k)

let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1
let g:EasyMotion_use_smartsign_us = 1

" ----------------------------------------------------------------------------
" Plug 'AndrewRadev/splitjoin.vim'
" ----------------------------------------------------------------------------

nmap gJ gJ
nmap gS gS

" ----------------------------------------------------------------------------
" Plug 'jiangmiao/auto-pairs'
" ----------------------------------------------------------------------------

let g:AutoPairsFlyMode = 0
let g:AutoPairsMultilineClose = 0

" ----------------------------------------------------------------------------
" Plug 'tpope/vim-surround'
" ----------------------------------------------------------------------------

let b:surround_{char2nr('b')} = "**\r**"
let b:surround_{char2nr('i')} = "`\r`"
let b:surround_{char2nr('l')} = "[](\r)"
let b:surround_{char2nr('c')} = "```\n\r\n```"

nmap <Leader>mb ysiwb
nmap <Leader>mi ysiwi
nmap <Leader>ml yssl
nmap <Leader>mc yssc

nmap <Leader>us <Plug>Dsurround

" ----------------------------------------------------------------------------
" Plug 'bkad/CamelCaseMotion'
" ----------------------------------------------------------------------------

map <silent>b <Plug>CamelCaseMotion_b
map <silent>e <Plug>CamelCaseMotion_e
map <silent>ge <Plug>CamelCaseMotion_ge
map <silent>w <Plug>CamelCaseMotion_w

sunmap b
sunmap e
sunmap ge
sunmap w

" ----------------------------------------------------------------------------
" ftplugin/man.vim
" ----------------------------------------------------------------------------

runtime! ftplugin/man.vim

nnoremap <silent> <Leader>kk :Man<CR>
nnoremap <silent> <Leader>kv :vertical Man<CR>
vnoremap <silent> <Leader>kk y:Man <C-r>"<CR>
vnoremap <silent> <Leader>kv y:vertical Man <C-r>"<CR>

" ----------------------------------------------------------------------------
" Plug 'arakashic/chromatica.nvim'
" ----------------------------------------------------------------------------

let g:chromatica#highlight_feature_level=0

" ----------------------------------------------------------------------------
" Plug 'junegunn/limelight.vim'
" ----------------------------------------------------------------------------

let g:limelight_conceal_ctermfg = 'gray'

" ----------------------------------------------------------------------------
" Plug 'roman/golden-ratio'
" ----------------------------------------------------------------------------

let g:golden_ratio_exclude_nonmodifiable = 1
let g:golden_ratio_autocommand = 0
let g:golden_ratio_filetypes_blacklist = ["nerdtree", "unite"]

" ----------------------------------------------------------------------------
" Plug 'skywind3000/vim-preview'
" ----------------------------------------------------------------------------

nnoremap <silent> \| :PreviewTag<CR>

nnoremap <silent> <Leader>pd :PreviewClose<CR>
nnoremap <silent> <Leader>pt :PreviewGoto tabe<CR>
nnoremap <silent> <Leader>ps :PreviewGoto split<CR>
nnoremap <silent> <Leader>pv :PreviewGoto vsplit<CR>

noremap <silent> <m-u> :PreviewScroll -1<cr>
noremap <silent> <m-d> :PreviewScroll +1<cr>

autocmd FileType qf nnoremap <silent><buffer> p :PreviewQuickfix<cr>
autocmd FileType qf nnoremap <silent><buffer> P :PreviewClose<cr>

" ----------------------------------------------------------------------------
" Plug 'christoomey/vim-tmux-navigator'
" ----------------------------------------------------------------------------

let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <C-h> :TmuxNavigateLeft<CR>
nnoremap <silent> <C-j> :TmuxNavigateDown<CR>
nnoremap <silent> <C-k> :TmuxNavigateUp<CR>
nnoremap <silent> <C-l> :TmuxNavigateRight<CR>
nnoremap <silent> <C-/> :TmuxNavigatePrevious<CR>

" ----------------------------------------------------------------------------
" Plug 'edkolev/tmuxline.vim'
" ----------------------------------------------------------------------------

let g:tmuxline_powerline_separators = 0
let g:tmuxline_separators = {
    \ 'left' : '',
    \ 'left_alt': '>',
    \ 'right' : '',
    \ 'right_alt' : '<',
    \ 'space' : ' '}

let g:tmuxline_preset = {
    \'a'    : '#S',
    \'b'    : '#W',
    \'c'    : '#H',
    \'win'  : '#I #W',
    \'cwin' : '#I #W',
    \'x'    : '%a',
    \'y'    : '#W %R',
    \'z'    : '#H'}

" ----------------------------------------------------------------------------
" Plug 'wellle/tmux-complete.vim'
" ----------------------------------------------------------------------------

let g:tmuxcomplete#trigger = 'omnifunc'

" ----------------------------------------------------------------------------
" Plug 'skywind3000/asyncrun.vim'
" ----------------------------------------------------------------------------

let g:asyncrun_status = ''

augroup QuickfixStatus
  au! BufWinEnter quickfix setlocal
    \ statusline=%t\ [%{g:asyncrun_status}]\ %{exists('w:quickfix_title')?\
    \ '\ '.w:quickfix_title\ :\ ''}\ %=%-15(%l,%c%V%)\ %P
augroup END

" ----------------------------------------------------------------------------
" Plug 'vim-airline/vim-airline'
" ----------------------------------------------------------------------------

let g:airline_theme='onedark'
" let g:airline_theme='nord'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
" let g:airline_statusline_ontop=1

silent! let g:airline_section_warning = airline#section#create_right(['%{g:asyncrun_status}'])

function! AirlineInit()
  let g:airline_section_z = airline#section#create(['%p%%', 'linenr', ':%v ', '%#PmenuSel# %{tabpagenr()}/%{tabpagenr(''$'')}'])
endfunction
autocmd User AirlineAfterInit call AirlineInit()

" ----------------------------------------------------------------------------
" Plug 'tommcdo/vim-exchange'
" ----------------------------------------------------------------------------

let g:exchange_no_mappings=1

nmap cx <Plug>(Exchange)
nmap cxc <Plug>(ExchangeClear)
nmap cxx <Plug>(ExchangeLine)
vmap X <Plug>(Exchange)

" ----------------------------------------------------------------------------
" Plug 'MattesGroeger/vim-bookmarks'
" ----------------------------------------------------------------------------

nmap <Leader>bb <Plug>BookmarkToggle
nmap <Leader>ba <Plug>BookmarkAnnotate
nmap <Leader>bo <Plug>BookmarkShowAll
nmap <Leader>bn <Plug>BookmarkNext
nmap <Leader>bp <Plug>BookmarkPrev
nmap <Leader>bc <Plug>BookmarkClear
nmap <Leader>bx <Plug>BookmarkClearAll
nmap <Leader>bj <Plug>BookmarkMoveDown
nmap <Leader>bk <Plug>BookmarkMoveUp

let g:bookmark_save_per_working_dir = 1
let g:bookmark_highlight_lines = 1
let g:bookmark_disable_ctrlp = 1

" ----------------------------------------------------------------------------
" Plug 'mhinz/vim-startify'
" ----------------------------------------------------------------------------

let g:ascii = [
\'',
\'  ______               _____   _______            _____   _____    ______',
\' |  ____|     /\      / ____| |__   __|          |_   _| |  __ \  |  ____|',
\' | |__       /  \    | (___      | |     ______    | |   | |  | | | |__',
\' |  __|     / /\ \    \___ \     | |    |______|   | |   | |  | | |  __|',
\' | |       / ____ \   ____) |    | |              _| |_  | |__| | | |____',
\' |_|      /_/    \_\ |_____/     |_|             |_____| |_____/  |______|',
\'',
\]

let g:startify_custom_header = g:ascii + startify#fortune#boxed()

let g:startify_lists = [
    \ { 'header': ['   MRU'],            'type': 'files' },
    \ { 'header': ['   MRU '. getcwd()], 'type': 'dir' },
    \ { 'header': ['   Sessions'],       'type': 'sessions' },
    \ ]

let g:startify_custom_indices = map(range(1,100), 'string(v:val)')

" ----------------------------------------------------------------------------
" Plug 'godlygeek/tabular'
" ----------------------------------------------------------------------------

nmap <silent> <Leader>a= :Tabularize /=<CR>
vmap <silent> <Leader>a= :Tabularize /=<CR>
nmap <silent> <Leader>a\| :Tabularize /\|<CR>
vmap <silent> <Leader>a\| :Tabularize /\|<CR>
nmap <silent> <Leader>a: :Tabularize /:\zs<CR>
vmap <silent> <Leader>a: :Tabularize /:\zs<CR>

" ----------------------------------------------------------------------------
" Plug 'vim-scripts/EnhancedJumps'
" ----------------------------------------------------------------------------

nmap [[         <Plug>EnhancedJumpsOlder
nmap ]]         <Plug>EnhancedJumpsNewer
nmap g[         <Plug>EnhancedJumpsRemoteOlder
nmap g]         <Plug>EnhancedJumpsRemoteNewer
nmap <Leader>[  <Plug>EnhancedJumpsLocalOlder
nmap <Leader>]  <Plug>EnhancedJumpsLocalNewer

let g:EnhancedJumps_CaptureJumpMessages = 0

" ----------------------------------------------------------------------------
" Plug 'editorconfig/editorconfig-vim'
" ----------------------------------------------------------------------------

let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

" ----------------------------------------------------------------------------
" Plug 'ntpeters/vim-better-whitespace'
" ----------------------------------------------------------------------------

let g:better_whitespace_guicolor='gray'
let g:better_whitespace_ctermcolor='gray'
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=0

" ----------------------------------------------------------------------------
" Plug 'tpope/vim-fugitive'
" ----------------------------------------------------------------------------

nnoremap <Leader>ga :Git add %:p<CR><CR>
nnoremap <Leader>gb :Gblame<CR>
nnoremap <Leader>gd :Gdiff<CR>
nnoremap <Leader>ge :Gedit<CR>
nnoremap <Leader>gl :Dispatch! git pull<CR>
nnoremap <Leader>gm :Gmove<Space>
nnoremap <Leader>go :Git checkout<Space>
nnoremap <Leader>gp :Dispatch! git push<CR>
nnoremap <Leader>gr :Gread<CR>
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gt :Gcommit -v -q %:p<CR>
nnoremap <Leader>gw :Gwrite<CR><CR>

" ----------------------------------------------------------------------------
" Plug 'christoomey/vim-conflicted'
" ----------------------------------------------------------------------------

set diffopt+=vertical
function ConflictedVersionWrapper()
  if exists('ConflictedVersion')
    return ConflictedVersion()
  endif
endfunction
set stl+=%{ConflictedVersionWrapper()}

let g:diffget_local_map = 'gl'
let g:diffget_upstream_map = 'gu'

nnoremap gn :GitNextConflict<CR>

" ----------------------------------------------------------------------------
" Plug 'gregsexton/gitv'
" ----------------------------------------------------------------------------

nmap <leader>gv :Gitv --all<cr>
nmap <leader>gV :Gitv! --all<cr>
vmap <leader>gV :Gitv! --all<cr>

" ----------------------------------------------------------------------------
" Plug 'airblade/vim-rooter'
" ----------------------------------------------------------------------------

let g:rooter_manual_only = 0

" ----------------------------------------------------------------------------
" Plug 'will133/vim-dirdiff'
" ----------------------------------------------------------------------------

let g:DirDiffAddArgs = "-w"

" ----------------------------------------------------------------------------
" Plug 'rhysd/committia.vim'
" ----------------------------------------------------------------------------

let g:committia_hooks = {}
function! g:committia_hooks.edit_open(info)
    " Additional settings
    setlocal spell

    " If no commit message, start with insert mode
    if a:info.vcs ==# 'git' && getline(1) ==# ''
        startinsert
    endif

    " Scroll the diff window from insert mode
    " Map <C-n> and <C-p>
    imap <buffer><C-n> <Plug>(committia-scroll-diff-down-half)
    imap <buffer><C-p> <Plug>(committia-scroll-diff-up-half)
endfunction

" ----------------------------------------------------------------------------
" Plug 'rhysd/git-messenger.vim'
" ----------------------------------------------------------------------------

nmap <Leader>gg <Plug>(git-messenger)
let g:git_messenger_always_into_popup = 1
let g:git_messenger_include_diff = "current"
function! s:setup_git_messenger_popup() abort
    " Your favorite configuration here

    " For example, set go back/forward history to <C-o>/<C-i>
    nmap <buffer><C-o> o
    nmap <buffer><C-i> O
endfunction
autocmd FileType gitmessengerpopup call <SID>setup_git_messenger_popup()

" ----------------------------------------------------------------------------
" Plug 'simnalamburt/vim-mundo'
" ----------------------------------------------------------------------------

nnoremap <Leader>uu :MundoToggle<CR>

" ----------------------------------------------------------------------------
" Plug 'benmills/vimux'
" ----------------------------------------------------------------------------

map <Leader>vv :call VimuxOpenRunner()<CR>
map <Leader>vc :call VimuxRunCommand("clear")<CR>
map <Leader>vi :VimuxInspectRunner<CR>
map <Leader>vl :VimuxRunLastCommand<CR>
map <Leader>vq :VimuxCloseRunner<CR>
map <Leader>vx :VimuxInterruptRunner<CR>
map <Leader>vz :call VimuxZoomRunner()<CR>

function! VimuxSlime()
    call VimuxSendText(@v)
    call VimuxSendKeys("Enter")
endfunction

vmap <Leader>vs "vy :call VimuxSlime()<CR>
nmap <Leader>V V<Leader>vsj
nmap <Leader>vp vip<Leader>vs<CR>


" ----------------------------------------------------------------------------
" Plug 'voldikss/vim-floaterm'
" ----------------------------------------------------------------------------

let g:floaterm_opener = 'edit'

nmap <leader>f :FloatermNew lf<CR>
nmap <leader>t :FloatermNew<CR>

" ----------------------------------------------------------------------------
" Plug 'w0rp/ale'
" ----------------------------------------------------------------------------

nmap <Leader>ll :ALEToggle<CR>

" ----------------------------------------------------------------------------
" Plug 'plasticboy/vim-markdown'
" ----------------------------------------------------------------------------

let g:vim_markdown_fenced_languages = ['go=go']

" ----------------------------------------------------------------------------
" Plug 'neoclide/coc.nvim'
" ----------------------------------------------------------------------------

source $HOME/.config/nvim/lsp.vim

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>":
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  imap <expr> <cr> pumvisible() "\<C-y>" : "\<C-g>u\<CR>"
endif

" ----------------------------------------------------------------------------
" Plug 'puremourning/vimspector'
" ----------------------------------------------------------------------------

let g:vimspector_install_gadgets = [ 'debugpy', 'vscode-cpptools', 'vscode-go', 'vscode-node-debug2' ]

nmap <Leader>dc <Plug>VimspectorContinue
nmap <Leader>dd <Plug>VimspectorReset
nmap <Leader>ds <Plug>VimspectorStop
nmap <Leader>dr <Plug>VimspectorRestart
nmap <Leader>db <Plug>VimspectorToggleBreakpoint
nmap <Leader>di <Plug>VimspectorToggleConditionalBreakpoint
nmap <Leader>dj <Plug>VimspectorStepOver
nmap <Leader>dh <Plug>VimspectorStepInto
nmap <Leader>dk <Plug>VimspectorStepOut
nmap <Leader>dt <Plug>VimspectorRunToCursor
nmap <Leader>de :VimspectorEval <C-R><C-W><CR>

sign define vimspectorBP text=o          texthl=WarningMsg
sign define vimspectorBPCond text=o?     texthl=WarningMsg
sign define vimspectorBPDisabled text=o! texthl=LineNr
sign define vimspectorPC text=\ >        texthl=MatchParen
sign define vimspectorPCBP text=o>       texthl=MatchParen

" ----------------------------------------------------------------------------
" Plug 'edkolev/tmuxline.vim'
" ----------------------------------------------------------------------------

let g:airline#extensions#tmuxline#enabled = 0

" ----------------------------------------------------------------------------
" Plug 'joshdick/onedark.vim'
" ----------------------------------------------------------------------------

silent! colorscheme onedark
" colorscheme nord

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

set background=dark

highlight Comment cterm=italic
highlight Normal guibg=NONE ctermbg=NONE
highlight NormalFloat guibg=NONE ctermbg=NONE

packadd cfilter

" ----------------------------------------------------------------------------
" Plug 'junegunn/limelight.vim'
" ----------------------------------------------------------------------------

let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

" ----------------------------------------------------------------------------

nnoremap <Leader>zd :diffthis<CR>
nnoremap <Leader>zh :Hexmode<CR>
nnoremap <Leader>zi :set list!<CR>
nnoremap <Leader>zl :Limelight!!<CR>
nnoremap <Leader>zs :set hlsearch!<CR>
nnoremap <Leader>zw :set wrap!<CR>
nnoremap <Leader>zy :Goyo<CR>
nnoremap <Leader>zr :RooterToggle<CR>
nnoremap <Leader>ze :set cursorline!<CR>
nnoremap <leader>zg :GoldenRatioToggle<CR>

cnoreabbrev H vert h

let g:centering = v:false
function! ToggleCenter()
  let g:centering = !g:centering
  if g:centering
    nnoremap j gjzz
    nnoremap k gkzz
  else
    nnoremap j gj
    nnoremap k gk
  endif
endfunction

nmap <Leader>zt :call ToggleCenter()<CR>
call ToggleCenter()

let g:python3_host_prog = '/Users/chuyangzhou/miniforge3/bin/python'
set mouse=a

" Universal clipboard
set clipboard+=unnamedplus
