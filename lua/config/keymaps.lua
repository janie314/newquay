local neotree = require('neo-tree.command')

vim.keymap.set('n', '<F3>', function()
	neotree.execute({ toggle = true, position = 'left' })
end)
vim.keymap.set('n', 'n', '<Cmd>BufferNext<CR>')
vim.keymap.set('n', 'p', '<Cmd>BufferPrevious<CR>')
