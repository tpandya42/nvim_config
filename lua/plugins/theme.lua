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
                    -- Fine-grained syntax highlighting overrides
                    TSFunction   = { fg = "#c4a7e7", bold = true },   -- purple functions
                    TSVariable   = { fg = "#ebbcba" },                -- soft pink variables
                    TSConstant   = { fg = "#f6c177" },                -- orange constants
                    TSString     = { fg = "#9ccfd8" },                -- cyan strings
                    TSNumber     = { fg = "#f6c177" },                -- same as constants
                    TSType       = { fg = "#31748f", bold = true },   -- dark cyan types
                    TSKeyword    = { fg = "#ea9a97", bold = true },   -- red keywords
                    TSConditional= { fg = "#ea9a97", italic = true }, -- red if/else/for
                    TSOperator   = { fg = "#c4a7e7" },                -- purple operators
                },
            })

            -- Apply the colorscheme
            vim.cmd("colorscheme rose-pine")
        end,
    },
}
