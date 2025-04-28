vim.g.mapleader = " "

local opts = { silent = true }

opts.desc = 'switch to normal mode'
vim.keymap.set('i', 'jk', '<C-c>', opts)
vim.keymap.set('i', 'kj', '<C-c>', opts)
