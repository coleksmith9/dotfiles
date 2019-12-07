set nocompatible              " be iMproved, required
filetype off                  " required

" VUNDLE SETTINGS
"
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" COLOR SCHEMES

" Plugin 'dracula/vim'
" Plugin 'arcticicestudio/nord-vim'
Plugin 'dylanaraps/wal.vim'

" PYTHON HELPER PLUGINS
Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" VIM CONFIG SETTINGS

" adds syntax highlighting
syntax on

" adds line numbers
set number

" set tabs to have 4 spaces
set ts=4

" when using the >> or << commands, shifts line by 4 spaces
set shiftwidth=4

" expand tabs into spaces
set expandtab

" auto indents when moving to next line
set autoindent

" adds line highlight to current line
set cursorline
" hi CursorLine cterm=bold ctermbg=236

" show the matching pair for () {} []
set showmatch

" enables all python features
let python_highlight_all = 1

" sets colorscheme to wal
colorscheme wal

" visual autocomplete for command menu
set wildmenu

" search as characters are entered and highlight matches
set incsearch
set hlsearch

" folds _very_ nested blocks of code on load
set foldmethod=indent
set foldlevel=10

" folds and unfolds on spacebar
nnoremap <space> za

" YouCompleteMe configs
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
