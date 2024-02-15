require "user.autocmds"
require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.colorschemes"
require "user.cmp"
require "user.lsp"

vim.cmd [[
try
  colorscheme gruvbox
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
endtry
]]
