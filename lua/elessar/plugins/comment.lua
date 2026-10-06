return {
    "numToStr/Comment.nvim",
    event = "VeryLazy",

    config = function()
        require("Comment").setup()

        local api = require("Comment.api")

        vim.keymap.set("n", "<C-/>", "gcc", { remap = true })
        vim.keymap.set("v", "<C-/>", "gc", { remap = true })
    end,
}
