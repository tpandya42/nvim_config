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
                    ["@function"]    = { fg = "#c4a7e7", bold = true },   -- purple functions
                    ["@variable"]    = { fg = "#ebbcba" },                -- soft pink variables
                    ["@constant"]    = { fg = "#f6c177" },                -- orange constants
                    ["@string"]      = { fg = "#9ccfd8" },                -- cyan strings
                    ["@number"]      = { fg = "#f6c177" },                -- same as constants
                    ["@type"]        = { fg = "#31748f", bold = true },   -- dark cyan types
                    ["@keyword"]     = { fg = "#ea9a97", bold = true },   -- red keywords
                    ["@keyword.conditional"] = { fg = "#ea9a97", italic = true }, -- red if/else/for
                    ["@operator"]    = { fg = "#c4a7e7" },                -- purple operators
                },
            })

            -- Apply the colorscheme
            vim.cmd("colorscheme rose-pine")
        end,
    },
}
