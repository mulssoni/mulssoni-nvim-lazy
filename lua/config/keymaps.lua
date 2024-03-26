-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "x", '"_x"')

-- Icrement and decrement numbers
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Select all text
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Resize windows
keymap.set("n", "<C-S-h>", "<C-w><")
keymap.set("n", "<C-S-j>", "<C-w>-")
keymap.set("n", "<C-S-k>", "<C-w>+")
keymap.set("n", "<C-S-l>", "<C-w>>")

-- Diagnostics
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)

-- Copilot
-- Accept suggestion
keymap.set("i", "<Tab>", function()
  require("cmp").complete()
end, opts)
