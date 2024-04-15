return {
  { "echasnovski/mini.nvim", version = "*" },
  {
    "echasnovski/mini.bufremove",
    version = "*",
  },
  {
    "echasnovski/mini.comment",
    version = "*",
  },
  {
    "echasnovski/mini.ai",
    version = "*",
  },
  {
    "echasnovski/mini.indentscope",
    version = "*",
  },
  {
    "echasnovski/mini.hipatterns",
    version = "*",
  },
  {
    "echasnovski/mini.pairs",
    version = "*",
  },
  {
    "echasnovski/mini.surround",
    version = "*",
    config = function()
      require("mini.surround").setup({
        mappings = {
          add = "ys",
          delete = "ds",
          find = "",
          find_left = "",
          highlight = "",
          replace = "cs",
          update_n_lines = "",

          -- Add this only if you don't want to use extended mappings
          suffix_last = "",
          suffix_next = "",
        },
        search_method = "cover_or_next",
      })
      -- TODO: Needs to be fixed
      -- Remap adding surrounding to Visual mode selection
      vim.keymap.del("x", "ys")
      vim.keymap.set(
        "x",
        "S",
        [[:<C-u>lua MiniSurround.add('visual')<CR>]],
        { silent = true }
      )

      -- Make special mapping for "add surrounding for line"
      vim.keymap.set("n", "yss", "ys_", { remap = true })
    end,
  },
}
-- return { { "echasnovski/mini.bufremove", version = "*" }, { "echasnovski/mini.bufremove", version = "*" }

-- ● mini.ai 5.73ms  VeryLazy
-- ● mini.comment 0.82ms  VeryLazy
-- ● mini.hipatterns 3.17ms  BufReadPre
-- ● mini.indentscope 1.8ms  LazyFile
-- ● mini.pairs 1.47ms  VeryLazy
-- ● mini.surround 10.06ms  gsa (v)
