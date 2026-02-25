return {
  {
    "nvim-neorg/neorg",
    ft = "norg",
    after = "nvim-treesitter",
    lazy = false,
    -- version = "*",
    version = false,
    dependencies = {
      "nvim-neorg/lua-utils.nvim",
      "pysan3/pathlib.nvim",
      "nvim-neotest/nvim-nio",
      "nvim-neorg/tree-sitter-norg",
      "nvim-neorg/tree-sitter-norg-meta",
      -- "nvim-lua/plenary.nvim",
      -- "nvim-treesitter/nvim-treesitter",
    },
    opts = {
      load = {
        ["core.defaults"] = {},
        ["core.highlights"] = {},
        ["core.integrations.treesitter"] = {
          config = {
            install_parsers = true,
          },
        },
        ["core.concealer"] = {
          config = {
            folds = true,
            icon_preset = "diamond",
          },
        },
        ["core.summary"] = {
          config = {
            strategy = "by_path"
          },
        },
        ["core.dirman"] = {
          config = {
            workspaces = {
              home = "~/notes/home",
              work = "~/notes/work"
            },
            default_workspace = "home",
          },
        },
      },
    },
  },
}
