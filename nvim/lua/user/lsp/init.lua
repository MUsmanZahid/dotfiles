local okay_m, mason = pcall(require, "mason")
if okay_m then
    mason.setup()

    local okay_mlc, mlc = pcall(require, "mason-lspconfig")
    if okay_mlc then
        mlc.setup({
            ensure_installed = { "asm_lsp", "rust_analyzer", "sumneko_lua", "taplo" }
        })

        -- Enable servers using lspconfig
        local okay_lc, lc = pcall(require, "lspconfig")
        if okay_lc then
            local handlers = require("user.lsp.handlers")
            handlers.setup()

            lc.asm_lsp.setup{
                capabilities = handlers.capabilities,
                on_attach = handlers.on_attach,
            }
            lc.rust_analyzer.setup{
                capabilities = handlers.capabilities,
                on_attach = handlers.on_attach,
                single_file_support = true,
            }
            lc.sumneko_lua.setup{
                capabilities = handlers.capabilities,
                on_attach = handlers.on_attach,
                settings = require("user.lsp.settings.sumneko_lua")
            }
            lc.taplo.setup{
                capabilities = handlers.capabilities,
                on_attach = handlers.on_attach,
            }
        else
            print("`lspconfig` not found!")
        end
    else
        print("`mason-lspconfig` not found!")
    end
else
    print("`mason` not found!")
end
