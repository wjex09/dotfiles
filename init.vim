syntax on
set relativenumber
filetype detect
set number

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'jacoborus/tender.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'vimlab/split-term.vim'
Plug 'burntcarrot/punchy.vim'
Plug 'itchyny/lightline.vim' 
Plug 'nanotech/jellybeans.vim'
Plug 'cormacrelf/vim-colors-github'
Plug 'endel/vim-github-colorscheme' 
Plug 'fxn/vim-monochrome'
Plug 'jiangmiao/auto-pairs'
Plug 'flazz/vim-colorschemes'
Plug 'fcpg/vim-orbital'
Plug 'tomasiser/vim-code-dark'
call plug#end()

set termguicolors 
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
set splitright
set t_Co=256
colorscheme gruvbox
let g:gruvbox_contrast_dark="hard" 
syntax enable     
set bg=dark
"let g:molokai_original = 1 
"maintain folds between sessions
let g:lightline = { 'colorscheme': 'gruvbox' }
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview 
highlight Comment    ctermfg=green
highlight Identifier ctermfg=99AA00
set clipboard+=unnamedplus
set hlsearch
set mouse=a 
set tabstop=4 
set autoindent
set shiftwidth=4
set softtabstop=4
set smarttab 
set expandtab
set smartcase
set matchpairs={:},[:],<:>,':',":"
" Quicker window movement
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-h> <C-w><C-h>
nnoremap <C-l> <C-w><C-l>

noremap <C-y> "+y
vnoremap <C-y> "+y
nnoremap <C-p> "+gP
vnoremap <C-p> "+gP
set backspace=indent,eol,start
set cindent
set showcmd
set autowrite
set autoread
map <C-b> :<C-U>!g++ -O2 -DLOCAL -std=c++17 -Wall -Wextra -Dnp -static %:r.cpp -o %:r<CR>
autocmd FileType haskell setlocal shiftwidth=2 tabstop=2 expandtab

