vim.b.slime_cell_delimiter = '```'

vim.treesitter.language.register("markdown", { "quarto", "rmd" })

local config = require('quarto.config').config
local quarto = require 'quarto'

if config.lspFeatures.enabled then
  quarto.activate()
end
