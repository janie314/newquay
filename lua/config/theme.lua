vim.opt.termguicolors = true

-- float window theming
for _, grp in ipairs({ "FloatBorder", "NormalFloat", "FloatTitle", "TelescopeFloat", "TelescopeNormal" })
do
	vim.api.nvim_set_hl(0, grp, { fg = "cyan", sp = "cyan", bg = "#310033" })
end

-- turn off error-highlighting of '_'
vim.api.nvim_set_hl(0, "MarkdownError", { link = "NONE" })

-- syntax colors
vim.api.nvim_set_hl(0, "Normal", { fg = 'cyan', bg = 'black' })
vim.api.nvim_set_hl(0, "NonText", { fg = 'brown' })
vim.api.nvim_set_hl(0, "Comment", { fg = 'lightgreen', italic = true })
vim.api.nvim_set_hl(0, "Todo", { fg = 'black', bg = 'orange' })
vim.api.nvim_set_hl(0, "Operator", { fg = 'orange' })
vim.api.nvim_set_hl(0, "Identifier", { fg = 'cyan', bold = true })
vim.api.nvim_set_hl(0, "LineNr", { fg = 'lightcyan' })
for _, grp in ipairs({ "Conditional", "Repeat", "Keyword", "Label", "Statement", "Special" })
do
	vim.api.nvim_set_hl(0, grp, { fg = '#e699ff', bold = true })
end

-- barbar theming
vim.api.nvim_set_hl(0, "BufferTabpageFill", { fg = 'lightblue', ctermfg = 'lightblue', bg = 'blue', ctermbg = "blue" })
for _, grp in ipairs({ "Alternate", "Visible", "Inactive" })
do
	vim.api.nvim_set_hl(0, "Buffer" .. grp, { bg = '#424040', sp = '#424040' })
	vim.api.nvim_set_hl(0, "Buffer" .. grp .. "Icon", { bg = '#424040', sp = '#424040' })
	vim.api.nvim_set_hl(0, "Buffer" .. grp .. "Sign", { bg = '#424040', sp = '#424040' })
	vim.api.nvim_set_hl(0, "Buffer" .. grp .. "SignRight", { bg = '#424040', sp = '#424040' })
end
vim.api.nvim_set_hl(0, "BufferCurrent", { bg = '#141414', sp = '#141414' })
vim.api.nvim_set_hl(0, "BufferCurrentIcon", { bg = '#141414', sp = '#141414' })
-- vim.api.nvim_set_hl(0, "BufferAlternateMod", { fg = 'lightblue', ctermfg = 'lightblue', bg = 'blue', ctermbg = "blue" })
-- vim.api.nvim_set_hl(0, "BufferVisibleMod", { fg = 'lightblue', ctermfg = 'lightblue', bg = 'blue', ctermbg = "blue" })
