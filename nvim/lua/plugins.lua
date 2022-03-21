-- This file can be loaded by calling `lua require('plugins')` from your init.vim


-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init {
	display = {
		open_fn = function()
			return require("packer.util").float { border = "rounded" }
		end,
	},
}

return require('packer').startup(function()
	-- Packer can manage itself
	-- use 'wbthomason/packer.nvim'
	use 'jalvesaq/Nvim-R'
	use 'lervag/vimtex'

	-- Colorschemes 
	use 'shaunsingh/nord.nvim'
	use 'Mofiqul/dracula.nvim'
	use 'shaunsingh/moonlight.nvim'
	use 'tanvirtin/monokai.nvim'
	
	-- LSP

	-- Treesitter
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ":TSUpdate",
	}
	-- Automatically set up your configuration after cloning packer .nvim
	-- Put this at the end after all plugins 
	if PACKER_BOOTSTRAP then 
		require("packer").sync()
	end
end)
