local cmp = require("cmp")
return {
  print("hello"),
  cmp.setup({
    snippet = {
      expand = function(args)
        require("luasnip").lsp_expand(args.body)
      end,
    },

    view = {
      entries = {
        follow_cursor = true,
      },
    },

    mapping = {
      ["<C-Space>"] = cmp.mapping.complete(),
      ["<C-pgup>"] = cmp.mapping.scroll_docs(-4),
      ["<C-pgdwn>"] = cmp.mapping.scroll_docs(4),
      ["<C-e>"] = cmp.mapping.close(),
      ["<C-y>"] = cmp.mapping.confirm({
        behavior = cmp.ConfirmBehavior.Insert,
        select = false,
      }),
    },

    sources = {
      { name = "nvim_lua" },
      { name = "nvim_lsp" },
      { name = "path" },
      { name = "luasnip" },
      { name = "buffer", keyword_length = 5 },
      { name = "emoji" },
    },

    experimental = {
      -- I like the new menu better! Nice work hrsh7th
      native_menu = false,

      ghost_text = false,
    },
    --   formatting = {
    --     format = lspkind.cmp_format({ with_text = false, maxwidth = 50 }),
    --   },
    -- })
  }),
}
