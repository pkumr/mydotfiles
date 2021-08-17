"set guifont=Menlo\ Regular:h15\ For\ Powerline

set clipboard=unnamed
set backspace=2

syntax on

set encoding=utf-8

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
    set guifont=Menlo\ Regular:h12 For\ Powerline
    " set guifont=Meslo\ LG\ S\ Regular:h15 For\ Powerline
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
Plug 'tpope/vim-fugitive'
Plug 'bling/vim-bufferline'
"C++ Plugin
Plug 'bfrg/vim-cpp-modern'

"Color Schemes
Plug 'flazz/vim-colorschemes'
Plug 'altercation/vim-colors-solarized'
Plug 'powerline/powerline-fonts'
"On Demand Loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

call plug#end()
"colorscheme blue
"let g:airline_theme='kolor'
"colorscheme papercolor
"colorscheme gruvbox
colorscheme solarized
"set background=dark
let g:airline_powerline_fonts=1

let g:airline#extensions#wordcount#enabled=1

"let g:Powerline_symbols='unicode'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

  " unicode symbols
 let g:airline_left_sep = '»'
 let g:airline_left_sep = '▶'
 let g:airline_right_sep = '«'
 let g:airline_right_sep = '◀'
 let g:airline_symbols.crypt = '🔒'
 let g:airline_symbols.linenr = '☰'
 let g:airline_symbols.linenr = '␊'
 let g:airline_symbols.linenr = '␤'
 let g:airline_symbols.linenr = '¶'
 let g:airline_symbols.maxlinenr = ''
 let g:airline_symbols.maxlinenr = '㏑'
 let g:airline_symbols.branch = '⎇'
 let g:airline_symbols.paste = 'ρ'
 let g:airline_symbols.paste = 'Þ'
 let g:airline_symbols.paste = '∥'
 let g:airline_symbols.spell = 'Ꞩ'
 let g:airline_symbols.notexists = 'Ɇ'
 let g:airline_symbols.whitespace = 'Ξ'

" let g:airline_left_sep = '⮁'

  " powerline symbols
  "let g:airline_left_sep = ''
  "let g:airline_left_alt_sep = ''
  "let g:airline_right_sep = ''
  "let g:airline_right_alt_sep = ''
  "let g:airline_symbols.branch = ''
  "let g:airline_symbols.readonly = ''
  "let g:airline_symbols.linenr = '☰'
  "let g:airline_symbols.maxlinenr = ''
  "let g:airline_symbols.dirty='⚡'

  " old vim-powerline symbols
  "let g:airline_left_sep = '⮀'
  "let g:airline_left_alt_sep = '⮁'
  "let g:airline_right_sep = '⮂'
  "let g:airline_right_alt_sep = '⮃'
  "let g:airline_symbols.branch = '⭠'
  "let g:airline_symbols.readonly = '⭤'
 " let g:airline_symbols.linenr = '⭡'
  autocmd filetype cpp nnoremap <F5> :w <bar> !g++ -std=c++2a -O2 -Wall % -o %:r  && ./%:r <CR>
