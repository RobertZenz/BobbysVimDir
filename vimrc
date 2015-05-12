" Basic options

" Enable auto indeBasic options
set autoindent

" Allow me to delete stuff.
set backspace=eol,start,indent	" Allow me to delete stuff

" Set the color of the column markers to 72, 80, 120.
set colorcolumn=72,80,120

" Ask for confirmation instead of failing on certaion operations.
set confirm

" Default encoding is UTF-8.
set encoding=utf8

" Default line endings, first UNIX, then Mac and Than DOS.
set ffs=unix,mac,dos

" Display whitespace.
set list
set listchars=extends:>,nbsp:·,precedes:<,tab:»\ ,trail:·

" Allow the usage of the mouse.
set mouse=a

" Don't make any backups of the files.
set nobackup

" Disable any bells.
set noerrorbells
set novisualbell

" Display the line numbers.
set number

" Disable wrapping of lines.
set nowrap

" Display the current position of the cursor (row/column).
set ruler

" Use four spaces.
set shiftwidth=4

" Keep eight columns visible when scrolling horizontally.
set sidescroll=8

" Use smart tab function.
set smarttab

" Keep sixteen lines visible when scrolling vertically.
set scrolloff=16

" Use four spaces.
set tabstop=4

" Make completion nicer.
set wildmode=longest,list

" GUI options
set columns=85
set guioptions-=m
set guioptions-=T
set lines=100

" Cursor
set guicursor+=a:blinkon0

" Font and colors
syntax on
colorscheme darkspectrum
set background=dark

if has("gui_running")
	if has("gui_gtk2")
		set guifont=DejaVu\ Sans\ Mono\ 8
	elseif has("gui_photon")
		set guifont=DejaVu\ Sans\ Mono:s8
	elseif has("gui_kde")
		set guifont=DejaVu\ Sans\ Mono/8/-1/5/50/0/0/0/1/0
	elseif has("x11")
		set guifont=-*-courier-medium-r-normal-*-*-180-*-*-m-*-*
	else
	set guifont=DejaVu_Sans_Mono:h8:cDEFAULT
	endif
endif

filetype indent plugin on
filetype plugin on

" Completion
set completeopt=longest,menuone
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Plugins
execute pathogen#infect()

" Tagbar configuration
let g:tagbar_compact=1
let g:tagbar_expand=1
let g:tagbar_show_visibility=1
let g:tagbar_singleclick=1
let g:tagbar_sort=0
let g:tagbar_width=40

" Commands on startup
autocmd VimEnter * nested :TagbarOpen

