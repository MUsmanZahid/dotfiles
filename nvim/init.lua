require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.colorschemes"
require "user.cmp"
require "user.lsp"

vim.cmd [[
try
  colorscheme melange
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
