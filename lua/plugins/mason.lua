return {
    {
        "williamboman/mason.nvim",
        build = ":MasonUpdate",
        config = function()
            require("mason").setup({
                ui = { border = "rounded" },
            })
        end,
    },

    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = { "williamboman/mason.nvim" },
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
		           "clangd",
                    "ts_ls",
                    "pyright",
                    "bashls",
                    "jdtls",
                    "lua_ls",              },
                automatic_installation = true,
            })
        end,
    },
}
