local fterm = require "FTerm"
local neotree = require "neo-tree.command"
local trouble = require "trouble"

vim.keymap.set("n", "<F3>", function()
  neotree.execute {
    toggle = true,
    position = "left",
  }
end)

-- yes, i had no choice but to change "q" to "m"
-- why did they overload q?
vim.keymap.set("n", "m", "q")
vim.keymap.set("n", "q", "<Nop>")
vim.keymap.set("n", "M", "@m")

vim.keymap.set("n", "<F4>", fterm.toggle)
vim.keymap.set("t", "<F4>", fterm.toggle)
vim.keymap.set("n", "<F5>", trouble.toggle)
vim.keymap.set("n", "<C-n>", "<Cmd>BufferNext<CR>")
vim.keymap.set("n", "<C-p>", "<Cmd>BufferPrevious<CR>")
vim.keymap.set("n", "<C-w>", "<Cmd>BufferClose<CR>")
