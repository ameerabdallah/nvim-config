return {
    "rcarriga/nvim-notify",
    event = "VeryLazy",
    config = function()
        require("notify").setup({
            stages = "fade_in_slide_out",
            timeout = 4000,
            background_colour = "#000000",
            fps = 60,
            max_width = 80,
            max_height = 20
        })
        vim.notify = require("notify")
    end,
}
