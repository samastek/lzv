-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Normal mode: <C-c> yanks current line to system clipboard
vim.keymap.set("n", "<C-c>", '"+yy', { noremap = true, silent = true })

-- Visual mode: <C-c> yanks selection to system clipboard
vim.keymap.set("v", "<C-c>", '"+y', { noremap = true, silent = true })
