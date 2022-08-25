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
    use 'adoy/vim-php-refactoring-toolbox'
    use 'folke/tokyonight.nvim'
    use { 'hrsh7th/nvim-cmp',
        requires = {
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'hrsh7th/cmp-cmdline' },
            { 'hrsh7th/cmp-vsnip' },
            { 'hrsh7th/vim-vsnip' },
        },
    }
    use 'jwalton512/vim-blade'
    use 'mattn/efm-langserver'
    use 'neovim/nvim-lspconfig'
    use {
        'noahfrederick/vim-laravel',
        requires = {
            { 'noahfrederick/vim-composer' },
            { 'tpope/vim-projectionist' },
            { 'tpope/vim-dispatch' },
        }
    }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    }
--  use 'preservim/nerdtree'
    use 'preservim/tagbar'
    use 'StanAngeloff/php.vim'
    use 'stephpy/vim-php-cs-fixer'
    use 'tpope/vim-commentary'
    use 'tpope/vim-fugitive'
    use 'tpope/vim-surround'
end)
