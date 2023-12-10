require("neo-tree").setup({
  window = {
    mappings = {
      ["<C-1>"] = { "toggle_preview", config = { use_float = false, use_image_nvim = true } },
    }
  }
})
