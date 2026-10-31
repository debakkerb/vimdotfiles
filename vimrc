" VI Options

filetype plugin indent on

set hlsearch
set incsearch
set ignorecase

set tabstop=2
set softtabstop=2
set shiftwidth=2

set number
set relativenumber

set history=1000

syntax on

let mapleader="\<space>"

" Theme
if has('termguicolors')
	set termguicolors
endif

" Plugin Manager
packadd minpac
call minpac#init()

" Disable arrow keys
nmap <Up>			<Nop>
nmap <Down>		<Nop>
nmap <Left>		<Nop>
nmap <Right>	<Nop>

imap <Up>			<Nop>
imap <Down>		<Nop>
imap <Left>		<Nop>
imap <Right>	<Nop>

" Other key bindings
noremap		<C-x>			:bp<Bar>bd #<CR>
noremap		<Tab>			>>
noremap		<S-Tab>		<<
vnoremap	<Tab>			>><Esc>gv
vnoremap	<S-Tab>		<<<Esc>gv

