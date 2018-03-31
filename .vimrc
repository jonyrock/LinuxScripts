set path=$PWD/**

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'

call plug#end()
