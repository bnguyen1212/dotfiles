-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- disable LazyVim's window navigation so vim-tmux-navigator takes over
vim.keymap.del("n", "<C-h>")
vim.keymap.del("n", "<C-j>")
vim.keymap.del("n", "<C-k>")
vim.keymap.del("n", "<C-l>")

-- add vim-tmux-navigator mappings
map("n", "<C-h>", "<cmd>TmuxNavigateLeft<CR>", { desc = "Go to left window" })
map("n", "<C-j>", "<cmd>TmuxNavigateDown<CR>", { desc = "Go to lower window" })
map("n", "<C-k>", "<cmd>TmuxNavigateUp<CR>", { desc = "Go to upper window" })
map("n", "<C-l>", "<cmd>TmuxNavigateRight<CR>", { desc = "Go to right window" })
map("n", "<C-\\>", "<cmd>TmuxNavigatePrevious<CR>", { desc = "Go to previous window" })
