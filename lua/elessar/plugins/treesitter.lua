return {
    "nvim-treesitter/nvim-treesitter",

    lazy = false,

    build = ":TSUpdate",

    config = function()
        local treesitter = require("nvim-treesitter")

        treesitter.setup()

        treesitter.install({
            "json",
            "javascript",
            "typescript",
            "html",
            "css",
            "scss",
            "lua",
            "c",
            "java",
            "python",
            "cpp"
        })

        -- Enable Treesitter highlighting
        vim.api.nvim_create_autocmd("FileType", {
            pattern = {
                "json",
                "javascript",
                "typescript",
                "html",
                "css",
                "scss",
                "lua",
                "c",
                "java",
                "python",
                "cpp"
            },
            callback = function()
                vim.treesitter.start()
            end,
        })

        -- Use bash parser for zsh files
        vim.treesitter.language.register("bash", "zsh")
    end,
}
