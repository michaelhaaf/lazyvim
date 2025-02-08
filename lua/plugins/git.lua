-- git plugins

return {
  { "sindrets/diffview.nvim" },

  -- handy git ui
  {
    "NeogitOrg/neogit",
    lazy = true,
    cmd = "Neogit",
    keys = {
      { "<leader>gg", ":Neogit<cr>", desc = "neo[g]it" },
    },
    config = function()
      require("neogit").setup({
        disable_commit_confirmation = true,
        integrations = {
          diffview = true,
        },
      })
    end,
  },

  {
    "akinsho/git-conflict.nvim",
    version = "v2.1.0",
    init = function()
      require("git-conflict").setup({
        default_mappings = false,
        disable_diagnostics = true,
      })
    end,
    keys = {
      { "<leader>gpo", ":GitConflictChooseOurs<cr>" },
      { "<leader>gpt", ":GitConflictChooseTheirs<cr>" },
      { "<leader>gpb", ":GitConflictChooseBoth<cr>" },
      { "<leader>gp0", ":GitConflictChooseNone<cr>" },
      { "]x", ":GitConflictNextConflict<cr>" },
      { "[x", ":GitConflictPrevConflict<cr>" },
    },
  },

  { -- github PRs and the like with gh - cli
    "pwntester/octo.nvim",
    enabled = true,
    cmd = "Octo",
    config = function()
      require("octo").setup()
      vim.keymap.set("n", "<leader>gpl", ":Octo pr list<cr>", { desc = "octo [p]r list" })
      vim.keymap.set("n", "<leader>gpr", ":Octo review start<cr>", { desc = "octo [r]eview" })
    end,
  },
}
