set ai cindent
set ts=4 sw=4
set hlsearch
set incsearch
set smartcase
set cursorline
set number
set title
set ruler
syntax enable

"escape
inoremap jk <ESC>
inoremap kj <ESC>

" copy system clipboard
nnoremap yy yy"+yy
vnoremap y ygv"+y
noremap gp "+p

" scroll
nnoremap J 5j
nnoremap K 5k

" color scheme
colo southernlights

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'frazrepo/vim-rainbow'
Plug 'amadeus/vim-evokai'

" Initialize plugin system
" :source %
" :PlugInstall
call plug#end()

" shortcuts
let mapleader = "\<Space>"

" splits
nnoremap <Leader>w :w<CR>
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" nerdtree
" nmap <F6> :NERDTreeToggle<CR>
nnoremap <C-F> :NERDTreeFind<CR>
nnoremap <Leader>n :NERDTreeToggle<CR>

" fzf
" for finding files with name, <Leader>f
" for finding files with content, :Ag 
nnoremap <Leader>f :Files<CR>
