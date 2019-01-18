set number
set tabstop=2
set expandtab
set clipboard+=unnamed
set backspace=indent,eol,start 

noremap ; :
noremap : ;

syntax on

" disable netrw
let g:loaded_netrw       = 1
let g:loaded_netrwPlugin = 1

" for markdown 
let g:table_mode_corner = '|'

" enable auto update ctags
let g:auto_ctags = 1

" encoding
set encoding=utf-8
set fileencodings=utf-8,euc-jp,sjis,cp932,iso-2022-jp

" NeoBundle
" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!
NeoBundle 'scrooloose/nerdtree' " file tree
NeoBundle 'suan/vim-instant-markdown' " preview markdown
NeoBundle 'dhruvasagar/vim-table-mode' " create table easily
NeoBundle 'rhysd/vim-syntax-christmas-tree' " christmas tree
NeoBundle 'soramugi/auto-ctags.vim' " auto update ctags
NeoBundle 'udalov/kotlin-vim' " kotlin syntax

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" autocmd VimEnter * execute 'NERDTree'