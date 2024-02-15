local status_ok, gruvbox = pcall(require, "gruvbox")
if status_ok then
    gruvbox.setup({
        undercurl = true,
        underline = true,
        bold = true,
        italic = {
            comments = true,
            folds = true,
            operations = true,
            strings = true,
        },
        strikethrough = true,
        invert_selection = true,
        invert_signs = false,
        invert_tabline = false,
        invert_indent_guides = false,
        inverse = true,
        contrast = "hard",
    })
end

local status_ok, rose_pine = pcall(require, "rose-pine")
if status_ok then
    rose_pine.setup({
        dark_variant = 'main',
        bold_vert_split = false,
        dim_nc_background = false,
        disable_background = false,
        disable_float_background = false,
        disable_italics = false,
    })
end
