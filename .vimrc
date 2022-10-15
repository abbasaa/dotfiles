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
set backspace=eol,indent,start " lets you backspace over everything

" Spelling Config
"set spell spelllang=en_us " fix this later
" fix spelling with <leader>f
nnoremap <leader>f 1z=
" toggle spelling visuals cuz they're annoying
nnoremap <leader>s :set spell!

" Tab Config
set tabstop=2     " width of TAB is set  to 4. still it is a \t. vim will interpret it to have width of 4
set shiftwidth=2  " indents will have a width of 4
set softtabstop=2 " sets number of columns for a TAB
set expandtab     " expand TABs to be spaces

" Cursor Config
set cursorline " highlights current line
"set cursorcolumn " highlights current column

" Enumerate tabs
fu! MyTabLabel(n)
  let buflist = tabpagebuflist(a:n)
  let winnr = tabpagewinnr(a:n)
  let string = fnamemodify(bufname(buflist[winnr - 1]), ':t')
  return empty(string) ? '[unnamed]' : string
endfu

fu! MyTabLine()
  let s = ''
  for i in range(tabpagenr('$'))
    " select the highlighting
    if i + 1 == tabpagenr()
      let s .= '%#TabLineSel#'
    else
      let s .= '%#TabLine#'
    endif

    " set the tab page number (for mouse clicks)
    " let s .= '%' . (i+1) . 'T'
    " display tabnumber (for use with <count>gt, etc)
    let s .= ' '. (i+1) . ' '

    " the label is made by MyTabLabel()
    let s .= ' %{MyTabLabel(' . (i + 1) . ')} '

    if i+1 < tabpagenr('$')
      let s .= ' |'
    endif
  endfor
return s
endfu
set tabline=%!MyTabLine()

" Vim-Plug
call plug#begin()

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'arzg/vim-colors-xcode'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-commentary'
Plug 'w0rp/ale'
"Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'mattn/emmet-vim'
Plug 'yggdroot/indentline'
Plug 'terryma/vim-multiple-cursors'
Plug 'raimondi/delimitmate'
Plug 'bronson/vim-trailing-whitespace'
Plug 'bfrg/vim-cpp-modern'
Plug 'nvie/vim-flake8'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'gauteh/vim-cppman'
" Plug 'scrooloose/syntastic' slows downs loading immensely

call plug#end()

" colorscheme xcodedark " set color theme

" Signify Config
" set updatetime=100 " default update time 4000ms not good for async update
" let g:signify_sign_add = '+'
" let g:signify_sign_change = '~'
" let g:signify_sign_delete = '-'

" Set airline theme
let g:airline_theme='ayu_mirage'

" Syntastic Config
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatusLineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

" NerdTree Config
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Start nerdtree on vim start
autocmd VimEnter * NERDTree
" Go to file window on vim start
autocmd VimEnter * wincmd w
" Close NERDTree automatically if last buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" Ale stuff
let g:ale_set_highlights = 0
let g:airline#extensions#ale#enabled = 1

" Fzf window stuff
let g:fzf_layout = {'down' : '~40'}
