syntax on
colorscheme desert
set ai
set hls
set sw=4
set ts=4
set expandtab
set laststatus=2
set nocompatible
set cursorline
set colorcolumn=101
set wrap
set linebreak
set nolist
set textwidth=0
set wrapmargin=0
set formatoptions+=1
hi colorcolumn term=reverse ctermbg=DarkGray guibg=DarkGray
let g:clang_user_options="-fexceptions -std=c++11 -I/usr/include -I/usr/local/include"
let g:clang_use_library=1
let c_no_curly_error=1
hi CursorLine cterm=NONE ctermbg=darkblue ctermfg=white guibg=darkblue guifg=white
hi Pmenu ctermbg=darkred guibg=darkcyan
hi Search term=reverse ctermfg=white ctermbg=darkgray guifg=white guibg=darkgray
map T :TaskList
map F :NERDTree
execute pathogen#infect()
syntax on
filetype plugin indent on
au BufNewFile,BufRead *.ejs set filetype=html
