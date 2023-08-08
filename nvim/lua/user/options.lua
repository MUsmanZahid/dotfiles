-- Disable some unneeded providers
vim.g.loaded_node_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0

local options = {
    backup = false,
    clipboard = "unnamedplus",
    completeopt = { "menuone", "noselect" },
    fileencoding = "utf-8",
    hlsearch = true,
    mouse = "a",
    showtabline = 1,
    smartindent = true,
    splitbelow = true,
    splitright = true,
    swapfile = false,
    termguicolors = true,
    timeoutlen = 1000,
    undofile = true,
    updatetime = 500,
    writebackup = true,
    expandtab = true,
    shiftwidth = 4,
    softtabstop = 4,
    tabstop = 4,
    cursorline = true,
    number = true,
    relativenumber = true,
    numberwidth = 4,
    signcolumn = "yes",
    wrap = true,
}

for k, v in pairs(options) do
    vim.opt[k] = v
end

-- Choose between light and dark background on startup
local hour = tonumber(vim.fn.strftime("%H"))
if hour > 7 or hour < 17 then
    BG = "light"
else
    BG = "dark"
end

vim.opt.background = BG

-- Rust specific options
vim.g.rustfmt_autosave = 1;
