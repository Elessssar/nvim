return {
    "nvim-tree/nvim-tree.lua",
    opts = {
        filesystem_watchers = {
            enable = true,
            ignore_dirs = {
                "bin",
                "C:/Users/abdul",
                "C:/Users/abdul/Work/technashis",
                "C:/Users/abdul/Work/technashis/TechnasHIS",
                "C:/Users/abdul/Work/technashis/HIS-UI-NEW",
            },
        },
    },
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
        local nvimtree = require("nvim-tree")
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1
        nvimtree.setup({
            view = {
                width = 45
            },
            renderer = {
                indent_width = 4
            },
            git = {
                ignore = false,
            }
        })

        local keymap = vim.keymap

        keymap.set("n", "me", "<cmd>NvimTreeToggle<CR>", { desc = "NvimTreeToggle" })
        -- keymap.set("n", "mf", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "NvimTreeFindFileToggle" })
        keymap.set("n", "mr", "<cmd>NvimTreeRefresh<CR>", { desc = "NvimTreeRefresh" })
        keymap.set("n", "mf", "<cmd>NvimTreeFindFile<cr>", {
            desc = "Reveal current file",
        })
    end
}

