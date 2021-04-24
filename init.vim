call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'mhinz/vim-signify'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'junegunn/vim-github-dashboard'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
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
Plug 'dense-analysis/ale'
Plug 'easymotion/vim-easymotion'
Plug 'Valloric/YouCompleteMe'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries', 'for': 'go' }
call plug#end()

set encoding=UTF-8

let g:rainbow_active = 1

let g:airline_theme = 'minimalist'

let g:indent_guides_enable_on_vim_startup = 1

let g:easyescape_chars = { "f": 1, "d": 1 }
let g:easyescape_timeout = 100
cnoremap fd <ESC>
cnoremap df <ESC>
