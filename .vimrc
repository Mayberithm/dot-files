"---    vimrc file for SaraBurp

" set leader key to spacebar
let mapleader = "\<Space>"

" THE BASICS
set laststatus=2     " always show status bar
set ruler            " rows, columns in status bar
set number           " numbered lines

set autoindent       " carry indentation to next line
set hlsearch         " highlight all search pattern matches

" COLORS
syntax on            " colors on
colors monokai       " color setting for a dark background
    " requires .vim/colors/monokai.vim

" TABBING
set expandtab        " all tabs are spaces
set tabstop=4        " hard tabstop 4 spaces
set shiftwidth=4     " indent 4 spaces

" WHITESPACE
set list             " show whitespace charactors
set listchars=eol:$,tab:>-   " define whitespace representation
"set listchars=space:·,eol:$,tab:>-
    " NOTE : space is Unix only. Remove on any other OS

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

" most caps typos save read-only files as admin user
    " user will be prompted for password
:command W :execute ':silent w !sudo tee % > /dev/null' | :edit!
:command Q :execute ':silent w !sudo tee % > /dev/null' | :edit!
:command WQ :execute ':silent w !sudo tee % > /dev/null' | :edit!
:command Wq :execute ':silent w !sudo tee % > /dev/null' | :edit!

" F2 converts tabs to spaces, then saves
map <F2> :retab <CR> :w <CR>

" toggles relative numbers
nnoremap <leader>l :set rnu! rnu? <CR>

" insert line below, and stay on original line
nnoremap <Enter> o<esc>k

" insert line above, and stay on original line
nnoremap <leader><Enter> O<esc>j

" homemade goodies
" SCRIPT INITIATION
" ==================================================

" UNDER REVIEW

" enables script in HTML, XML, and PHP files
" Wraps visual selection with html style tag
" Will ask user for inputs (tag and attribute)
" au Filetype html,xml,php source ~/.vim/scripts/wrap-w-html-tag.vim

" HINTS
" <CR> = Carraige Return
