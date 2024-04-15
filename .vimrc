
syntax on
" indent
set tabstop=4 softtabstop =4 shiftwidth=4
set expandtab
set smartindent
set autoindent
" search
set incsearch
set smartcase
set ignorecase
set hlsearch
" wildmenu
set wildmenu
set wildmode=longest,full,full
set wildoptions=tagfile	
" number
set number
set relativenumber
" indent break
set breakindent
set showbreak=-->
" time
set timeoutlen=300
set updatetime=300

set clipboard=unnamedplus
set mouse=a
set hidden
set novisualbell

" set completeopt
" set termguicolors
" set shortmess+=c


" cursor	           	
let &t_SI = "\e[5 q"
let &t_EI = "\e[1 q"


let mapleader = " "

nnoremap <leader>d "_d
vnoremap <leader>d "_d

xnoremap <leader>p "_dP

vnoremap J :m '>+1<cr>gv=gv
vnoremap K :m '<-2<cr>gv=gv

inoremap ;; <C-o>A;

nnoremap <CR> :noh<CR><CR>

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><



" status line
set statusline=
set statusline+=\ %M


