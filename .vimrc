set number
set clipboard+=unnamed
set backspace=indent,eol,start
set hlsearch

set expandtab
set tabstop=2
set softtabstop=0
set shiftwidth=2

set tags=tags

if isdirectory(expand('~/.vim/bundle/vim-fugitive'))
  " set statusline=%f[LineLengthWithoutIndent=%{strwidth(substitute(getline('.'),'^\\s*','','g'))}]%=%{fugitive#statusline()}
  set statusline=%f[LineLength=%{virtcol('$')-1}]%=%{fugitive#statusline()}
endif

set laststatus=2

noremap ; :
noremap : ;

set list
set listchars=tab:>-,trail:-,extends:>,precedes:<,nbsp:%

syntax on
" remove spaces at end of line
autocmd BufWritePre * :%s/\s\+$//ge

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

" vim-gitgutter settings
set updatetime=250
let g:gitgutter_highlight_lines = 0

" previm settings
augroup PrevimSettings
    autocmd!
    autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
augroup END

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3

colorscheme darkblue

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
NeoBundle 'vim-ruby/vim-ruby' " file path support for ruby
NeoBundle 'tpope/vim-rails' " :Ctags command to renew tags
NeoBundle 'udalov/kotlin-vim' " kotlin syntax
NeoBundle 'tomtom/tcomment_vim' " toggle comment
NeoBundle 'apple-swift', {'type': 'nosync', 'base': '~/.vim/bundle/manual'} " Swift syntax
NeoBundle 'tpope/vim-fugitive' " Git
NeoBundle 'airblade/vim-gitgutter' " show git diff
NeoBundle 'kazuph/previm', 'feature/add-plantuml-plugin' " plantUML & mermaid preview
NeoBundle 'tyru/open-browser.vim' " for previm
NeoBundle 'tpope/vim-endwise' " wisely add 'end' in ruby
NeoBundle 'Shougo/neocomplcache.vim' " keyword completion system
NeoBundle 'Shougo/neocomplcache-rsense.vim' "ruby keyword completion system
NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make',
\     'linux' : 'make',
\     'unix' : 'gmake',
\    },
\ } " for neocomplcache-rsense
NeoBundle 'Quramy/tsuquyomi' " for TypeScript
NeoBundle 'leafgarland/typescript-vim' " TypeScript code highlight
NeoBundle 'vim-scripts/matchit.zip' " jump cursor

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" autocmd VimEnter * execute 'NERDTree'
