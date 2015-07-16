" Disable Vi compatible
set nocompatible

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"	GENERAL	
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable	" Enable syntax highlighting
set number		" Enable line number
set rnu 		" Enable relative number
set cursorline	" Highlight current line

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"	INFORMATION	
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set title 			" Show the filename in the window titlebar
set showmode		" Show the current mode in command-line
set laststatus=2	" Always show status bar over command line

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"	FEATURES	
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildmenu	" Enhance command-line completion
" Use OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed

au BufRead,BufNewFile *.md setl ft=md
au BufRead,BufNewFile *.cpp setl ft=cpp

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"	KEYMAPPINGS and INPUT
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map Y y$
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
inoremap jj <esc>
"build on F7
map<F7>  :make!<bar>:botright cwindow<CR>
imap<F7> <ESC>:make!<bar>:botright cwindow<CR>
"debug on F5
map<F5> :!lldb -f build/app<CR>
imap<F5> <ESC>:!lldb -f build/app<CR>
" Move vertically by visual line instead of actual line
"nnoremap j gj
"nnoremap k gk

" Enable mouse in all modes
set mouse=a

let mapleader=","

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"	FONTS and GRAPHICS	
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Solarized Dark Theme 
set background=dark
colorscheme anton
let g:solarized_termtrans=1

" Show “invisible” characters
"set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"	PATHOGEN	
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
execute pathogen#infect()
filetype plugin on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"	TEMPLATE MASTER	
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Template master 
let g:username = 'Anton Ingfors' " %USER%
let g:email = 'anton.ingfors@protonmail.ch' " %MAIL%

"Additional global template directory searched before builtin templates
let g:templates_directory = '~/.vim/templates' 
"Prefix of global template files
let g:templates_global_name_prefix = 'vim-template'  
let g:templates_no_builtin_templates = 1 "Disable builtin templates

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"	SEARCHING	
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set incsearch           " search as characters are entered
set hlsearch            " highlight matches

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"	INDENTATION	
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype indent on	" Automatically switch to cindent if it is supported
set shiftwidth=4	" Make autoindentation four spaces
set tabstop=4		" Make your tabs as wide as four spaces

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"	SWAP AND BACKUP	
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup
set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"	FIX ANNOYING FEATURES	
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set noerrorbells	" Disable error bell
set shortmess=I		" Don’t show the intro message when starting Vim
