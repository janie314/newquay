local colorA = "Cyan"
local colorB = "#510054"
local obj = { fg = colorA, sp = colorA, bg = colorB }
for _, grp in ipairs({ "FloatBorder", "NormalFloat", "FloatTitle", "TelescopeFloat", "TelescopeNormal" })
do
	vim.api.nvim_set_hl(0, grp, obj)
end
vim.api.nvim_set_hl(0, "MarkdownError", { link = "NONE" })
vim.opt.termguicolors = true
