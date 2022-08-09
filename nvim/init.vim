set number
set noshowmode
set tabstop=4
set expandtab
set shiftwidth=4
set cursorline
set cursorcolumn
set encoding=utf-8
set fileencodings=utf-8,gbk,gb2312

nnoremap <Esc> ZZ
nnoremap <C-t> <C-w>s<C-w>j:terminal<CR>i
nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <C-b> :NvimTreeCollapse<CR>
nnoremap <C-f> :NvimTreeFindFile<CR>
nnoremap <C-m> :CommentToggle<CR>
inoremap jj <Esc>
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
tnoremap <Esc> <C-\><C-n>

call plug#begin()
    Plug 'sainnhe/edge'
    Plug 'mhinz/vim-startify'
    Plug 'jiangmiao/auto-pairs'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

lua require('plugins')
lua require('nvim_tree')

colorscheme edge
"highlight Normal ctermbg=black

let g:airline_theme='edge'
"let g:airline_powerline_fonts = 1
let g:startify_custom_header = startify#pad(split(system('figlet -w 100 ZKVIM'), '\n'))
