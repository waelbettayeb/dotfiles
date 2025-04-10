syntax on

set nu
set ruler
set showcmd
set wildmenu
set incsearch
set hlsearch
set antialias
set arabic
call plug#begin()

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()
