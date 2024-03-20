-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
-- vim.cmd.colorscheme("tokyonight")
-- local colors = require("tokyonight.colors").setup()
vim.cmd.colorscheme("ayu-mirage")
local colors = require("ayu.colors")
colors.generate(true) -- Pass `true` to enable mirage

require("ayu").setup({
  overrides = {
    Normal = { bg = "None" },
    ColorColumn = { bg = "None" },
    SignColumn = { bg = "None" },
    Folded = { bg = "None" },
    FoldColumn = { bg = "None" },
    CursorLine = { bg = "None" },
    CursorColumn = { bg = "None" },
    WhichKeyFloat = { bg = "None" },
    VertSplit = { bg = "None" },
  },
})

require("lualine").setup({
  options = {
    theme = "ayu",
  },
})

require("scrollbar").setup({
  handle = {
    color = colors.bg_highlight,
  },
  marks = {
    Search = { color = colors.orange },
    Error = { color = colors.error },
    Warn = { color = colors.warning },
    Info = { color = colors.info },
    Hint = { color = colors.hint },
    Misc = { color = colors.purple },
  },
})

require("pets").setup({
  random = false,
})
