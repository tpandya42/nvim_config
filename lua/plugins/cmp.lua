return {
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "L3MON4D3/LuaSnip",
            "rafamadriz/friendly-snippets",
            "neovim/nvim-lspconfig", -- Ensure LSP is loaded before cmp

            -- This is the key change. We make blink.cmp explicitly depend on
            -- nvim-lspconfig. This forces lazy.nvim to load lspconfig first,
            -- which initializes vim.lsp.config and prevents the error.
            {
                "saghen/blink.cmp",
				version = "1.*",
                dependencies = { "neovim/nvim-lspconfig" },
            },
        },
        config = function()
            -- The user's original opts for blink.cmp suggest they want to use
            -- blink.cmp to configure nvim-cmp. We will call its setup.
            -- This should now run safely after nvim-lspconfig is loaded.
            require("blink.cmp").setup({
                keymap = {
                    ['<S-Tab>'] = { 'select_prev', 'snippet_backward', 'fallback' },
                    ['<Tab>'] = { 'select_next', 'snippet_forward', 'fallback' },
                    ["<CR>"] = { "accept", "fallback" },
                    ["<Esc>"] = { "hide", "fallback" },
                },
                appearance = {
                    nerd_font_variant = 'mono'
                },
                completion = { documentation = { auto_show = true } },
                sources = {
                    providers = {
                        lazydev = {
                            name = "LazyDev",
                            module = "lazydev.integrations.blink",
                            score_offset = 100,
                        },
                    },
                    default = { 'lsp', 'path', 'snippets', 'buffer' },
                },
                signature = { enabled = true },
            })
        end,
    },
    {
        "L3MON4D3/LuaSnip",
        dependencies = { "rafamadriz/friendly-snippets" },
        -- luasnip setup can go here if needed
    },
}
