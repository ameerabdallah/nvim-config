vim.keymap.set("n", "<leader>gs", vim.cmd.Git);

return {
    'tpope/vim-fugitive',
    dependencies = 'tpope/vim-rhubarb',
    config = function()
        -- Add any additional configuration for fugitive here if needed
    end
}
