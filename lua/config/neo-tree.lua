require 'neo-tree'.setup({
	use_libuv_file_watcher = true,
	filesystem = {
		filtered_items = {
			visible = true,
			hide_dotfiles = false,
			hide_gitignored = true,
		},
	},
	window = {
		width = 30,
		close_if_last_window = true,
		enable_git_status = true,
		-- winbar = false,
		enable_diagnostics = true,
		mapping_options = {
			noremap = true,
			nowait = true,
		},
	},
})
require('neo-tree.command').execute({ toggle = true, position = 'left' })
