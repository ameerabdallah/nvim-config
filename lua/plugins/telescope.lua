return {
    {
        "nvim-telescope/telescope-file-browser.nvim",
        dependencies = {
            "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim", 'nvim-tree/nvim-web-devicons',
            "nvim-telescope/telescope-fzf-native.nvim", "BurntSushi/ripgrep"
        }
    },
    {
        'nvim-telescope/telescope.nvim',
        version = 'v0.2.*',
        dependencies = { { 'nvim-lua/plenary.nvim' } },
        config = function()
            local telescope = require('telescope')
            telescope.setup {
                defaults = {
                    file_ignore_patterns = { "node_modules", "dist", "build", "^.git/" },
                },
                pickers = {
                    find_files = {
                        hidden = true,
                    }
                },
            }
            local builtin = require('telescope.builtin')
            vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
            vim.keymap.set('n', '<leader>pg', builtin.git_files, {})
            vim.keymap.set('n', '<leader>ps', function()
                builtin.grep_string({ search = vim.fn.input("Grep > ") });
            end)
            vim.keymap.set('n', '<leader>pb', builtin.buffers, {})
        end
    },

    -- Significant speedup for Telescope
    {
        'nvim-telescope/telescope-fzf-native.nvim',
        build =
        'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
    },

}
