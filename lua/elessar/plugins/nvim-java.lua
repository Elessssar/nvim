return {
    {
        "nvim-java/nvim-java",
        ft = "java",

        config = function()
            require("java").setup({
                lombok = {
                    enable = true,
                },
            })

            vim.lsp.enable("jdtls")
        end,
    },
}
