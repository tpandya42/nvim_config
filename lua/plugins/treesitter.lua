return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        lazy = false,
        config = function()
            local ensure_installed = {
                "c", "python", "javascript", "typescript", "tsx",
                "html", "css", "go", "lua", "bash",
            }

            -- Install missing parsers (async, runs in background)
            local installed = require("nvim-treesitter").get_installed()
            local to_install = vim.tbl_filter(function(lang)
                return not vim.tbl_contains(installed, lang)
            end, ensure_installed)

            if #to_install > 0 then
                require("nvim-treesitter").install(to_install)
            end

            -- Enable treesitter highlighting + indent for all supported filetypes
            vim.api.nvim_create_autocmd("FileType", {
                callback = function()
                    pcall(vim.treesitter.start)
                end,
            })
        end,
    },
}
