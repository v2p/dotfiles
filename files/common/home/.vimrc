scriptencoding utf-8
set encoding=utf-8

set nocompatible " be iMproved
filetype off " required!

let vundleExists=0
let vundleReadme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundleReadme)
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
    let vundleExists=1
endif

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required:
Bundle 'gmarik/vundle' 	       
" original repos on github:
Bundle 'nanotech/jellybeans.vim'
Bundle 'bling/vim-airline'
Bundle 'v2p/vim-plugin-puppet'


if vundleExists == 1
    :BundleInstall
endif


filetype plugin indent on " required!

" color scheme setup:
syntax enable
set bg=dark
colorscheme jellybeans

set ai " auto indent
set nu " line numbers
set listchars=trail:·,precedes:«,extends:»,eol:↲,tab:▸\ " select which invisible characters to show
set list " make invisible characters visible
set binary noeol " do not put a CR at the end of file
set showmatch " show matching brackets
set laststatus=2 " last line with status is 2 line deep
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯЖ;ABCDEFGHIJKLMNOPQRSTUVWXYZ:,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
set ts=4 sts=4 sw=4 expandtab " spaces/tabs config

let g:airline_powerline_fonts = 1 " powerline-style for status bar
set guifont=Source\ Code\ Pro\ for\ Powerline\ Medium\ 10 " cool font :)
