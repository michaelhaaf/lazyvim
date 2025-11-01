return {

  {
    "kksat/licenses.nvim",
    enabled = false,
    config = function()
      require("licenses").setup({
        copyright_holder = "Michael Haaf",
        email = "michael.haaf@gmail.com",
        license = "GPL-3.0-or-later",
      })
    end,
  },

}
