vim.diagnostic.config({
    virtual_lines = true,
    jump = { float = true }
})
vim.lsp.config('lua_ls', {
    cmd = { 'lua-language-server' },
    settings = {
        Lua = {
            workspace = {
                checkThirdParty = false,
                library = {
                    vim.fn.stdpath('data') .. '/lazy/nvim-lspconfig/lua',
                    vim.env.VIMRUNTIME
                }
            },
            telemtry = { enable = false },
        }
    }
})

local opts = { remap = false }
vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
vim.keymap.set("n", "gr", function() vim.lsp.buf.references() end, opts)
vim.keymap.set("n", "gi", function() vim.lsp.buf.implementation() end, opts)
vim.keymap.set("n", "gs", function() vim.lsp.buf.signature_help() end, opts)
vim.keymap.set("n", "gl", function() vim.diagnostic.open_float() end, opts)
vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
vim.keymap.set("n", "<leader>r", function() vim.lsp.buf.rename() end, opts)
vim.keymap.set("n", "[e", "[d", opts)
vim.keymap.set("n", "]e", "]d", opts)
