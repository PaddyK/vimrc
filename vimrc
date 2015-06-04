set nocompatible
filetype off

" Set the runtime path to vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let vundle manage vundle, required
Plugin 'gmarik/Vundle.vim'

" Installing Vundle:
"   run: git clone https://github.com/gmarik/Vundle.vim.git \
"           ~/.vim/bundle/Vundle.vim
"   Start vim and type :PluginInstall

" Add other plugins here
" =======================
Plugin 'Valloric/YouCompleteMe'

" Installing YouCompleteMe:
"   First run :PluginInstall
"   required software: build-essentials, cmake python-dev
"   run cd ~/.vim/bundle/YouCompleteMe && ./install.sh --clang-completer

" Some useful commands:
"   Gstatus: go to line and toggel whether to stage for commit or not with -
"   Gcommit
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
" Installing fonts: git clone https://github.com/powerline/fonts.git
" cd powerline && ./install.sh

Plugin 'ervandew/supertab'
Plugin 'vim-scripts/mru'
Plugin 'scrooloose/syntastic'

" All plugins have to be added before this
call vundle#end()
filetype plugin indent on

set nu
"-----------Settings for wrapping text
set wrap
set linebreak
set nolist " list disables line break
set textwidth=99
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

" replace usual past with paste-yank-just-pasted-content
" allows for pasting the same content in succession
xnoremap p pgvy

syntax on
set t_Co=256
" let g:jellybeans_background_color_256='NONE'
let g:lucius_style = 'light'
colorscheme lucius

" For dark schemes:
" hi ColorColumn ctermbg=234

" For light schemes:
hi ColorColumn ctermbg=153 ctermfg=9
set colorcolumn=90

hi ExtraWhiteSpace ctermbg=124
match ExtraWhiteSpace /\s\+$/
" Overlength definition has to come after this
hi OverLength ctermfg=9
match OverLength '\%>90v'

"filetype plugin on
"set omnifunc=syntaxcomplete#Complete
"
"---------------------------------------------------------------------------------------
" Settings for vim-airline
" ---------------------------------------------------------------------------------------
"let g:airline_theme='jellybeans'
set laststatus=2 " necessary s.t. vim-airline loads instantly
let g:airline_powerline_fonts=1 " You need to install powerline fonds for this
                                " to work. https://github.com/powerline/fonts
