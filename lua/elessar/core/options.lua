
local opt = vim.opt

opt.relativenumber = true
opt.number = true

opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

opt.wrap = false

opt.smartcase = true

opt.cursorline = true

opt.termguicolors = true
opt.signcolumn = "yes"


opt.clipboard:append("unnamedplus")

opt.splitright = true
opt.splitbelow = true

vim.api.nvim_create_autocmd("TabNewEntered", {
  pattern = "*",
  callback = function()
    require("nvim-tree.api").tree.open()
  end,
})
