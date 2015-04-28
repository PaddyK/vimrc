set nocompatible
filetype off

" Set the runtime path to vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Let vundle manage vundle, required
Plugin 'gmarik/Vundle.vim'
" Add other plugins here
" ======================
Plugin 'Valloric/YouCompleteMe'
"
" All plugins have to be added before this
call vundle#end()
filetype plugin indent on

set nu
"-----------Settings for wrapping text
set wrap
set linebreak
set nolist " list disables line break
set textwidth=80
set wrapmargin=0

set tabstop=4
set shiftwidth=4
set expandtab

syntax on
set t_Co=256
colorscheme jellybeans 

hi ColorColumn ctermbg=234
let &colorcolumn=join(range(80,999),",")

filetype plugin on
set omnifunc=syntaxcomplete#Complete
