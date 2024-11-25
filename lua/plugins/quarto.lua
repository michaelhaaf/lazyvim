return {

  -- disable dressing.nvim
  { "stevearc/dressing.nvim", enabled = false },

  {
    "quarto-dev/quarto-nvim",
    dev = false,
    ft = "quarto",
    dependencies = {
      "neovim/nvim-lspconfig",
      "jmbuhr/otter.nvim",
      "hrsh7th/nvim-cmp",
    },
    opts = {
      lspFeatures = {
        languages = { "r", "python", "julia", "bash", "lua", "html" },
      },
      keymap = {
        rename = "<leader>cr",
      },
    },
    keys = {
      {
        "<leader>qp",
        "<CMD>QuartoPreview<CR>",
        desc = "Quarto Preview",
      },
    },
  },

  {
    "MeanderingProgrammer/render-markdown.nvim",
    ft = { "markdown", "quarto" },
  },

  { -- paste an image from the clipboard or drag-and-drop
    "HakonHarnes/img-clip.nvim",
    event = "BufEnter",
    ft = { "markdown", "quarto", "latex" },
    opts = {
      default = {
        dir_path = "img",
      },
      filetypes = {
        markdown = {
          url_encode_path = true,
          template = "![$CURSOR]($FILE_PATH)",
          drag_and_drop = {
            download_images = false,
          },
        },
        quarto = {
          url_encode_path = true,
          template = "![$CURSOR]($FILE_PATH)",
          drag_and_drop = {
            download_images = false,
          },
        },
      },
    },
    config = function(_, opts)
      require("img-clip").setup(opts)
      vim.keymap.set("n", "<leader>ii", ":PasteImage<cr>", { desc = "insert [i]mage from clipboard" })
    end,
  },

  {
    "hrsh7th/nvim-cmp",
    optional = true,
    dependencies = {
      "hrsh7th/cmp-calc",
      "hrsh7th/cmp-emoji",
      "kdheepak/cmp-latex-symbols",
      "jmbuhr/cmp-pandoc-references",
      "onsails/lspkind-nvim",
      "jmbuhr/otter.nvim",
    },
    opts = function(_, opts)
      opts.sources = opts.sources or {}
      local additional_sources = { "calc", "emoji", "latex_symbols", "pandoc_references" }
      for _, source in ipairs(additional_sources) do
        table.insert(opts.sources, { name = source })
      end
    end,
  },

  {
    "stevearc/conform.nvim",
    opts = {
      formatters = {
        prettier = {
          options = {
            ext_parsers = {
              qmd = "markdown",
            },
          },
        },
      },
      formatters_by_ft = {
        quarto = { "prettierd", "prettier" },
      },
    },
  },
}
