-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps he

local map = LazyVim.safe_keymap_set

map({ "i", "v" }, "jk", "<Esc>", { desc = "return to normal mode" })
map("n", "<leader>r", ":lua vim.ui.open(vim.fn.expand('%'))<CR>")
