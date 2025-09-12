return {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        vim.opt.termguicolors = true
        require("bufferline").setup({
            options = {
                diagnostics = "nvim_lsp",
                separator_style = "slant",
                offsets = {
                    {
                        filetype = "NvimTree",
                        text = "File Explorer",
                        highlight = "Directory",
                        text_align = "left"
                    }
                },
                indicator = {
                    style = "underline"
                }
            }
        })

        -- Keymaps for bufferline
        vim.keymap.set("n", "]b", ":BufferLineCycleNext<CR>")
        vim.keymap.set("n", "[b", ":BufferLineCyclePrev<CR>")
        vim.keymap.set("n", "<leader>bp", ":BufferLinePick<CR>")
        vim.keymap.set("n", "<leader>bx", ":BufferLinePickClose<CR>")
        vim.keymap.set("n", "<leader>bdo", ":BufferLineCloseOthers<CR>")
        vim.keymap.set("n", "<leader>bdl", ":BufferLineCloseLeft<CR>")
        vim.keymap.set("n", "<leader>bdr", ":BufferLineCloseRight<CR>")

    end
}
