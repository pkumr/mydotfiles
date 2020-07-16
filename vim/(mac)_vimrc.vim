"set guifont=Menlo\ Regular:h15

set clipboard=unnamed
set backspace=2

syntax on

set guicursor=
set noshowmatch
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8


if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

"set number			"line numbers
"set showmatch		"hightlight matching braces

"set autoindent		"use indentation of previous line
"set smartindent		"use intelligent indentation for C

"set tabstop=4 		"tab width is 4 spaces
"set shiftwidth=4 	"indent with 4 spaces
"set expandtab    	"expand tabs to spaces

"set laststatus=2
"set statusline+=%F

"colorscheme peachpuff

set t_Co=256
"syntax on

call plug#begin('~/.vim/plugged')
"Airline Theme PlugInstall
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'

"C++ Plugin
Plug 'bfrg/vim-cpp-modern'

"Color Schemes
Plug 'flazz/vim-colorschemes'
Plug 'altercation/vim-colors-solarized'

"On Demand Loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

call plug#end()
"colorscheme blue
"let g:airline_theme='kolor'
"colorscheme gruvbox
"colorscheme solarized
colorscheme papercolor
set background=dark
