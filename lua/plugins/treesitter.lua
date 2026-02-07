return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        lazy = false,
        config = function()
            local status_ok, ts_configs = pcall(require, "nvim-treesitter.configs")
            if not status_ok then return end

            ts_configs.setup({
                ensure_installed = { "c", "python", "javascript", "typescript", "tsx", "html", "css", "go" },
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false,
                    use_languagetree = true,
                },
                indent = { enable = true },
                auto_install = true,
                rainbow = {
                    enable = true,
                    extended_mode = true, -- highlight variables & parameters
                    max_file_lines = nil,
                },
            })
        end,
    },
}
