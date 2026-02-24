return {
    'github/copilot.vim',
    event = {
        "BufReadPre",
        "BufNewFile",
    },
    config = function()
        vim.g.copilot_enabled = false
        vim.keymap.set('i', '<C-J>', 'copilot#Accept("\\<CR>")', {
            expr = true,
            replace_keycodes = false
        })
        vim.g.copilot_no_tab_map = true
    end,
    keys = {
        { "<leader>ce", "<cmd>Copilot enable<cr>",  desc = "Enable Copilot" },
        { "<leader>cd", "<cmd>Copilot disable<cr>", desc = "Disable Copilot" },
    },
}
