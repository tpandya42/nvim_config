local map = vim.keymap.set


map("n", "<leader>gg", ":LazyGit<CR>", { noremap = true, silent = true }) 


-- Nvim Tree keymaps
local toggle_tree_focus = function()
    local view = require("nvim-tree.view")
    if view.is_visible() and vim.api.nvim_get_current_win() == view.get_winnr() then
        -- If we are in the tree, jump back to the previous window
        vim.cmd("wincmd p")
    else
        -- If we aren't in the tree, jump into it
        vim.cmd("NvimTreeFocus")
    end
end

map("n", "<D-b>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
map("n", "<leader>o", toggle_tree_focus, { noremap = true, silent = true })
-- NvimTree toggle with Space + f + t
map("n", "<leader>ft", ":NvimTreeToggle<CR>", { noremap = true, silent = true })



-- TELESCOPE KEYBINDS
do
    local builtin = require('telescope.builtin')

    -- File navigation
    map("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
    map("n", "<leader>fh", function()
        builtin.find_files({ hidden = true })
    end, { desc = "Find hidden files" })

    -- Git
    map("n", "<leader>fg", builtin.git_files, { desc = "Git files" })

    -- Search
    map("n", "<leader>fr", builtin.live_grep, { desc = "Live grep" })

    -- Buffers
    map("n", "<leader>fb", builtin.buffers, { desc = "List buffers" })

    -- Help / Colorscheme
    map("n", "<leader>cs", builtin.colorscheme, { desc = "Choose colorscheme" })

    -- Diagnostics
    map("n", "<leader>dd", builtin.diagnostics, { desc = "Workspace diagnostics" })
    map("n", "<leader>db", function()
        builtin.diagnostics({ bufnr = 0 })
    end, { desc = "Buffer diagnostics" })
end













-- ===========================
-- LSP Keybindings
-- ===========================
vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("UserLspConfig", {}),
    callback = function(ev)
        local opts = { buffer = ev.buf, silent = true }
        local client = vim.lsp.get_client_by_id(ev.data.client_id)

        -- Enable inlay hints if supported
        if client and client.supports_method("textDocument/inlayHint", { bufnr = ev.buf }) then
            vim.lsp.inlay_hint.enable(true, { bufnr = ev.buf })
        end

        -- LSP keymaps
        map('n', 'K', vim.lsp.buf.hover, opts)
        map('n', '<leader>k', vim.diagnostic.open_float, opts)
        map('n', 'gd', vim.lsp.buf.definition, opts)
        map('n', 'gD', vim.lsp.buf.declaration, opts)
        map('n', 'gi', vim.lsp.buf.implementation, opts)
        map('n', 'go', vim.lsp.buf.type_definition, opts)
        map('n', 'gr', vim.lsp.buf.references, opts)
        map('n', 'gs', vim.lsp.buf.signature_help, opts)
        map('n', '<F2>', vim.lsp.buf.rename, opts)
        map('n', '<F4>', vim.lsp.buf.code_action, opts)
    end,
})






-- ===========================
-- Buffer switching (cybu.nvim)
-- ===========================
do
    local cybu = require("cybu")
    local is_active = false
    local timer = nil

    local function smart_cycle(direction)
        if not is_active then
            is_active = true
            cybu.cycle(direction)
            cybu.cycle(direction == "next" and "prev" or "next")
        else
            cybu.cycle(direction)
        end

        if timer then timer:stop() end
        timer = vim.defer_fn(function()
            is_active = false
        end, 2000)
    end

    map("n", "<Tab>", function() smart_cycle("next") end)
    map("n", "<S-Tab>", function() smart_cycle("prev") end)
    map("n", "<C-n>", function() smart_cycle("next") end)
    map("n", "<C-p>", function() smart_cycle("prev") end)
end




-- ===========================
-- Bufferline keymaps
-- ===========================
map("n", "<C-q>", function()
    local bufnr = vim.api.nvim_get_current_buf()
    vim.cmd("BufferLineCyclePrev")
    vim.cmd("bdelete " .. bufnr)
end, { desc = "Close current buffer and go to previous" })

map("n", "<C-Tab>", "<cmd>BufferLineCycleNext<CR>", { desc = "Next buffer (BufferLine)" })
map("n", "<C-S-Tab>", "<cmd>BufferLineCyclePrev<CR>", { desc = "Previous buffer (BufferLine)" })
