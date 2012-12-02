" vim: set foldmarker={{{,}}} foldlevel=0 foldmethod=marker spell:

call pathogen#infect()
call pathogen#helptags()

" General {{{
set nocompatible
set history=700
" Enable filetype plugins
filetype plugin indent on
filetype plugin on
set autoread
let mapleader = ","
let g:mapleader = ","
" Fast saving
nmap <leader>w :w!<cr>
" Switch PWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>
" Disable beep and flash
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
" }}}

" Interface {{{
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7
" Always show current position
set ruler
" set cmdheight=2
" A buffer becomes hidden when it is abandoned
set hid
" Match and search
set showmatch
set hlsearch
set ignorecase
set smartcase
set incsearch
" Visual mode pressing * or # searches for the current selection
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>
" When you press <leader>r you can search and replace the selected text
vnoremap <silent> <leader>r :call VisualSelection('replace')<CR>
" Disable highlight
map <silent> <leader><cr> :noh<cr>
" Don't redraw while executing macros (good performance config)
set lazyredraw
" For regular expression turn magic on
set magic
" }}}

" Appearance {{{
syntax on
if has('gui_running')
    colorscheme molokai
    let g:molokai_original = 1
    let g:solarized_menu = 0
    set transparency=5
end
set guioptions=aAce
set lines=50 columns=100
set guifont=Monaco:h12
set t_Co=256
set encoding=utf8
set number
" }}}

" Format {{{
set tabstop=4
set expandtab
set smarttab
set autoindent
autocmd FileType c,cpp :set cindent
set shiftwidth=4
set softtabstop=4
set ts=4 sw=4 et
" }}}

" Minibufexpl {{{
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapCTabSwitchBufs = 1
" }}}

" Command-T {{{
nnoremap <silent> <Leader>t :CommandT<CR>
nnoremap <silent> <Leader>b :CommandTBuffer<CR>
set wildignore+=*.zip,*.png,*.jepg
" }}}

" EasyMotion {{{
" let g:EasyMotion_leader_key = '<Leader>'
" }}}

" Taglist {{{
let Tlist_Show_One_File = 1           
let Tlist_Exit_OnlyWindow = 1      
let Tlist_Use_Right_Window = 1    
" }}}

" SuperTab {{{
let g:SuperTabDefaultCompletionType = "context"
" autocmd FileType javascript,html :set dictionary=~/.vim/dict/javascript.dict
" }}}

" Indent-guides {{{
let g:indent_guides_enable_on_vim_startup = 0
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
" }}}

" Syntastic {{{
let g:JSLintHighlightErrorLine = 0
" }}}

" vim-javascript {{{
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"
" }}}

" Tagbar {{{
nmap <F8> :TagbarToggle<CR>
" }}}

" Helper functions {{{
function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction

function! VisualSelection(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction
" }}}
