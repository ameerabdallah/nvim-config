-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use {
        "nvim-telescope/telescope-file-browser.nvim",
        requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim", 'nvim-tree/nvim-web-devicons' }
    }
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.3',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    -- Using Packer
    use 'navarasu/onedark.nvim'
    vim.cmd('lua ColorMyPencils()')
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            --- Uncomment these if you want to manage LSP servers from neovim
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'L3MON4D3/LuaSnip' },
        }
    }
    use 'onsails/lspkind.nvim'
    use 'hrsh7th/nvim-cmp'
    use('github/copilot.vim')
    use('ThePrimeagen/vim-be-good')
    use('lambdalisue/suda.vim')

    use('lewis6991/gitsigns.nvim')

    use('unblevable/quick-scope')

    -- Significant speedup for Telescope
    use { 'nvim-telescope/telescope-fzf-native.nvim', run =
    'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }

    use { 'hiphish/rainbow-delimiters.nvim' }
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    use { 'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons' }
    use 'karb94/neoscroll.nvim'
    use 'NvChad/nvim-colorizer.lua'
    use 'prichrd/netrw.nvim'
    use 'windwp/nvim-ts-autotag'
end)
