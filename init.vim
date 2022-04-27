set number
set noshowmode
set tabstop=4
set expandtab
set shiftwidth=4
set encoding=utf-8
set fileencodings=utf-8,gbk,gb2312

inoremap jj <Esc>
nnoremap <Esc> ZZ
nnoremap <C-t> <C-w>s<C-w>j:terminal<CR>i
tnoremap <Esc> <C-\><C-n>

call plug#begin()
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'preservim/nerdtree'
    " Plug 'junegunn/seoul256.vim'
    Plug 'sonph/onehalf', { 'rtp': 'vim'  }
    Plug 'mhinz/vim-startify'
    Plug 'jiangmiao/auto-pairs'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'octol/vim-cpp-enhanced-highlight'
    " Plug 'luochen1990/rainbow'
call plug#end()

" let g:seoul256_background = 233
" colorscheme seoul256
colorscheme onehalflight

nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

let g:startify_custom_header = startify#pad(split(system('figlet -w 100 ZKVIM'), '\n'))
let g:airline_theme='seoul256'
let g:rainbow_active = 1
