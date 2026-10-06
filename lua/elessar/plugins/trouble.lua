return {
    {
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        cmd = "Trouble",
        opts = {},
        keys = {
            {
                "<leader>xx",
                "<cmd>Trouble diagnostics toggle<cr>",
                desc = "Toggle all diagnostics",
            },
            {
                "<leader>xX",
                "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
                desc = "Toggle buffer diagnostics",
            },
            {
                "<leader>xs",
                "<cmd>Trouble symbols toggle<cr>",
                desc = "Toggle document symbols",
            },
        },
    },
}
