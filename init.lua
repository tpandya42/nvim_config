vim.opt.shortmess:append("I")  -- skip intro messages
vim.cmd([[silent! command! LualineNotices echo ""]]) -- suppress lualine notices


-- Load globals first
require("globals")

vim.g.mapleader = " "

-- Nvim settings
require('config.options')

-- Setting entry Point initially
require("config.lazy")

-- For loading Keymaps
require("keymaps")


