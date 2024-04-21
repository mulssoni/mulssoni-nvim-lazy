local colors = require("rose-pine.palette")
local cmp = require("cmp")

vim.api.nvim_set_hl(0, "CmpNormal", { bg = colors.base })
vim.api.nvim_set_hl(0, "CmpSelectHL", { bg = colors.rose, fg = colors.base })

-- cmp.setup({
--   -- completion = {
--   --   completeopt = "menu,menuone,noselect",
--   -- },
--   mapping = cmp.mapping.preset.insert({
--     ["<C-j>"] = cmp.mapping.select_next_item({
--       behavior = cmp.SelectBehavior.Replace,
--     }),
--     ["<C-k>"] = cmp.mapping.select_prev_item({
--       behavior = cmp.SelectBehavior.Replace,
--     }),
--     ["<C-Space>"] = cmp.mapping.complete(),
--     ["<C-e>"] = cmp.mapping.close(),
--     ["<CR>"] = cmp.mapping.confirm({ select = true }),
--   }),
--   window = {
--     completion = {
--       border = "rounded",
--       winhighlight = "Normal:CmpNormal,FloatBorder:CmpNormal,CursorLine:CmpSelectHL,Search:None",
--     },
--     documentation = {
--       border = "rounded",
--       winhighlight = "Normal:CmpNormal,FloatBorder:CmpNormal,CursorLine:CmpSelectHL,Search:None",
--     },
--   },
--   sources = cmp.config.sources({
--     { name = "nvim_lua" },
--     { name = "nvim_lsp" },
--     { name = "copilot" },
--     { name = "path" }, -- file system paths
--     { name = "buffer" }, -- text within current buffer
--     { name = "luasnip" }, -- snippets
--     { name = "emoji" },
--   }),
--   view = {
--     entries = {
--       -- show completion menu at the cursor position
--       follow_cursor = true,
--     },
--   },
--   -- formatting = {
--   --   format = lspkind.cmp_format({
--   --     maxwidth = 50,
--   --     ellipsis_char = "...",
--   --   }),
--   -- },
-- })
