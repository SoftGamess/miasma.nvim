local colors = {
Normal = {fg = "hsl(60,10,9)" },
Comment = {fg = "hsl(60,0,40)" },
["@comment"] = {link = "Comment"},
["@lsp.type.comment"] = {link = "Comment"},
Constant = {fg = "hsl(210,50,50)" },
Character = {link = "Constant"},
["@constant"] = {link = "Constant"},
["@lsp.type.enumMember"] = {link = "Constant"},
Delimiter = {fg = "hsl(180,50,50)"},
Operator = {link = "Delimiter"},
["@punctuation"] = {link = "Delimiter"},
Identifier = {fg = "#d7c483"},
["@parameter"] = {link = "Identifier"},
Keyword = {fg = "hsl(33,80,45)"},
PreProc = {link = "Keyword"},
["@keyword"] = {link = "Keyword"},
Define = {link = "PreProc"},
Include = {link = "PreProc"},
Macro = {link = "PreProc"},
PreCondit = {link = "PreProc"},
["@preproc"] = {link = "PreProc"},
Search = {bg = "hsl(180,50,50)"},
TermCursor = {reverse = true},
Type = { link = "Constant" },
NvimNumberPrefix = { fg = "hsl(60,50,50)" },
NvimOptionSigil = {link = "Type"},
StorageClass = {link = "Type"},
Structure = {link = "Type"},
Typedef = {link = "Type"},
["@type"] = {link = "Type"},
}


vim.cmd("highlight clear")
vim.cmd("set background=dark")
vim.cmd("set t_Co=256")
vim.cmd("let g:colors_name='dx'")
vim.cmd("let colors_name='dx'")

for group, attrs in pairs(colors) do
  vim.api.nvim_set_hl(0, group, attrs)
end
