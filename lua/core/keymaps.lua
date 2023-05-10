vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.wo.number = true

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

--use spaces for tabs and whatnot
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

vim.api.nvim_set_keymap('n','<leader>1', '<cmd>lua require("bufferline").go_to(1,true)<cr>', {silent = true })
vim.api.nvim_set_keymap('n','<leader>2', '<cmd>lua require("bufferline").go_to(2,true)<cr>', {silent = true })
vim.api.nvim_set_keymap('n','<leader>3', '<cmd>lua require("bufferline").go_to(3,true)<cr>', {silent = true })
vim.api.nvim_set_keymap('n','<leader>4', '<cmd>lua require("bufferline").go_to(4,true)<cr>', {silent = true })
vim.api.nvim_set_keymap('n','<leader>5', '<cmd>lua require("bufferline").go_to(5,true)<cr>', {silent = true })
vim.api.nvim_set_keymap('n','<leader>6', '<cmd>lua require("bufferline").go_to(6,true)<cr>', {silent = true })
vim.api.nvim_set_keymap('n','<leader>7', '<cmd>lua require("bufferline").go_to(7,true)<cr>', {silent = true })
vim.api.nvim_set_keymap('n','<leader>8', '<cmd>lua require("bufferline").go_to(8,true)<cr>', {silent = true })
