vim.g.copilot_no_tab_map = true

vim.g.copilot_filetypes = { yaml = true }

return {
    'github/copilot.vim',
    enabled = function()
        local disable_copilot = vim.env.DISABLE_COPILOT or false
        if disable_copilot == nil then
            return true
        else
            return not disable_copilot
        end
    end
}
