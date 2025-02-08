-- plugins for notetaking and knowledge management

return {

  {
    "MeanderingProgrammer/render-markdown.nvim",
    enabled = false,
  },

  {
    "nvim-neorg/neorg",
    enabled = false,
    config = function()
      require("neorg").setup({})
    end,
  },

  {
    "jakewvincent/mkdnflow.nvim",
    enabled = false,
    config = function()
      local mkdnflow = require("mkdnflow")
      mkdnflow.setup({})
    end,
  },

}
