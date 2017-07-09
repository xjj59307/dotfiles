" vim: set foldmarker={{{,}}} foldlevel=0 foldmethod=marker spell:

call pathogen#infect()

" General {{{
" Change vimrc with auto reload 
autocmd! bufwritepost .vimrc source %
set nocompatible
set history=700
" Enable filetype plugins
filetype plugin indent on
filetype plugin on
set autoread
let mapleader=","
let g:mapleader=","
" Switch PWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>
" Disable beep and flash
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
" }}}

" Interface {{{
" Set 7 lines to the cursor - when moving vertically using j/k
set so=10
" Show status line
set laststatus=2
set colorcolumn=80
" Match and search
set showmatch
set hlsearch
set ignorecase
set smartcase
set incsearch
" Disable highlight
map <silent> <leader><cr> :noh<cr>
" Don't redraw while executing macros (good performance config)
set lazyredraw
" For regular expression turn magic on
set magic
" }}}

" Appearance {{{
syntax on
set background=dark
colorscheme solarized
set transparency=5
set guioptions=aAce
set lines=80 columns=120
set guifont=Monaco\ for\ Powerline:h11
set t_Co=256
set encoding=utf8
set number
" }}}

" Format {{{
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smarttab
set autoindent
autocmd FileType c,cpp :set cindent
" }}}

" Nerdtree {{{
nnoremap <silent> <Leader>n :NERDTreeToggle<CR>
" }}}

" Command-T {{{
nnoremap <silent> <Leader>f :CommandT<CR>
nnoremap <silent> <Leader>b :CommandTBuffer<CR>
set wildignore+=*.zip,*.png,*.jepg,node_modules
" }}}

" vim-javascript {{{
let g:html_indent_inctags="html,body,head,tbody"
let g:html_indent_script1="inc"
let g:html_indent_style1="inc"
" }}}

" Syntastic {{{
let g:syntastic_mode_map={ 'mode': 'passive',
  \ 'active_filetypes': [],
  \ 'passive_filetypes': [] }
let g:syntastic_python_checkers=['pylint']
let g:syntastic_javascript_checkers=['jshint']
nnoremap <silent> <Leader>l :SyntasticToggleMode<CR>
" }}}

" Tagbar {{{
nnoremap <F9> :<CR>
nnoremap <silent> <Leader>t :TagbarToggle<CR>
" }}}

" vim-airline {{{
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#left_sep=' '
let g:airline#extensions#tabline#left_alt_sep='|'
let g:airline_powerline_fonts=1
let g:airline#extensions#whitespace#enabled=0
" }}}

" Unite {{{
let g:unite_enable_start_insert=1
let g:unite_source_history_yank_enable =1
nnoremap <silent> <Leader>o :Unite outline<CR>
" }}}

" vim-multiple-cursors {{{
let g:multi_cursor_next_key='<C-d>'
" }}}

" YouCompleteMe {{{
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_register_as_syntastic_checker=0
let g:ycm_autoclose_preview_window_after_completion=1
" }}}
