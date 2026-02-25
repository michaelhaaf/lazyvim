-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "norg", "neorg" },
  callback = function()
    if pcall(vim.treesitter.start) then
      vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
      vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    end
  end,
})

-- vim.api.nvim_create_autocmd('User', { pattern = 'TSUpdate',
-- callback = function()
--   require('nvim-treesitter.parsers').norg = {
--     install_info = {
--       url = 'https://github.com/nvim-neorg/tree-sitter-norg',
--       revision = HEAD, -- commit hash for revision to check out; HEAD if missing
--       -- optional entries:
--       location = "parser",
--       -- generate = true, -- only needed if repo does not contain pre-generated `src/parser.c`
--       -- generate_from_json = false, -- only needed if repo does not contain `src/grammar.json` either
--       queries = 'queries/neovim', -- also install queries from given directory
--     },
--   }
--   require('nvim-treesitter.parsers').norg_meta = {
--     install_info = {
--       url = 'https://github.com/nvim-neorg/tree-sitter-norg',
--       revision = HEAD, -- commit hash for revision to check out; HEAD if missing
--       -- optional entries:
--       location = "parser",
--       -- generate = true, -- only needed if repo does not contain pre-generated `src/parser.c`
--       -- generate_from_json = false, -- only needed if repo does not contain `src/grammar.json` either
--       queries = 'queries/neovim', -- also install queries from given directory
--     },
--   }
-- end})
-- vim.treesitter.language.register("norg", { "norg" })
-- vim.treesitter.language.register("norg_meta", { "norg" })
