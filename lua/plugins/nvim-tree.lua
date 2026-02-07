return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("nvim-tree").setup({
            diagnostics = {
                enable = true,
                show_on_dirs = true, -- show icons on parent folders
                icons = {
                    hint = "󰌵",
                    info = "",
                    warning = "",
                    error = "",
                },
            },
            view = {
                number = true,
                relativenumber = true,
                signcolumn = "yes",
            },
	    actions = {
	    	open_file = {
			quit_on_open = true,
		},
	    },
        })
    end,
}
