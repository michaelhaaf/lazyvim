return {
  -- telescope
  -- a nice seletion UI also to find and open files
  -- {
  --   "nvim-telescope/telescope.nvim",
  --   dependencies = {
  --     { "nvim-telescope/telescope-ui-select.nvim" },
  --     { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  --     { "nvim-telescope/telescope-dap.nvim" },
  --     {
  --       "jmbuhr/telescope-zotero.nvim",
  --       enabled = true,
  --       dev = false,
  --       dependencies = {
  --         { "kkharji/sqlite.lua" },
  --       },
  --       config = function()
  --         vim.keymap.set("n", "<leader>fz", ":Telescope zotero<cr>", { desc = "[z]otero" })
  --       end,
  --     },
  --   },
  --   config = function()
  --     local telescope = require("telescope")
  --     local actions = require("telescope.actions")
  --     local previewers = require("telescope.previewers")
  --     local new_maker = function(filepath, bufnr, opts)
  --       opts = opts or {}
  --       filepath = vim.fn.expand(filepath)
  --       vim.loop.fs_stat(filepath, function(_, stat)
  --         if not stat then
  --           return
  --         end
  --         if stat.size > 100000 then
  --           return
  --         else
  --           previewers.buffer_previewer_maker(filepath, bufnr, opts)
  --         end
  --       end)
  --     end
  --
  --     local telescope_config = require("telescope.config")
  --     -- Clone the default Telescope configuration
  --     local vimgrep_arguments = { unpack(telescope_config.values.vimgrep_arguments) }
  --     -- I don't want to search in the `docs` directory (rendered quarto output).
  --     table.insert(vimgrep_arguments, "--glob")
  --     table.insert(vimgrep_arguments, "!docs/*")
  --
  --     telescope.setup({
  --       defaults = {
  --         buffer_previewer_maker = new_maker,
  --         vimgrep_arguments = vimgrep_arguments,
  --         file_ignore_patterns = {
  --           "node_modules",
  --           "%_cache",
  --           ".git/",
  --           "site_libs",
  --           ".venv",
  --         },
  --         layout_strategy = "flex",
  --         sorting_strategy = "ascending",
  --         layout_config = {
  --           prompt_position = "top",
  --         },
  --         mappings = {
  --           i = {
  --             ["<C-u>"] = false,
  --             ["<C-d>"] = false,
  --             ["<esc>"] = actions.close,
  --             ["<c-j>"] = actions.move_selection_next,
  --             ["<c-k>"] = actions.move_selection_previous,
  --           },
  --         },
  --       },
  --       pickers = {
  --         find_files = {
  --           hidden = false,
  --           find_command = {
  --             "rg",
  --             "--files",
  --             "--hidden",
  --             "--glob",
  --             "!.git/*",
  --             "--glob",
  --             "!**/.Rpro.user/*",
  --             "--glob",
  --             "!_site/*",
  --             "--glob",
  --             "!docs/**/*.html",
  --             "-L",
  --           },
  --         },
  --       },
  --       extensions = {
  --         ["ui-select"] = {
  --           require("telescope.themes").get_dropdown(),
  --         },
  --         fzf = {
  --           fuzzy = true, -- false will only do exact matching
  --           override_generic_sorter = true, -- override the generic sorter
  --           override_file_sorter = true, -- override the file sorter
  --           case_mode = "smart_case", -- or "ignore_case" or "respect_case"
  --         },
  --       },
  --     })
  --     telescope.load_extension("fzf")
  --     telescope.load_extension("ui-select")
  --     telescope.load_extension("dap")
  --     telescope.load_extension("zotero")
  --   end,
  -- },

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
