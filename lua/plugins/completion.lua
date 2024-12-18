return {
  {
    "echasnovski/mini.pairs",
    enabled = false,
  },

  {
    "hrsh7th/nvim-cmp",
    enabled = false,
  },

  {
    "echasnovski/mini.completion",
    version = "*",
    opts = {
      delay = {
        completion = 1000000, -- I don't want proactive completion
      },
      mappings = {
        force_twostep = "<C-N>",
      },
      set_vim_settings = false, -- I don't want completeopt changed
    },
  },
}
