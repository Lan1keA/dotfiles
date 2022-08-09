return require('packer').startup(function() use 'wbthomason/packer.nvim'

    -- Indent Indicator
    use "lukas-reineke/indent-blankline.nvim"
    vim.opt.list = true
    vim.opt.listchars:append "space:⋅"
    require("indent_blankline").setup {
        show_end_of_line = true,
        space_char_blankline = " ",
    }

    -- Comment Shortcut
    use "terrortylor/nvim-comment"
    require('nvim_comment').setup()

    -- Git Status
    use {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
        end
    }

    -- Tab Bar
    use {'akinsho/bufferline.nvim', tag = "v2.*"}
    vim.opt.termguicolors = true
    require("bufferline").setup{}

    -- File Explorer
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

    -- Scroll Bar
    use { 'dstein64/nvim-scrollview' }
    require('scrollview').setup({
        excluded_filetypes = {'nerdtree'},
        current_only = true,
        winblend = 75,
        base = 'buffer',
        column = 80
    })

    -- Advance Menu
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

    -- Highlight Words
    use { 'RRethy/vim-illuminate' }

end)
