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
    use{
        'ful1e5/onedark.nvim',
        config = function()
            require('onedark').setup()
        end
    }

    vim.cmd('lua ColorMyPencils()')
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use('theprimeagen/harpoon')
	use('mbbill/undotree')
	use('nvim-treesitter/playground')
	use('tpope/vim-fugitive')
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

			-- Snippets
			{'L3MON4D3/LuaSnip'},             -- Required
			{'rafamadriz/friendly-snippets'}, -- Optional
		}
	}

    use('github/copilot.vim')
    use('ThePrimeagen/vim-be-good')
    use('lambdalisue/suda.vim')
    use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }

    use('lewis6991/gitsigns.nvim')

    use('unblevable/quick-scope')

    -- Significant speedup for Telescope
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }

    use { 'HiPhish/nvim-ts-rainbow2', requires = 'nvim-treesitter/nvim-treesitter' }
    use('nvim-tree/nvim-web-devicons')
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
        config = function()
            require("nvim-tree").setup {}
        end
    }
end)
