require("mason").setup()
require("mason-lspconfig").setup( {
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

-- included language servers
require("lspconfig").ast_grep.setup {}      -- C, Cpp, HTML, Java, Lua, Python, C#, Go, Rust, JS, TS, and CSS
require("lspconfig").bashls.setup {}
require("lspconfig").arduino_language_server.setup {}
require("lspconfig").asm_lsp.setup {}
require("lspconfig").clangd.setup {}
require("lspconfig").cmake.setup {}     -- CMake
--require("lspconfig").ltex.setup {}      -- LaTeX and Markdown
require("lspconfig").matlab_ls.setup {}
require("lspconfig").lua_ls.setup {}
require("lspconfig").pyright.setup {}

