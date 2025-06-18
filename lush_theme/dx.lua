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
    Normal { bg = hsl(60,20,10), },
      }
end)
---@diagnostic disable
return theme
