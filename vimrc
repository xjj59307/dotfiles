" vim: set foldmarker={{{,}}} foldlevel=0 foldmethod=marker spell:

call plug#begin('~/.vim/plugged')
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'joshdick/onedark.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
Plug 'mhinz/vim-startify'
Plug 'vim-ruby/vim-ruby'
Plug 'tomtom/tcomment_vim'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'
Plug 'alvan/vim-closetag'
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
set clipboard=unnamedplus
" }}}

" interface {{{
" set 7 lines to the cursor - when moving vertically using j/k
set so=10
set colorcolumn=100
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
set termguicolors
colorscheme onedark
set guifont=Go\ Mono:h13
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
" }}}

" nerdtree {{{
nnoremap <silent> <Leader>n :NERDTreeToggle<CR>
" }}}

" ale {{{
let g:ale_lint_on_text_changed = 'never'
" }}}

" fzf {{{
nnoremap <silent> <Leader>f :Files<CR>
nnoremap <silent> <Leader>b :Buffers<CR>
" }}}

" vim-closetag {{{
let g:closetag_filenames = '*.html,*.xhtml,*.xml'
" }}}
