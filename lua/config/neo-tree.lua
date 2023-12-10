require('neo-tree').setup({
	window = {
		width = 30,
		close_if_last_window = true,
		enable_git_status = true,
		enable_diagnostics = true,
		mappings = {
			["<M-1>"] = "toggle_node"
		}
	}
})
