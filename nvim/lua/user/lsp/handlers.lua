local M = {}

M.setup = function()
    local config = {
        virtual_text = false,
        signs = { active = signs },
        update_in_insert = true,
        underline = true,
        severity_sort = true,
        float = {
            focusable = false,
            style = "minimal",
            border = "rounded",
            source = "always",
            header = "",
            prefix = "",
        },
    }

    vim.diagnostic.config(config)
    vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
        border = "rounded",
    })
end

local function lsp_keymaps(bufnr)
    local opts = { noremap = true, silent = true }
    local map = vim.api.nvim_buf_set_keymap

    -- Normal mode
    map(bufnr, "n", "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
    map(bufnr, "n", "<leader>ld", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
    map(bufnr, "n", "<leader>lD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
    map(bufnr, "n", "<leader>lf", "<cmd>lua vim.lsp.buf.format()<CR>", opts)
    map(bufnr, "n", "<leader>lh", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
    map(bufnr, "n", "<leader>li", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
    map(bufnr, "n", "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
    map(bufnr, "n", "<leader>lR", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
    map(bufnr, "n", "<leader>l[", "<cmd>lua vim.diagnostic.goto_prev({ border = 'rounded' })<CR>", opts)
    map(bufnr, "n", "<leader>l]", "<cmd>lua vim.diagnostic.goto_next({ border = 'rounded' })<CR>", opts)
    map(bufnr, "n", "<leader>lk", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)

    -- Insert mode
    map(bufnr, "i", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)

    vim.cmd [[ command! Format execute 'lua vim.lsp.buf.format()' ]]
end

M.on_attach = function(client, bufnr)
    lsp_keymaps(bufnr)
end

local capabilities = vim.lsp.protocol.make_client_capabilities()

local okay_cnl, cnl = pcall(_, "cmp_nvim_lsp")
if okay_cnl then
    cnl.default_capabilities(capabilities)
end

return M
