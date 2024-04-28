
--vim.cmd("set expandtab")
vim.cmd("set mouse=v")
--vim.cmd("set ")
--vim.cmd("set ")h
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=2")
vim.cmd("set number")
vim.cmd("set shiftwidth=2")
--vim.cmd("set ")
vim.cmd("set mouse=a")
vim.cmd("set cursorline") 
----------------------------
--Plugins (Lazyvim)
--
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

local plugins = {
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
	{'nvim-telescope/telescope.nvim', tag = '0.1.6', dependencies = { 'nvim-lua/plenary.nvim' }
	
	}
}
local opts = {}
---------------------
----Telescope
--local builtin = require('telescope.builtin')
--local builtin = require('telescope.builtin')
--vim.keymap.set('n', '<C-p>', builtin.find_files, {})
---------------------
require("lazy").setup(plugins, opts)
--------------------------------
--
---------
------color/V�ri
require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"
--------
-----------
--Tree-sitter
local config = require("nvim-treesitter.configs")
config.setup({
  ensure_installed = {"lua", "kotlin", "c", "javascript", "php", "html", "css"},
  highlight = { enable = true },
  indent = { enable = true },
})





























