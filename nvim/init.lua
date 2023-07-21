-- lazy.nvim Bootstrap --
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Plugins --
require("lazy").setup({
	{ "sainnhe/edge" },
	{
		"LazyVim/LazyVim",
		import = "lazyvim.plugins",
		opts = {
			colorscheme = "edge",
		},
	},
})

-- Neovim Options --
vim.o.nu = true
vim.o.rnu = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.cursorline = true
vim.o.cursorcolumn = true
vim.o.termguicolors = true
vim.o.encoding = "UTF-8"
vim.o.background = "light"
vim.o.clipboard = "unnamedplus"

-- Key Maps --
vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = true, silent = true })
