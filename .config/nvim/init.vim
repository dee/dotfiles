
set t_Co=256

set nocompatible
set showmatch
set noswapfile
set nobackup
" set cursorline

syntax enable

set mouse=v
set tabstop=4
set softtabstop=4
set expandtab
set number
set shiftwidth=4

colorscheme industry

set cc=80

inoremap <c-s> <c-o>:w<cr>

inoremap <c-q> <c-o>:q<cr>

" Ctrl + f to begin searching
inoremap <c-f> <c-o>

" Ctl + f (x2) to stop highlighting the search results
inoremap <c-f>f <c-o>:nohlsearch<cr>
inoremap <c-f><c-f> <c-o>:nohlsearch<cr>

" F3 go to the previous match
inoremap <F3> <c-o>:normal Nzz<cr>

" F4 go to the next match
inoremap <F4> <c-o>:normal nzz<cr>

" Ctrl + h begin a search and replace
inoremap <c-h> <c-o>:%s///gc<Left><Left><Left><Left>

