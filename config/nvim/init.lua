-- include plugins
require("core.keymaps")
require("core.plugins")
require("core.plugin_config")

-- set line numbers
    vim.wo.number = true
    vim.opt.relativenumber = true

-- handle tab length etc
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smarttab = true

-- always show sign column to prevent the code from shifting around when switching between NORMAL and e.g. INSERT MODE
-- this is due to the LSP showing W, E, etc as error indicators for some lines.
vim.o.signcolumn = "yes"
