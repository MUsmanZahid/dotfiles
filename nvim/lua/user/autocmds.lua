-- Enable spell check on text, markdown, and tex files
vim.api.nvim_create_autocmd(
    { "BufRead", "BufNewFile" },
    {
        pattern = { "*.txt", "*.md", "*.tex" },
        command = "setlocal spell"
    }
)

-- Set spaces to 2 for Dart/Flutter
vim.api.nvim_create_autocmd(
    { "FileType" },
    {
        pattern = { "dart" },
        command = "setlocal shiftwidth=2 softtabstop=2 tabstop=2",
    }
)
