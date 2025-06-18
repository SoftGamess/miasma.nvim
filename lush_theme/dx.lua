-- call :Lushify
local lush = require("lush")
---@diagnostic disable
local hsl = lush.hsl
local hsluv = lush.hsluv
local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
--    SpecialKey                                 { fg="#d7c483", },
    TermCursor                                 { gui="reverse", },
    Normal                                     { bg = hsl(60,10,9), },
    Visual                                     { bg = hsl(50,50,50) },
    Search                                     { bg = hsl(180,50,50) },
    Comment                                    { fg = hsl(60,0,40), bg = hsl(60,10,10) },
    sym"@lsp.type.comment"                     { Comment },
    Constant                                   { fg = hsl(210,50,50) },
    sym"@constant"                             { Constant },
    sym"@lsp.type.enumMember"                  { Constant },
    StorageClass                               { Constant },
    Structure                                  { Constant },
    Typedef                                    { Constant },
    NvimNumberPrefix                           { Constant },
    NvimOptionSigil                            { Constant },
    Type                                       { Constant },
    Identifier                                 { fg = hsl(60,50,50) },
    sym"@parameter"                            { fg = hsl(33,80,45) },
    Delimiter                                  { fg = hsl(180,50,50) },
    Operator                                   { Delimiter },
    sym"@punctuation"                          { Delimiter },
    Keyword                                    { fg = hsl(33,80,45) },
    PreProc                                    { Keyword },
    Include                                    { Keyword },
    Define                                     { Keyword },
    Macro                                      { Keyword },
    PreCondit                                  { Keyword },
    sym"@preproc"                              { Keyword },
      }
end)
---@diagnostic disable
return theme
