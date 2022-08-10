-- Global Variables --
vim.o.number=true
vim.o.noshowmode=true
vim.o.tabstop=4
vim.o.expandtab=true
vim.o.shiftwidth=4
vim.o.cursorline=true
vim.o.cursorcolumn=true
vim.o.encoding='UTF-8'
vim.o.fileencodings='UTF-8,GBK,GB2312'

-- Key Maps --
vim.api.nvim_set_keymap('n', '<Esc>', 'ZZ', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-t>', '<C-w>s<C-w>j:terminal<CR>i', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-b>', ':NvimTreeCollapse<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-f>', ':NvimTreeFindFile<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-m>', ':CommentToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { noremap = true, silent = true })
--vim.api.nvim_set_keymap('i', '<Tab>', 'pumvisible() ? "\<C-n>" : "\<Tab>"', { noremap = true, expr = true })
--vim.api.nvim_set_keymap('i', '<S-Tab>', 'pumvisible() ? "\<C-p>" : "\<S-Tab>"', { noremap = true, expr = true })
--vim.api.nvim_set_keymap('t', '<Esc>', '<C-\><C-n>', { noremap = true, silent = true })

vim.cmd([[
colorscheme edge
"highlight Normal ctermbg=black
let g:airline_theme='edge'
"let g:airline_powerline_fonts = 1
let g:startify_custom_header = startify#pad(split(system('figlet -w 100 ZKVIM'), '\n'))
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
tnoremap <Esc> <C-\><C-n>
]])

-- packer.nvim Bootstrap --
local packer_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(packer_path)) > 0 then
  packer_bootstrap = vim.fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

--  Neovim Plugins --
return require('packer').startup(function() 
    use 'wbthomason/packer.nvim'

    use 'sainnhe/edge'
    use 'mhinz/vim-startify'
    use 'jiangmiao/auto-pairs'
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'
    use 'neoclide/coc.nvim' --, {'branch': 'release'}

    -- Indent Indicator --
    use "lukas-reineke/indent-blankline.nvim"
    vim.opt.list = true
    vim.opt.listchars:append "space:⋅"
    require("indent_blankline").setup {
        show_end_of_line = true,
        space_char_blankline = " ",
    }

    -- Comment Shortcut --
    use "terrortylor/nvim-comment"
    require('nvim_comment').setup()

    -- Git Status --
    use {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
        end
    }

    -- Tab Bar --
    use {'akinsho/bufferline.nvim', tag = "v2.*"}
    vim.opt.termguicolors = true
    require("bufferline").setup{}

    -- File Explorer --
    use {
        'kyazdani42/nvim-tree.lua',
        requires = { 'kyazdani42/nvim-web-devicons' },
        tag = 'nightly'
    }
    require("nvim-tree").setup({
        sort_by = "case_sensitive",
        view = {
            adaptive_size = true,
            mappings = {
            list = {
                { key = "u", action = "dir_up" },
            },
        },
     },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = true,
        },
    })

    -- Scroll Bar --
    use { 'dstein64/nvim-scrollview' }
    require('scrollview').setup({
        excluded_filetypes = {'nerdtree'},
        current_only = true,
        winblend = 75,
        base = 'buffer',
        column = 80
    })

    -- Advance Menu --
    use {
        'gelguy/wilder.nvim',
        config = function()
            local wilder = require('wilder')
            wilder.setup({modes = {':', '/', '?'}})
            wilder.set_option('renderer', wilder.popupmenu_renderer({
                highlighter = wilder.basic_highlighter(),
                left = {' ', wilder.popupmenu_devicons()},
                right = {' ', wilder.popupmenu_scrollbar()},
            }))
        end,
    }

    -- Highlight Words --
    use { 'RRethy/vim-illuminate' }

end)
