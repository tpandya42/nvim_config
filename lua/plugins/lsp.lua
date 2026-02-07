return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require("blink.cmp").get_lsp_capabilities()

            -- 1. LSP Servers configuration
            local servers = {
                html = {},
                cssls = {},
                tailwindcss = {},
                emmet_language_server = {},
                eslint = {},
                clangd = {},
                bashls = {},
                tsserver = {
                    filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact" },
                    settings = { javascript = { implicitProjectConfiguration = { checkJs = true } } }
                },
                pyright = { filetypes = { "python" }, settings = { python = { analysis = { typeCheckingMode = "basic" } } } },
                gopls = {
                    filetypes = { "go", "gomod", "gowork", "gotmpl" },
                    settings = {
                        gopls = {
                            analyses = { unusedparams = true, shadow = true, unusedwrite = true, nilness = true },
                            staticcheck = true,
                            gofumpt = true,
                        },
                    },
                },
                lua_ls = {
                    filetypes = { "lua" },
                    settings = { Lua = { diagnostics = { globals = { "vim" } } } },
                },
            }

            for name, config in pairs(servers) do
                config.capabilities = capabilities
                vim.lsp.config(name, config)
                vim.lsp.enable(name)
            end
        end,
    },
}
