-- This is where you enable features that only work
--
-- if there is a language server active in the file
vim.api.nvim_create_autocmd("LspAttach", {
    desc = "LSP actions",
    callback = function(event)
        local opts = { buffer = event.buf }

        local tb = require("telescope.builtin")
        vim.keymap.set("n", "<leader>gd", tb.lsp_definitions, opts)
        vim.keymap.set("n", "<leader>gD", vim.lsp.buf.declaration, opts)
        vim.keymap.set("n", "<leader>gi", tb.lsp_implementations, opts)
        -- vim.keymap.set("n", "<leader>go", vim.lsp.buf.type_definition, opts)
        vim.keymap.set("n", "<leader>gre", tb.lsp_references, opts)
        vim.keymap.set("n", "<leader>gs", vim.lsp.buf.signature_help, opts)
        vim.keymap.set("n", "<leader>grn", vim.lsp.buf.rename, opts)

        vim.keymap.set({ "n", "x" }, "<leader>gf", function() vim.lsp.buf.format({ async = true }) end, opts)
        vim.keymap.set("n", "<leader>gc", vim.lsp.buf.code_action, opts)

        -- vim virtual text diagnostics toggle
        -- vim.keymap.set("n", "<leader>tdd", function()
        --   vim.diagnostic.config {
        --     virtual_lines = not vim.diagnostic.config().virtual_lines,
        --     virtual_text = not vim.diagnostic.config().virtual_text,
        --   }
        -- end, { desc = "toggle diagnostic" })

        --  lsp on/off
        -- vim.keymap.set("n", "<leader>tdp", function()
        --   vim.lsp.enable("basedpyright", false)
        -- end, { desc = "toggle basedright off" })
        --
        -- vim.keymap.set("n", "<leader>tdP", function()
        --   vim.lsp.enable("basedpyright", true)
        -- end, { desc = "toggle basedright on" })
        --
        -- vim.keymap.set("n", "<leader>tdr", function()
        --   vim.lsp.enable("ruff", false)
        -- end, { desc = "toggle ruff off" })
        --
        -- vim.keymap.set("n", "<leader>tdR", function()
        --   vim.lsp.enable("ruff", true)
        -- end, { desc = "toggle ruff on"  })
    end,
})

-- This is copied straight from blink
-- https://cmp.saghen.dev/installation#merging-lsp-capabilities
local capabilities = {
    textDocument = {
        foldingRange = {
            dynamicRegistration = false,
            lineFoldingOnly = true,
        },
    },
}

capabilities = require("blink.cmp").get_lsp_capabilities(capabilities)

-- Setup language servers.

vim.lsp.config("*", {
    capabilities = capabilities,
    root_markers = { ".git" },
})

-- Enable each language server by filename under the lsp/ folder
vim.lsp.enable({
    "clangd",
    "pyright",
    "ruff",
    "lua_ls",
    "texlab",
})

-- disable default lsp binding cause why not
for _, k in ipairs({ 'gra', 'gri', 'grn', 'grt', 'grr' }) do
    pcall(vim.keymap.del, 'n', k)
end
