return {

  { -- Highlight todo, notes, etc in comments
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = { signs = false },
  },

  { -- edit the file system as a buffer
    "stevearc/oil.nvim",
    opts = {
      keymaps = {
        ["<C-s>"] = false,
        ["<C-h>"] = false,
        ["<C-l>"] = false,
      },
      view_options = {
        show_hidden = true,
      },
    },
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = {
      { "-", ":Oil<cr>", desc = "oil" },
      { "<leader>ef", ":Oil<cr>", desc = "edit [f]iles" },
    },
    cmd = "Oil",
  },
  {
    "s1n7ax/nvim-window-picker",
    name = "window-picker",
    event = "VeryLazy",
    version = "2.*",
    config = function()
      require("window-picker").setup({
        hint = "floating-big-letter",
      })
    end,
  },
}
