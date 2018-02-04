set ts=4
set sw=4
set expandtab

set sts=4
set backspace=indent,eol,start

set number

set showcmd
set cursorline

set wildmenu

set ai
set ruler
syntax on

au BufNewFile,BufReadPre *.tex set tw=80
au BufNewFile,BufReadPre *.tex set nonumber

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/mwt/.vim/dein//repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/mwt/.vim/dein/')
  call dein#begin('/Users/mwt/.vim/dein/')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/mwt/.vim/dein//repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  " Plugins via dein
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('scrooloose/syntastic')
  " You can specify revision/branch/tag.
  " call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

" Required:
filetype plugin indent on
syntax enable


"End dein Scripts-------------------------
