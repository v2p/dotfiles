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
Bundle 'morhetz/gruvbox'
Bundle 'bling/vim-airline'
Bundle 'v2p/vim-plugin-puppet'


if vundleExists == 1
    :BundleInstall
endif


filetype plugin indent on " required!

" color scheme setup:
syntax enable
set bg=dark
colorscheme gruvbox

set ai " auto indent
set nu " line numbers
set ts=4 " tabs = 4 spaces
set binary noeol " do not put a CR at the end of file
set showmatch " show matching brackets
set laststatus=2 " last line with status is 2 line deep
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯЖ;ABCDEFGHIJKLMNOPQRSTUVWXYZ:,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
