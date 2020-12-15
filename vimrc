set number
set ruler
set autoindent
set cursorline
set tabstop=4
set expandtab
set smartindent
set shiftwidth=4
set softtabstop=4
set backspace=indent,eol,start



" Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Raimondi/delimitMate'

call vundle#end()
filetype plugin indent on



" NERDTree map
map <C-\> :NERDTreeToggle<CR>
let g:NERDTreeNodeDelimiter = "\u00a0"



" vim-colors-solarized
syntax enable

set background=dark

let g:solarized_termcolors=256
let g:solarized_termtrans=1

colorscheme solarized
