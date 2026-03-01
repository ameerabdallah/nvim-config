-- Throw in the plugins that don't require any configuration here
return {
    -- the colorscheme should be available when starting Neovim
    {
        "folke/tokyonight.nvim",
        lazy = false,    -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
        transparent = true,
        styles = {
            sidebars = "transparent",
            floats = "transparent",
        },
        config = function()
            vim.opt.termguicolors = true
            -- load the colorscheme here
            vim.cmd([[colorscheme tokyonight-night]])
        end,
    },
    {
        'numToStr/Comment.nvim',
        opts = {
            -- add any options here
        },
        lazy = false
    },
    'hrsh7th/nvim-cmp',
    'ThePrimeagen/vim-be-good',
    'lambdalisue/suda.vim',
    'lewis6991/gitsigns.nvim',
    {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    },
    { 'isobit/vim-caddyfile' }
}
