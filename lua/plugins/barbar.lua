return {
    {
        "romgrk/barbar.nvim",
        dependencies = { "lewis6991/gitsigns.nvim", "nvim-tree/nvim-web-devicons" },
        init = function() vim.g.barbar_auto_setup = false end,
        opts = {
            highlight_alternate = true,
            highlight_visible = true,
            animation = true,
            auto_hide = false,
            clickable = true,
        },
        version = "^1.0.0",
    },
}
