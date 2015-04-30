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

" Some useful commands:
"   Gstatus: go to line and toggel whether to stage for commit or not with -
"   Gcommit
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'


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

" With this it becomes possible to fold/unfold a method using za
set foldmethod=indent
set foldlevel=99

" Window Splits
"   Vertical Split          : ctrl+w + v
"   Horizontal Split        : ctrl+w + s
"   Close current windows   : ctrl+w + q
" Reset keybindings to move around windows using ctrl+<direction>
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

syntax on
set t_Co=256
" let g:jellybeans_background_color_256='NONE'
 colorscheme jellybeans 

 hi ColorColumn ctermbg=234
 let &colorcolumn=join(range(80,999),",")

"filetype plugin on
"set omnifunc=syntaxcomplete#Complete
