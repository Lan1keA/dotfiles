-- Global Variables --
vim.o.nu=true
vim.o.rnu=true
vim.o.noshowmode=true
vim.o.expandtab=false
vim.o.cursorline=true
vim.o.cursorcolumn=true
vim.o.tabstop=4
vim.o.shiftwidth=4
vim.o.encoding='UTF-8'
vim.o.fileencodings='UTF-8,GBK,GB2312'


-- Options --
vim.cmd([[ 
	colorscheme edge 
	set background=light
]])


-- Key Maps --
vim.api.nvim_set_keymap('n', '<Esc>', ':q<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-t>', '<C-w>s<C-w>j:terminal<CR>i', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-b>', ':NvimTreeCollapse<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-s>', ':NvimTreeFindFile<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-h>', ':CommentToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-i>', ':BufferLineCycleNext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-o>', ':BufferLineCyclePrev<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-f>', '<C-d>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-d>', '<C-u>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { noremap = true, silent = true })
vim.cmd([[
	inoremap <silent><expr> <C-j> coc#pum#visible() ? coc#pum#next(1) : "\<C-j>"
	inoremap <silent><expr> <C-k> coc#pum#visible() ? coc#pum#prev(1) : "\<C-k>"
	inoremap <silent><expr> <down> coc#pum#visible() ? coc#pum#next(0) : "\<down>"
	inoremap <silent><expr> <up> coc#pum#visible() ? coc#pum#prev(0) : "\<up>"
	inoremap <expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<CR>"
]])


-- packer.nvim Bootstrap --
local packer_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(packer_path)) > 0 then
	packer_bootstrap = vim.fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', packer_path})
end


--  Neovim Plugins --
return require('packer').startup(function() 

	use 'wbthomason/packer.nvim'

	-- Themes --
	use 'sainnhe/edge'

	-- Icons --
	use 'kyazdani42/nvim-web-devicons'

	-- Lua Airline --
	use 'nvim-lualine/lualine.nvim'
	require('lualine').setup {
		options = { theme = 'auto',
			section_separators = { left = ' ', right = ' '},
			component_separators = { left = ' ', right = ' ' }
		}
	}

	-- Dashboard --
	use {
		'goolord/alpha-nvim',
		config = function ()
			require'alpha'.setup(require'alpha.themes.startify'.config)
		end
	}
	
	-- Edit Enhance --
	use 'jiangmiao/auto-pairs'

	-- LSP --
	use {'neoclide/coc.nvim', branch = 'release'}

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
	require("bufferline").setup{
		options = {
			separator_style = "padded_slant",
			offsets = {{
				filetype = "NvimTree",
				text = "[ TREE ]",
				highlight = "Directory",
				text_align = "left"
			}}
		}
	}

	-- File Explorer --
	use { 'kyazdani42/nvim-tree.lua', tag = 'nightly' }
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
		base = 'right'
	})

	-- Advance Menu --
	use {
		'gelguy/wilder.nvim',
		config = function()
			local wilder = require('wilder')
			wilder.setup({modes = {':', '/', '?'}})
			wilder.set_option('renderer', wilder.popupmenu_renderer({
				pumblend = 20,
			}))
		end,
	}

	-- Highlight Words --
	use { 'RRethy/vim-illuminate' }

end)
