return {
	{
		'romgrk/barbar.nvim',
		dependencies = {
			'lewis6991/gitsigns.nvim',
			'nvim-tree/nvim-web-devicons',
		},
		init = function() vim.g.barbar_auto_setup = false end,
		opts = {
			animation = true,
			auto_hide = false,
			clickable = true,
			-- sidebar_filetypes = {
			--	['neo-tree'] = true,
			--},
		},
		version = '^1.0.0', -- optional: only update when a new 1.x version is released
	},
}
