require("plugins.plugins-setup")
--require("plugins.nvim-neoclip")
require("core.options")
require("core.keymaps")
-- 插件
-- require("plugins.commandline")
require("plugins.competitest")
require("plugins.lualine")
require("plugins/nvim-tree")
require("plugins/treesitter")
require("plugins/lsp")
require("plugins/cmp")
require("plugins/comment")
require("plugins/autopairs")
require("plugins/bufferline")
require("plugins/gitsigns")
require("plugins/eldritch")
-- require("plugins/formatter")
require("plugins/telescope")
require('competitest').setup() -- to use default configuration
--set clipboard+=unnamedplus
