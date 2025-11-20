require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }

    -- log_level = vim.log.levels.DEBUG
})
require("mason-lspconfig").setup({
    -- ensure that all included language servers are installed
    ensure_installed = {
        "clangd",
        "ast_grep",
        "bashls",
        "lua_ls",
        "pyright",
        "arduino_language_server",
        "cmake",
        -- "asm_lsp",
        -- "ltex",
        -- "textlsp",
        -- "matlab_ls",
    }
})

-- keymaps
local on_attach = function(_, _)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
    vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
    -- vim.keymap.set('n', 'gn', vim.lsp.buf.next {})
end
