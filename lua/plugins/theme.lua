return {
    {
        "rose-pine/neovim",
        name = "rose-pine",
        lazy = false,
        priority = 1000,
        config = function()
            require("rose-pine").setup({
                variant = "moon",
                dark_variant = "moon",
                styles = {
                    bold = true,           -- bold keywords/functions
                    transparency = true,   -- keep transparent background
                },
                highlight_groups = {
                    -- Fine-grained syntax highlighting overrides (using @capture names)
                    ["@function"]    = { fg = "#458588", bold = true },   -- blue
                    ["@variable"]    = { fg = "#ebdbb2" },                -- fg1
                    ["@constant"]    = { fg = "#d79921" },                -- yellow
                    ["@string"]      = { fg = "#98971a" },                -- green
                    ["@number"]      = { fg = "#d79921" },                -- yellow
                    ["@type"]        = { fg = "#689d6a", bold = true },   -- aqua
                    ["@keyword"]     = { fg = "#b16286", bold = true },   -- purple
                    ["@keyword.conditional"] = { fg = "#b16286", italic = true },
                    ["@operator"]    = { fg = "#fe8019" },                -- orange                
					},
            })

            -- Apply the colorscheme
            vim.cmd("colorscheme rose-pine")
        end,
    },
}
