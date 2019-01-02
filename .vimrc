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

" TABBING
set expandtab        " all tabs are spaces
set tabstop=4        " hard tabstop 3 spaces
set shiftwidth=4     " indent 3 spaces

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
map F2 :retab <CR> :w <CR>

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


" PLUGIN SETTINGS
" ===================================================================

" Below is Vundle and its settings. Installed to write Markdown files in Vim.
" When '.md' file is saved, it renders to HTML in a browser tab.

" vim-markdown-preview
let vim_markdown_preview_browser='Google Chrome'
let vim_markdown_preview_toggle=3

    " this requires a network connection and is buggy
"let vim_markdown_preview_github=1    " requires grip install on sys

" VUNDLE VUNDLE VUNDLE VUNDLE VUNDLE VUNDLE VUNDLE VUNDLE VUNDLE
" ===================================================================
set nocompatible                    " be iMproved, required
filetype off                        " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" HERE LIES A TUTORIAL FOR CONFIGURING VUNDLE
" ===================================================================
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive' " COMMENTED OUT

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git' " COMMENTED OUT

" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin' " COMMENTED OUT

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'} " COMMENTED OUT

" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
" ===================================================================
" HERE LIES A TUTORIAL FOR CONFIGURING VUNDLE

" VUNDLE PLUGINS CURRENTLY IN USE
" ===================================================================
Plugin 'JamshedVesuna/vim-markdown-preview'   " requires Markdown.pl
" Plugin 'file:///Users/maybe/.vim/bundle/Markdown_1.0.1/Markdown.pl'
" ===================================================================
" VUNDLE PLUGINS CURRENTLY IN USE
"
" All of your Plugins must be added before the following line
call vundle#end()                 " required
filetype plugin indent on     " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList         - lists configured plugins
" :PluginInstall      - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean        - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" ===================================================================
" VUNDLE VUNDLE VUNDLE VUNDLE VUNDLE VUNDLE VUNDLE VUNDLE VUNDLE
"
