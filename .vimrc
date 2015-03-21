"TODO \C-c wq
execute pathogen#infect()
filetype plugin on

noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 5, 1)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 5, 1)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 2, 1)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 2, 1)<CR>

"build on F7
map<F7>  :make<CR>
imap<F7> <ESC>:make<CR> 

"debug on F5
map<F5> :!gdb -ex r build/app<CR>
imap<F5> <ESC>:!gdb -ex r build/app<CR>

" Forces vim to load present .vimrc file in current working directory
set exrc
" Security restric usage in non-default .vimrc
set secure

"set colorcolumn=110
"highlight ColorColumn ctermbg=darkgray

"Solarized Dark Theme 
set background=dark
colorscheme solarized
let g:solarized_termtrans=1
" Make Vim more useful
set nocompatible
" Use the OS clipboard by default (on versions compiled with `+clipboard`)s
set clipboard=unnamed
" Enhance command-line completion
set wildmenu
" Optimize for fast terminal connections
set ttyfast
" Show “invisible” characters
"set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
"set list
" Always show status line
set laststatus=2
" Enable mouse in all modes
set mouse=a

"Autowrite files when using next and previous
set autowrite

" VISUAL
set number		" Enable line numbers
syntax enable	" Enable syntax highlighting
set cursorline	" Highlight current line
set title 		" Show the filename in the window titlebar

" STATUS BAR
set showmode	" Show the current mode
set ruler		" Show cursor position in the right corner of window 

" RECOVERY
set backupdir=~/.vim/backups
set directory=~/.vim/swaps

" DISABLE ANNOYING FEATURES 
set noerrorbells	" Disable error bell
set shortmess=I		" Don’t show the intro message when starting Vim

" INDENTATION
filetype indent on	" Automatically switch to cindent if it is supported
set shiftwidth=4	" Make autoindentation four spaces
set tabstop=4		" Make your tabs as wide as four spaces

"KEYBINDINGS
map Y y$
let mapleader=","
inoremap jj <esc>
au BufRead,BufNewFile *.md setl ft=md
au BufRead,BufNewFile *.cpp setl ft=cpp
