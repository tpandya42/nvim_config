return {
    -- Set lualine as statusline
    'nvim-lualine/lualine.nvim',
    opts = {
        options = {
            icons_enabled = false,
            theme = 'rose-pine',                 -- your preferred theme
            component_separators = '|',          
            section_separators = '',              
        },
        sections = {
            lualine_a = { 'mode' },
            lualine_b = { 'branch', 'diff', 'diagnostics' }, -- git + lsp diagnostics
            lualine_c = { { 'filename', path = 1 } },       -- full path
            lualine_x = { 'encoding', 'fileformat', 'filetype' },
            lualine_y = { 'progress' },
            lualine_z = { 'location' },
        },
        inactive_sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = { { 'filename', path = 1 } },       -- full path
            lualine_x = { 'location' },
            lualine_y = {},
            lualine_z = {},
        },
    },
}
