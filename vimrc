set nocompatible
filetype off
set shell=sh shellredir=>%s\ 2>&1

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
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-scripts/indentpython.vim'
" Plugin 'klen/python-mode'
Plugin 'nvie/vim-flake8'
" Support for julia language
Plugin 'JuliaEditorSupport/julia-vim'
Plugin 'xuhdev/vim-latex-live-preview'
Plugin 'jnurmine/Zenburn'


" All plugins have to be added before this
call vundle#end()
filetype plugin indent on

set nu
set encoding=utf-8
"-----------Settings for wrapping text
set wrap
set linebreak
set nolist " list disables line break
" set textwidth=99
" set wrapmargin=0

set tabstop=4
set shiftwidth=4
set expandtab
set clipboard=unnamedplus

let mapleader = ","

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
vmap Zc :foldc!<CR>
imap jj <Esc>
" replace usual past with paste-yank-just-pasted-content
" allows for pasting the same content in succession
xnoremap p pgvy

autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

let python_highlight_all=1
syntax on
set t_Co=256

"syn match ExtraWhitespace /\s\+$/
"autocmd ColorScheme * highlight ExtraWhitespace ctermbg=124    
"highlight ExtraWhitespace ctermbg=124    

let g:jellybeans_background_color_256='NONE'
" colorscheme jellybeans
colorscheme zenburn
hi Normal ctermbg=NONE
let g:zenburn_italic_Comment=1
let g:zenburn_subdued_LineNr=1
match Operator /\w\+=/
2match Operator /self/
"let g:lucius_style = 'light'
"colorscheme lucius
"set background=light
"let g:solarized_termcolors=16
"colorscheme solarized

" For dark schemes:
hi ColorColumn ctermbg=234

" For light schemes:
"hi ColorColumn ctermbg=153 ctermfg=9
"hi ColorColumn ctermbg=7 ctermfg=9
set colorcolumn=80
set hlsearch

" Overlength definition has to come after this
" hi OverLength ctermfg=9
" syntax match ExtraWhitespace /read_/ 
" autocmd BufWinEnter * match OverLength '\%>80v'

"filetype plugin on
"set omnifunc=syntaxcomplete#Complete
"
"-------------------------------------------------------------------------------------------------
" Settings for vim-airline
" ---------------------------------------------------------------------------------------
"let g:airline_theme='jellybeans'
set laststatus=2 " necessary s.t. vim-airline loads instantly
let g:airline_powerline_fonts=1 " You need to install powerline fonds for this
                                " to work. https://github.com/powerline/fonts
let g:airline#extensions#tabline#enabled = 1 " Enable a list of buffers
let g:airline#extensions#tabline#fnamemod = ':t' " Show just the filename

" Setting CtrlP
" ----------------
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg|pdf|mwb|pyc)$',
  \}
" Use the nearest .git directory as the cwd
" " This makes a lot of sense if you are working on a project that is in version
" " control. It also supports works with .svn, .hg, .bzr.
let g:ctrlp_working_path_mode = 'r'

" Settings for python-mode
" ------------------------
" Disable syntax checker of python-mode, instead use syntastic one
let g:pymode_lint = 0
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot=0
let g:syntastic_check_on_open = 1
" let g:syntastic_python_checkers = ['pylint']
let g:syntastic_python_python_exec = 'python3'
let g:syntastic_python_checkers = ['python']
" Highlight syntax.


" Working with buffers
" --------------------
" This allows buffers to be hidden if you've modified a buffer.
" " This is almost a must if you wish to use buffers in this way.
set hidden

" " To open a new empty buffer
" " This replaces :tabnew which I used to bind to this mapping
nmap <leader>T :enew<cr>

" " Move to the next buffer
nmap <leader>l :bnext<CR>

" " Move to the previous buffer
nmap <leader>h :bprevious<CR>

" " Close the current buffer and move to the previous one
" " This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>

" " Show all open buffers and their status
nmap <leader>bl :ls<CR>

" Copy and paste from and to clipboard
" noremap <leader>y "+y
" noremap <leader>p "+p

