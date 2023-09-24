
syntax on
set incsearch
set wildmenu
set wildmode=longest,full,full
set wildoptions=tagfile	
set relativenumber
set number
set smartcase
set hidden
set novisualbell
set undolevels=1000
set shortmess+=c
set mouse=a

let &t_SI = "\e[5 q"
let &t_EI = "\e[1 q"


" --- Mappings

let mapleader = " "

nnoremap <leader>d "_d
vnoremap <leader>d "_d

xnoremap <leader>p "_dP

nnoremap <leader>v :vsplit
nnoremap <leader>h :split

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><

vnoremap J :m '>+1<cr>gv=gv
vnoremap K :m '<-2<cr>gv=gv

"--- STATUS LINE

set statusline=
set statusline+=\ %M

"--- PLUGINS

call plug#begin()

call plug#end()

