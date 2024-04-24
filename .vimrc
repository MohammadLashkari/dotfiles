
set viminfo+=n~/.vim/viminfo

syntax on

set number
set relativenumber

set tabstop=4 softtabstop =4 shiftwidth=4
set expandtab
set smartindent
set autoindent

set incsearch
set smartcase
set ignorecase
set hlsearch

set wildmenu
set wildmode=longest,full,full
set wildoptions=tagfile	

set completeopt=menuone,noselect

set breakindent
set showbreak=-->

set timeoutlen=300
set updatetime=300

set clipboard^=unnamed,unnamedplus
set mouse=a
set hidden
set novisualbell
set noshowmode


" set termguicolors
" set shortmess+=c

" cursor	           	
let &t_SI = "\e[5 q"
let &t_EI = "\e[1 q"


let mapleader = " "

nnoremap <leader>d "_d
vnoremap <leader>d "_d

vnoremap <leader>p "_dP

vnoremap J :m '>+1<cr>gv=gv
vnoremap K :m '<-2<cr>gv=gv

nnoremap <leader>s :%s/<c-r><c-w>//gI<left><left><left>

nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>

nnoremap <c-d> <c-d>zz
nnoremap <c-u> <c-u>zz

inoremap ;; <c-o>A;

nnoremap <cr> :noh<cr><cr>

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" status line
set statusline=
set statusline+=\ %M

