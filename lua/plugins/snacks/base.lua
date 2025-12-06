return {

  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      bigfile = { enabled = true },
      git = { enabled = true },
      gitbrowse = { enabled = true },
      -- image disabled: Need a different terminal emulator (kitty, wezterm, or ghostty)
      image = { enabled = false },
      zen = { enabled = true },
      lazygit = { enabled = true },
      scratch = { enabled = true },
      gh = { enabled = true },
      quickfile = { enabled = true },
      scope = { enabled = true },
      statuscolumn = { enabled = true },
      words = { enabled = true },
      zen = { enabled = true },
      toggle = { enabled = true },

      scroll = { enabled = false },
      indent = { enabled = false },
    },
  },
}
