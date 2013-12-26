set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Install bundle
Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'majutsushi/tagbar'
Bundle 'Align'
Bundle 'surround.vim'
Bundle 'bling/vim-airline'
Bundle 'tpope/vim-fugitive'

" Indent
filetype plugin indent on

" Syntax highlighting
set syntax=on

" Line numbering
set number

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" Syntax
syntax enable

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
set encoding=utf-8

" Remap Escape Key
imap jk <ESC>

" Remap Tagbars Toggle
nmap <leader>y :TagbarToggle

" CtrlP ignore

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/cache/*

let g:ctrlp_custom_ignore = {
      \ 'dir':  '\v[\/]\.(git|hg|svn)$',
      \ 'file': '\v\.(exe|so|dll)$',
   \ }

" Always display tab line
set showtabline=2

" Always display status line
set laststatus=2

" set guifony
set guifont=Menlo\ Regular\ for\ Powerline

" vim-airline config
"let g:airline_powerline_fonts=1

"powerline symbols
if !exists('g:airline_symbols')
   let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

# Tab navigation
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>


