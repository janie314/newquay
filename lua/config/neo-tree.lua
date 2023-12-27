local neotree = require "neo-tree"

neotree.setup {
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
    mappings = {
      ["a"] = {
        "add",
        config = {
          show_path = "none", -- "none", "relative", "absolute"
        },
      },
      ["A"] = "add_directory",
      ["d"] = "delete",
      ["r"] = "rename",
    },
    mapping_options = { noremap = true, nowait = true },
  },
}

require("session_manager").setup {
  autosave_ignore_filetypes = { "neo-tree", "gitcommit", "gitrebase" },
  autoload_mode = require("session_manager.config").AutoloadMode.CurrentDir,
}

local config_group = vim.api.nvim_create_augroup("MyConfigGroup", {}) -- A global group for all your config autocommands
vim.api.nvim_create_autocmd({ "User" }, {
  pattern = "SessionLoadPost",
  group = config_group,
  callback = function()
    require("neo-tree.command").execute {
      toggle = true,
      position = "left",
    }
  end,
})
