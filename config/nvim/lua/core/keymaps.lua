vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autoread = true

-- use spaces for tabs etc
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true


-- some shortcuts
vim.keymap.set('n', '<leader>h', vim.cmd.noh)

-- better switching between windows
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true})
