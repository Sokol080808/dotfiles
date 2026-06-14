return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
        dashboard    = { enabled = true },
        bigfile      = { enabled = true }, -- не лагать на огромных файлах
        quickfile    = { enabled = true }, -- быстрый старт при `nvim file`
        indent       = { enabled = true }, -- направляющие отступов
        scope        = { enabled = true },
        notifier     = { enabled = true }, -- уведомления
        words        = { enabled = true }, -- подсветка вхождений символа под курсором
        statuscolumn = { enabled = true },
        zen          = { enabled = true }, -- замена zen-mode.nvim
    },
    keys = {
        { "<leader>z", function() Snacks.zen() end,      desc = "Toggle Zen Mode" },
        { "<leader>Z", function() Snacks.zen.zoom() end, desc = "Toggle Zoom" },
    },
}
