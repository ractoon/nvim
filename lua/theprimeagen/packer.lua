-- This file can be loaded by calling `lua require('plugins')` from your init.vim
vim.cmd [[packadd packer.nvim]]

local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
end

return require('packer').startup(function()
    use {
        'wbthomason/packer.nvim',
      opt = false
    }
    use 'folke/tokyonight.nvim'
    use 'mattn/efm-langserver'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.x',
       requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    }
    use 'tpope/vim-fugitive'
    use 'tpope/vim-surround'
    use 'vim-airline/vim-airline'
end)
