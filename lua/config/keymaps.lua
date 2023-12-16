local neotree = require('neo-tree.command')
vim.keymap.set('n', '<A-1>', function()
	neotree.execute({ toggle = true, position = 'left' })
end)
