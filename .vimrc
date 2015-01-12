filetype plugin on


"Solarized Dark Theme 
set background=dark
colorscheme solarized
let g:solarized_termtrans=1
" Enable syntax highlighting
syntax enable
" Make Vim more useful
set nocompatible
" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed
" Enhance command-line completion
set wildmenu
" Show cursor position in the right corner of window 
set ruler
" Optimize for fast terminal connections
set ttyfast
" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
" Highlight current line
set cursorline
" Show “invisible” characters
"set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
"set list
" Always show status line
set laststatus=2
" Enable mouse in all modes
set mouse=a
" Disable error bells
set noerrorbells
" Don’t show the intro message when starting Vim
set shortmess=I
" Show the current mode
set showmode

" INDENTATION
filetype indent on	" Automatically switch to cindent if it is supported
set shiftwidth=4	" Make autoindentation four spaces

" Make tabs as wide as four spaces
set tabstop=4
" Enable line numbers
set number
" Show the filename in the window titlebar
set title

map Y y$
let mapleader=","
inoremap jj <esc>
au BufRead,BufNewFile *.md setl ft=md
au BufRead,BufNewFile *.cpp setl ft=cpp
