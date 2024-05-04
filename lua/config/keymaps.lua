-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

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
vim.keymap.set("i", "<C-y>", 'copilot#Accept("\\<CR>")', {
  expr = true,
  replace_keycodes = false,
})
vim.g.copilot_no_tab_map = true
vim.keymap.set("i", "<C-e>", "<Plug>(copilot-dismiss)")

-- GitSings
keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
keymap.set("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>", {})

-- -- Delete a word backwards
-- keymap.set("n", "dw", 'vb"_d')

-- -- New tab
-- keymap.set("n", "te", ":tabedit")
-- keymap.set("n", "<tab>", ":tabnext<Return>", opts)
-- keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- -- Jumplist
-- keymap.set("n", "<C-o>", "<C-o>")
-- keymap.set("n", "<C-i>", "<C-i>")
-- -- Split window
-- keymap.set("n", "ss", ":split<Return>", opts)
-- keymap.set("n", "sv", ":vsplit<Return>", opts)
-- -- Move window
-- keymap.set("n", "sh", "<C-w>h")
-- keymap.set("n", "sk", "<C-w>k")
-- keymap.set("n", "sj", "<C-w>j")
-- keymap.set("n", "sl", "<C-w>l")

-- -- Resize window
-- keymap.set("n", "<C-w><left>", "<C-w><")
-- keymap.set("n", "<C-w><right>", "<C-w>>")
-- keymap.set("n", "<C-w><up>", "<C-w>+")
-- keymap.set("n", "<C-w><down>", "<C-w>-")

-- Inc Rename
keymap.set("n", "<leader>rn", ":IncRename ")
