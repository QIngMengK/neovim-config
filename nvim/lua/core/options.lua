local opt = vim.opt

-- 行号
opt.relativenumber = false
opt.number = true

-- 缩进
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- 防止包裹
opt.wrap = false

-- 光标行
opt.cursorline = true

-- 启用鼠标
opt.mouse:append("a")

-- 系统剪贴板
vim.cmd("set clipboard+=unnamedplus")
-- opt.clipboard:append("unnamedplus")

-- ``默认新窗口右和下
opt.splitright = true
opt.splitbelow = true

-- 搜索
opt.ignorecase = true
opt.smartcase = true
--vim.api.nvim_set_keymap('n', ':', '<cmd>FineCmdline<CR>', {noremap = true})
-- 外观
opt.termguicolors = false
opt.signcolumn = "no"
--vim.cmd[[colorscheme tokyonight-moon]]
vim.cmd[[colorscheme eldritch]]
