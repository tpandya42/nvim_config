return {
    "ghillb/cybu.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons", "nvim-lua/plenary.nvim" },
    config = function()
        local cybu = require("cybu")

        cybu.setup({
            display_time = 2000,
            style = {
                max_height = 11,
                max_width = 1, -- 50% of screen width
            },
        })
    end,
}
