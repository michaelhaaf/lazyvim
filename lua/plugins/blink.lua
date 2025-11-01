return {

  {
    "saghen/blink.cmp",
    dependencies = {
      "rafamadriz/friendly-snippets",
      "moyiz/blink-emoji.nvim",
      "Kaiser-Yang/blink-cmp-dictionary",
    },
    opts = {
      keymap = {
        preset = "default",
      },
      snippets = {
        preset = "luasnip",
      },
      completion = {
        documentation = {
          auto_show = false,
        },
        ghost_text = {
          enabled = false,
        },
      },
      sources = {
        compat = {},
        default = { "lsp", "path", "snippets", "buffer" },
      },
    },
  },
}
