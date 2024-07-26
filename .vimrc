" Don't try to be vi compatible
set nocompatible

" Turn on syntax highligting
syntax on

" Set leader key to space
let mapleader = " "

" Line things
set number         "Show line numbers
set relativenumber "Set relative numbers

" Show file stats
set ruler

" Encoding
set encoding=utf-8

" Whitespace
set wrap
set textwidth=79

" Tabs and spaces
set expandtab     "Convert tabs to spaces
set tabstop=4     "Number of spaces that a <Tab> in the file counts for 
set shiftwidth=4  "Number of spaces for each step of (auto)indent 
set softtabstop=4 "Number of columns for a tab

" Search stuff 
set incsearch
set hlsearch
nnoremap <leader>l :noh<CR>

" Set status line
set laststatus=2

" Set colorscheme
colorscheme industry
