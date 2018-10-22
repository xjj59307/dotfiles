" vim: set foldmarker={{{,}}} foldlevel=0 foldmethod=marker spell:

call plug#begin('~/.vim/plugged')
Plug 'tomtom/tcomment_vim'
Plug 'easymotion/vim-easymotion'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'
Plug 'alvan/vim-closetag'
Plug 'Townk/vim-autoclose'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'mhinz/vim-startify'
Plug 'joshdick/onedark.vim'
call plug#end()

" general {{{
" sets how many lines of history vim has to remember
set history=700
" enable filetype plugins
filetype plugin on
filetype indent on
" refresh automatically when modified externally
set autoread
" with a map leader it's possible to do extra key combinations
let mapleader=","
let g:mapleader=","
" fast saving
nmap <leader>w :w!<cr>
set clipboard=unnamed
" }}}

" interface {{{
" set 7 lines to the cursor - when moving vertically using j/k
set so=10
set ruler
" show matching brackets when text indicator is over them
set showmatch
" highlight search results
set hlsearch
" ignore case when searching
set ignorecase
set smartcase
" makes search act like search in modern browsers
set incsearch
" disable highlight
map <silent> <leader><cr> :noh<cr>
" for regular expression turn magic on
set magic
" }}}

" appearance {{{
syntax on
colorscheme onedark
" Enable true color inside tmux
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set encoding=utf8
set number
set laststatus=2
" }}}

" format {{{
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent
" make the backspace work like in most other programs
set backspace=indent,eol,start
" }}}

" vim-closetag {{{
let g:closetag_filenames = '*.html,*.xhtml,*.xml'
" }}}

" vim-indent-guides {{{
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
" }}}

