execute pathogen#infect()
syntax enable
let g:solarized_termcolors=256
set background=light
colorscheme solarized
set ai
set hls
set sw=4
set ts=4
set expandtab
set laststatus=2
set nocompatible
set wrap
set linebreak
set nolist
set textwidth=0
set wrapmargin=0
set formatoptions+=1
let g:clang_user_options="-fexceptions -std=c++11 -I/usr/include -I/usr/local/include"
let g:clang_use_library=1
let c_no_curly_error=1
map T :TaskList
map F :NERDTree
filetype plugin indent on
au BufNewFile,BufRead *.ejs set filetype=html
