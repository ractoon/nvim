-- This file can be loaded by calling `lua require('plugins')` from your init.vim
vim.cmd [[packadd packer.nvim]]

local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd [[packadd packer.nvim]]
end

return require('packer').startup(function()
  -- Packer can manage itself
  use {
      'wbthomason/packer.nvim',
      opt = false
  }
  use 'folke/tokyonight.nvim'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
end)
