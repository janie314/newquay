-- does some lua_ls setup automatically
require("neodev").setup {}

local lspconfig = require "lspconfig"
local lspfmt = require "lsp-format"

-- diagnostics
require("trouble").setup {
	position = "right",
	action_keys = {
		toggle_mode = "m",
		preview = "p",
		next = "j",
	},
	multiline = true,
	indent_lines = true,
	win_config = { border = "single" },
}

-- completions
local cmp = require "cmp"
cmp.setup {
	snippet = {
		expand = function(args) require("luasnip").lsp_expand(args.body) end,
	},
	sources = { { name = "nvim_lsp" } },
	mapping = cmp.mapping.preset.insert {
		["<A-j>"] = cmp.mapping.select_next_item(),
		["<A-k>"] = cmp.mapping.select_prev_item(),
		["<CR>"] = cmp.mapping.abort(),
		["<Tab>"] = cmp.mapping.confirm { select = true }, -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
	},
}
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- deno
lspconfig.denols.setup {
	on_attach = lspfmt.on_attach,
	capabilities = capabilities,
	single_file_support = true,
	filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "json", "jsonc", "markdown" },
	root_dir = lspconfig.util.root_pattern("deno.json", "deno.jsonc", "package.json"),
}

-- golang
lspconfig.gopls.setup {
	on_attach = lspfmt.on_attach,
	capabilities = capabilities,
	single_file_support = true,
}

-- ruby
lspconfig.solargraph.setup {
	cmd = { "bundle", "exec", "solargraph", "stdio" },
	on_attach = lspfmt.on_attach,
	capabilities = capabilities,
	single_file_support = true,
	init_options = { formatting = true },
	settings = { solargraph = { diagnostics = true } },
}

-- lua
lspconfig.lua_ls.setup {
	on_attach = lspfmt.on_attach,
	capabilities = capabilities,
	single_file_support = true,
	settings = {
		Lua = {
			completion = { enable = true, callSnippet = "Replace" },
			format = { enable = true },
		},
	},
}

-- elm
lspconfig.elmls.setup{
	on_attach = lspfmt.on_attach,
	capabilities = capabilities,
}

-- rust
lspconfig.rust_analyzer.setup {}

-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set("n", "<space>e", vim.diagnostic.open_float)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(ev)
		-- Enable completion triggered by <c-x><c-o>
		vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"
		-- Buffer local mappings.
		-- See `:help vim.lsp.*` for documentation on any of the below functions
		local opts = { buffer = ev.buf }
		vim.keymap.set("n", "<space>D", vim.lsp.buf.declaration, opts)
		vim.keymap.set("n", "<space>d", vim.lsp.buf.definition, opts)
		vim.keymap.set("n", "<space>i", vim.lsp.buf.hover, opts)
		vim.keymap.set("n", "<space>s", vim.lsp.buf.signature_help, opts)
		vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, opts)
		vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, opts)
		vim.keymap.set("n", "<space>wl", function() print(vim.inspect(vim.lsp.buf.list_workspace_folders())) end,
			opts)
		-- vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
		vim.keymap.set("n", "<space>mv", vim.lsp.buf.rename, opts)
		vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, opts)
		vim.keymap.set("n", "<space>r", vim.lsp.buf.references, opts)
		vim.keymap.set("n", "<space>f", function() vim.lsp.buf.format { async = true } end, opts)
	end,
})
