return {

  -- disables hungry features for files larget than 2MB
  { "LunarVim/bigfile.nvim" },

  {
    "echasnovski/mini.surround",
    opts = {
      mappings = {
        add = "gsa", -- Add surrounding in Normal and Visual modes
        delete = "gsd", -- Delete surrounding
        find = "gsf", -- Find surrounding (to the right)
        find_left = "gsF", -- Find surrounding (to the left)
        highlight = "gsh", -- Highlight surrounding
        replace = "gsr", -- Replace surrounding
        update_n_lines = "gsn", -- Update `n_lines`
      },
    },
  },

  { -- commenting with e.g. `gcc` or `gcip`
    -- respects TS, so it works in quarto documents 'numToStr/Comment.nvim',
    "numToStr/Comment.nvim",
    version = nil,
    cond = function()
      return vim.fn.has("nvim-0.10") == 0
    end,
    branch = "master",
    config = true,
  },

  { -- format things as tables
    "godlygeek/tabular",
  },

  {
    "folke/flash.nvim",
    enabled = false,
    event = "VeryLazy",
    opts = {
      modes = {
        search = {
          enabled = false,
        },
      },
    },
    keys = {
      {
        "s",
        mode = { "n", "x", "o" },
        function()
          require("flash").jump()
        end,
      },
      {
        "S",
        mode = { "o", "x" },
        function()
          require("flash").treesitter()
        end,
      },
    },
  },

  -- interactive global search and replace
  {
    "nvim-pack/nvim-spectre",
    cmd = { "Spectre" },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
}
