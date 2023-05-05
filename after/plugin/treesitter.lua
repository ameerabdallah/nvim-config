local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.bash_master = {
    install_info = {
        url = "https://github.com/tree-sitter/tree-sitter-bash",
        files = { "src/parser.c", "src/scanner.cc" },
        generate_requires_npm = true,
        requires_generate_from_grammar = false,
        branch = "master"
    },
    filetype = { "bash", "sh", "zsh", "zsh-theme" }
}

vim.treesitter.language.register("bash_master", "bash")


require 'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all" (the five listed parsers should always be installed)
    ensure_installed = {
        "c",
        "lua",
        "vim",
        "vimdoc",
        "query",
        "rust",
        "javascript",
        "java",
        "typescript",
        "bash_master"
    },

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,

    -- Automatically install missing parsers when entering buffer
    -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
    auto_install = true,

    ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
    -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
        -- Use function to determine if a file should be highlighted. Depends on file size.
        disable = function(_, buf)
            local max_filesize = 100 * 1024 -- 100 KB
            local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
            if ok and stats and stats.size > max_filesize then
                return true
            end
        end,
    },
}
