set number
set noshowmode
set tabstop=4
set expandtab
set shiftwidth=4
set encoding=utf-8
set fileencodings=utf-8,gbk,gb2312


call plug#begin()
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Plug 'preservim/nerdtree'
    Plug 'sonph/onehalf', { 'rtp': 'vim'  }
    Plug 'kyazdani42/nvim-tree.lua'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'mhinz/vim-startify'
    Plug 'jiangmiao/auto-pairs'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'octol/vim-cpp-enhanced-highlight'
call plug#end()

colorscheme onehalfdark

inoremap jj <Esc>
nnoremap <Esc> ZZ
nnoremap <C-t> <C-w>s<C-w>j:terminal<CR>i
tnoremap <Esc> <C-\><C-n>
nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <C-f> :NvimTreeFindFile<CR>
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

let g:airline_theme='seoul256'
let g:startify_custom_header = startify#pad(split(system('figlet -w 100 ZKVIM'), '\n'))
