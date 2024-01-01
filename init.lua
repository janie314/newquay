-- init lazy
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system {
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	}
end
vim.opt.rtp:prepend(lazypath)

-- standard vim-level settings
vim.wo.number = true
vim.opt.swapfile = false

-- load plugins
require("lazy").setup "plugins"

-- load config
require "config.keymaps"
require "config.theme"
require "config.neo-tree"
require "config.lsp"
require "config.lualine"
-- require "config.auto-session"
