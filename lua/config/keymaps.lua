local neotree = require( "neo-tree.command" )
local fterm = require( "FTerm" )

vim.keymap.set( "n", "<F3>", function()
  neotree.execute( { toggle = true, position = "left" } )
end )
vim.keymap.set( "n", "<F4>", fterm.toggle )
vim.keymap.set( "t", "<F4>", fterm.toggle )

vim.keymap.set( "n", "<C-n>", "<Cmd>BufferNext<CR>" )
vim.keymap.set( "n", "<C-p>", "<Cmd>BufferPrevious<CR>" )
vim.keymap.set( "n", "<C-w>", "<Cmd>BufferClose<CR>" )
