"---  vimrc file for Mayberithm

" setting the leader key
let mapleader = "\<Space>"

" THE BASICS
set laststatus=2   " always show status bar
set ruler          " rows, columns in status bar
set number         " numbered lines
set autoindent     " carry indentation to next line
set hlsearch       " highlight all search pattern matches

" COLORS
syntax on          " colors on
"colors koehler    " color setting for a dark background

" TABBING
set expandtab      " all tabs are spaces
set tabstop=3      " hard tabstop 3 spaces
set shiftwidth=3   " indent 3 spaces

" WHITESPACE
set list           " show whitespace charactors
set listchars=space:·,eol:$,tab:>-
   "NOTE : space is Unix only. Remove on any other OS

" Disable arrow keys in insert mode
ino <up> <Nop>
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>

" arrow keys change windows
nmap <silent> <Up> :wincmd k<CR>
nmap <silent> <Down> :wincmd j<CR>
nmap <silent> <Left> :wincmd h<CR>
nmap <silent> <Right> :wincmd l<CR>

" RE-MAPPINGS
" ==================================================

" fixes accidental capitalization for save commands
:command W w
:command Q q
:command WQ wq
:command Wq wq

" F2 converts tabs to spaces, then saves
map <F2> :retab <CR> :w <CR>

" toggles relative numbers
nnoremap <leader>l :set rnu! rnu? <CR>

" insert line below, and stay on original line
nnoremap <Enter> o<esc>k

" insert line above, and stay on original line
nnoremap <leader><Enter> O<esc>j

" SCRIPT INITIATION
" ==================================================

" enables script in HTML, XML, and PHP files
" Wraps visual selection with html style tag
" Will ask user for inputs (tag and attribute)
au Filetype html,xml,php source ~/.vim/scripts/wrap-w-html-tag.vim

" HINTS
" <CR> = Carraige Return
