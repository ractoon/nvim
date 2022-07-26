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
    use 'alvan/vim-php-manual'
    use {
        'ahmedkhalf/project.nvim',
        config = function()
            require('project_nvim').setup {
                -- Manual mode doesn't automatically change your root directory, so you have
                -- the option to manually do so using `:ProjectRoot` command.
                manual_mode = false,

                -- When set to false, you will get a message when project.nvim changes your directory.
                silent_chdir = true,
            }
        end
    }
    use 'arnaud-lb/vim-php-namespace'
    use 'dense-analysis/ale'
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
    use {
        'jinh0/eyeliner.nvim',
        config = function()
            require('eyeliner').setup {
                highlight_on_key = true
            }
        end
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
    use 'nvim-treesitter/nvim-treesitter-context'
    --  use 'preservim/nerdtree'
    use 'preservim/tagbar'
    use 'StanAngeloff/php.vim'
    use 'stephpy/vim-php-cs-fixer'
    use 'tpope/vim-commentary'
    use 'tpope/vim-fugitive'
    use 'tpope/vim-surround'
end)
