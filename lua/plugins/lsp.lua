return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
        },
        config = function()
            local capabilities = require("blink.cmp").get_lsp_capabilities()

            -- Diagnostics UI
            vim.diagnostic.config({
                virtual_text = true,
                signs = true,
                underline = true,
                update_in_insert = false,
                severity_sort = true,
            })

            -- On attach keymaps
            local function on_attach(_, bufnr)
                local opts = { buffer = bufnr }

                vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
                vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
                vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
                vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
                vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
                vim.keymap.set("n", "<leader>f", function()
                    vim.lsp.buf.format({ async = true })
                end, opts)
            end

            -- Server definitions
            local servers = {
                clangd = {},
                ts_ls = {},
                pyright = {
                    settings = {
                        python = {
                            analysis = { typeCheckingMode = "basic" },
                        },
                    },
                },
                bashls = {},
                jdtls = {},
                lua_ls = {
                    settings = {
                        Lua = {
                            diagnostics = { globals = { "vim" } },
                        },
                    },
                },
            }

            for name, config in pairs(servers) do
                config.capabilities = capabilities
                config.on_attach = on_attach

                vim.lsp.config(name, config)
                vim.lsp.enable(name)
            end
        end,
    },
}
