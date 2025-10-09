-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps he

local map = LazyVim.safe_keymap_set

-- out of need
map("n", "<leader>rr", "*#:%s//")

map("n", "<CR>", "o<Esc>", { desc = "add empty new line under" })
map("n", "<leader>zz", ":lua require('neogen').generate()<CR>")
map({ "i", "v" }, "jk", "<Esc>", { desc = "return to normal mode" })

-- terminal
map("t", "<C-\\><C-\\>", "<C-\\><C-n>", { desc = "exit typing mode in terminal" })
