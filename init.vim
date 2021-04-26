" plugins

" ============================================================

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
Plug 'jistr/vim-nerdtree-tabs'

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

" ============================================================

" color / themes
colorscheme alduin " oceanic_material sierra sonokai lucid
let g:airline_theme='minimalist'

" settings
set encoding=UTF-8
set background=dark
set mouse=a
set history=500
set clipboard=unnamed
set mousehide
set hidden
set splitbelow
set splitright
set viewoptions=folds,options,cursor,unix,slash
set cursorline
set number 
set showmatch
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L

set shiftwidth=4
set expandtab
set tabstop=4
set autoindent

set hlsearch
set incsearch
set ignorecase


" leader mappings
let mapleader=","

" clear search
map <leader>h :noh<CR>

" ============================================================
" https://github.com/spf13/spf13-vim

set whichwrap=b,s,h,l,<,>,[,]
set backspace=indent,eol,start
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.
noremap j gj
noremap k gk

" Allow using the repeat operator with a visual selection (!)
" http://stackoverflow.com/a/8064607/127816
vnoremap . :normal .<CR>

" For when you forget to sudo.. Really Write the file.
cmap w!! w !sudo tee % >/dev/null

" NERDTree
map <C-e> <plug>NERDTreeTabsToggle<CR>
map <leader>e :NERDTreeFind<CR>
nmap <leader>nt :NERDTreeFind<CR>

let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=1
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=1
let g:nerdtree_tabs_open_on_gui_startup=0

" ============================================================


let g:rainbow_active = 1

let g:indent_guides_enable_on_vim_startup = 1

" easyescape
" switch to command-mode when pressing "f" and "d"
let g:easyescape_chars = { "f": 1, "d": 1 }
let g:easyescape_timeout = 100
cnoremap fd <ESC>
cnoremap df <ESC>

" statusline
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" ============================================================
" YCM + UltiSnips
" https://newbedev.com/ultisnips-and-youcompleteme

function! g:UltiSnips_Complete()
    call UltiSnips#ExpandSnippet()
    if g:ulti_expand_res == 0
        if pumvisible()
            return "\<C-n>"
        else
            call UltiSnips#JumpForwards()
            if g:ulti_jump_forwards_res == 0
               return "\<TAB>"
            endif
        endif
    endif
    return ""
endfunction

au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-e>"
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" ============================================================
