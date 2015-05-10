" Basics
set autoindent			" Auto-Indentation
set backspace=eol,start,indent	" Allow me to delete stuff
set colorcolumn=72,80,120		" Right margins
set confirm				" Ask for confirmation instead of failing
set encoding=utf8		" Default encoding
set ffs=unix,mac,dos	" Default line endings
set list
set listchars=extends:>,nbsp:·,precedes:<,tab:»\ ,trail:·
set mouse=a				" Allow usage of mouse
set nobackup			" Don't make backups.
set noerrorbells		" No bells
set novisualbell		" --||--
set number				" Display line numbers
set nowrap
set ruler				" Display row/column
set shiftwidth=4		" Use 4 spaces
set sidescroll=8		" Keep 8 columns on scroll
set smarttab			" Not sure
set scrolloff=16		" Keep context around the lines when scrolling
set tabstop=4			" Use 4 spaces

" GUI settings
set columns=85
set guioptions-=m
set guioptions-=T
set lines=100

" Cursor
set guicursor+=a:blinkon0

" Plugins
execute pathogen#infect()

" Font and colors
syntax on
colorscheme darkspectrum
set background=dark
set guifont=DejaVu\ Sans\ Mono\ 8

filetype indent plugin on
filetype plugin on

" Completion
set completeopt=longest,menuone
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

