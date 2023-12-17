-- comment
local colorA = "Cyan"
local colorB = "#310033"
local obj = { fg = colorA, sp = colorA, bg = colorB }

for _, grp in ipairs({ "FloatBorder", "NormalFloat", "FloatTitle", "TelescopeFloat", "TelescopeNormal" })
do
	vim.api.nvim_set_hl(0, grp, obj)
end

-- turn off error-highlighting of '_'
vim.api.nvim_set_hl(0, "MarkdownError", { link = "NONE" })

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

vim.opt.termguicolors = true
