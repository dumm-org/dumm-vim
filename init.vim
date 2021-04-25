call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'vimwiki/vimwiki'
Plug 'mhinz/vim-signify'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'junegunn/vim-github-dashboard'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mcchrish/nnn.vim'
Plug 'vlime/vlime', {'rtp': 'nvim/', 'for': 'lisp'}
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'ryanoasis/vim-devicons'
Plug 'gcmt/wildfire.vim'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'preservim/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'zhou13/vim-easyescape'
Plug 'frazrepo/vim-rainbow'
Plug 'Townk/vim-autoclose'
Plug 'Chiel92/vim-autoformat'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'dense-analysis/ale'
Plug 'vim-syntastic/syntastic'
Plug 'easymotion/vim-easymotion'
Plug 'Valloric/YouCompleteMe'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries', 'for': 'go' }
call plug#end()

set encoding=UTF-8
colorscheme onedark
set background=dark
set mouse=a
set history=500
set clipboard=unnamed
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L
set mousehide
set hidden
set splitbelow
set splitright
set viewoptions=folds,options,cursor,unix,slash
set cursorline
set number relativenumber 
set ignorecase
set showmatch
set nowrap
set shiftwidth=4
set expandtab
set tabstop=4
set autoindent

let g:rainbow_active = 1

let g:airline_theme='minimalist'

let g:indent_guides_enable_on_vim_startup = 1

let g:easyescape_chars = { "f": 1, "d": 1 }
let g:easyescape_timeout = 100
cnoremap fd <ESC>
cnoremap df <ESC>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

