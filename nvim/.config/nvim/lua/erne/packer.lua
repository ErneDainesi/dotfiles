-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    -- Colorschemes
    use { "catppuccin/nvim", as = "catppuccin" }
    use "olimorris/onedarkpro.nvim"
    use "ellisonleao/gruvbox.nvim"
    use { 'rose-pine/neovim', as = 'rose-pine' }

    use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use 'ThePrimeagen/harpoon'
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional
            {'hrsh7th/cmp-cmdline'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {'rafamadriz/friendly-snippets'}, -- Optional
        }
    }
    use 'simrat39/rust-tools.nvim'
    use "lewis6991/gitsigns.nvim"
    use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} , tag = 'v3.4.0' }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use "lukas-reineke/indent-blankline.nvim"
    use 'mbbill/undotree'
end)
