" allow scrolling
set mouse=a
" map jk to escape
inoremap jk <esc>
let mapleader="'"
syntax on " highlight syntax
filetype plugin on
set relativenumber " show relative line numbers
set number " show line numbers
set noswapfile " disable swapfile
set hlsearch " highlight all search results
set ignorecase " ignore case in search
set incsearch " show search results as you type

" Spelling Config
set spell spelllang=en_us " fix this later
" fix spelling with <leader>f
nnoremap <leader>f 1z=
" toggle spelling visuals cuz they're annoying
nnoremap <leader>s :set spell!

" Tab Config
set tabstop=4     " width of TAB is set  to 4. still it is a \t. vim will interpret it to have width of 4
set shiftwidth=4  " indents will have a width of 4
set softtabstop=4 " sets number of columns for a TAB
set expandtab     " expand TABs to be spaces

" Cursor Config
set cursorline " highlights current line
set cursorcolumn " highlights current column

" Vim-Plug
call plug#begin()

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'arzg/vim-colors-xcode'
Plug 'mhinz/vim-signify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-commentary'
Plug 'w0rp/ale'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'mattn/emmet-vim'
Plug 'yggdroot/indentline'
Plug 'pangloss/vim-javascript'
Plug 'terryma/vim-multiple-cursors'
Plug 'raimondi/delimitmate'
Plug 'bronson/vim-trailing-whitespace'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'nvie/vim-flake8'
Plug 'junegunn/fzf'
" Plug 'scrooloose/syntastic' slows downs loading immensely

call plug#end()

colorscheme xcodedark " set color theme

" Signify Config
set updatetime=100 " default update time 4000ms not good for async update
let g:signify_sign_add = '+'
let g:signify_sign_change = '~'
let g:signify_sign_delete = '-'

" Set airline theme
let g:airline_theme='minimalist'

" Syntastic Config
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatusLineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

" NerdTree Config

