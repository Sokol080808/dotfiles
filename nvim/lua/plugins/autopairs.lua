return {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    opts = {
        check_ts = true, -- учитывать treesitter (не закрывать скобку внутри строки и т.п.)
    },
}
