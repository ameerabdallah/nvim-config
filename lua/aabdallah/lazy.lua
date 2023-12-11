local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
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

require('lazy').setup({
    {
        "nvim-telescope/telescope-file-browser.nvim",
        dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim", 'nvim-tree/nvim-web-devicons' }
    },
    {
        'nvim-telescope/telescope.nvim',
        version = '0.1.3',
        dependencies = { { 'nvim-lua/plenary.nvim' } }
    },
    { 'navarasu/onedark.nvim' },
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate'
    },
    'mbbill/undotree',
    'tpope/vim-fugitive',
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        dependencies = {
            --- Uncomment these if you want to manage LSP servers from neovim
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'L3MON4D3/LuaSnip' },
        }
    },
    'onsails/lspkind.nvim',
    'hrsh7th/nvim-cmp',
    {
        'github/copilot.vim',
        enabled = function()
            local disable_copilot = vim.env.DISABLE_COPILOT or false
            if disable_copilot == nil then
                return true
            else
                return not disable_copilot
            end
        end
    },
    'ThePrimeagen/vim-be-good',
    'lambdalisue/suda.vim',
    'lewis6991/gitsigns.nvim',
    {'unblevable/quick-scope', init = function()
        vim.g.qs_highlight_on_keys = {'f', 'F', 't', 'T'}

        -- remaps
        vim.keymap.set("n", "<leader>qs", "<plug>(QuickScopeToggle)")
        vim.keymap.set("x", "<leader>qs", "<plug>(QuickScopeToggle)")
    end},

    -- Significant speedup for Telescope
    {
        'nvim-telescope/telescope-fzf-native.nvim',
        build =
        'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
    },

    { 'hiphish/rainbow-delimiters.nvim' },
    {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    },
    {
        'akinsho/bufferline.nvim',
        version = "*",
        dependencies =
        'nvim-tree/nvim-web-devicons'
    },
    'karb94/neoscroll.nvim',
    'NvChad/nvim-colorizer.lua',
    'prichrd/netrw.nvim',
    'windwp/nvim-ts-autotag',
    { "ellisonleao/glow.nvim", config = function() require("glow").setup() end },
})
