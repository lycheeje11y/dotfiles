vim.g.mapleader = " "

local opts = { silent = true }
opts.desc = "switch to normal mode"
vim.keymap.set("i", "jk", "<C-c>", opts)
vim.keymap.set("i", "kj", "<C-c>", opts)

opts.desc = "Clear search highlights"
vim.keymap.set("n", "<leader>nh", ":nohl<CR>", opts)
vim.keymap.set("n", "<leader>rf", ":bufdo! e!<CR>", { desc = "Refresh Buffers" })

vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height

vim.keymap.set("n", "<C-]>", "<cmd>bn<CR>", { desc = "Go to next buffer" })
vim.keymap.set("n", "<C-[>", "<cmd>bp<CR>", { desc = "Go to previous buffer" })
vim.keymap.set("n", "<leader>bn", "<cmd>new<CR>", { desc = "New buffer" })
vim.keymap.set("n", "<leader>bd", "<cmd>bd<CR>", { desc = "Close current buffer" })
vim.keymap.set("n", "<leader>bx", "<cmd>%bd|e#|bd#<CR>", { desc = "Close all buffers but this" })

vim.keymap.set("", "<leader>DD", '"_dd', { desc = "Delete without changing register" })
