vim.g.mapleader = " "
local keymap = vim.keymap


keymap.set("n", "so", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "se", "<C-w>=", { desc = "Make splits equal size" })

keymap.set("n", "to", "<cmd>tabnew<CR>", { desc = "New tab" })
keymap.set("n", "td", "<cmd>tabclose<CR>", { desc = "Close tab" })
keymap.set("n", "tl", "<cmd>tabn<CR>", { desc = "Next tab" })
keymap.set("n", "th", "<cmd>tabp<CR>", { desc = "Previous tab" })
keymap.set("n", "tO", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

