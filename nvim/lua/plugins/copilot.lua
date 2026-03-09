return {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    requires = {
        "copilotlsp-nvim/copilot-lsp",
    },
    opts = {
        suggestion = {
            enabled = true,
            auto_trigger = true,
            keymap = {
                accept = "<C-j>",
                next = "<M-]>",
                prev = "<M-[>",
                dismiss = "<C-]>",
            },
            inline = {
                enabled = true,
                highlight = "Comment",
            },
        },
        panel = { enabled = false },
    },
    keys = {
        { "<leader>ce", "<cmd>Copilot enable<cr>",                         desc = "Enable Copilot" },
        { "<leader>ct", "<cmd>Copilot suggestion toggle_auto_trigger<cr>", desc = "Toggle suggestions" },
        { "<leader>cd", "<cmd>Copilot disable<cr>",                        desc = "Disable Copilot" },
    },
}
