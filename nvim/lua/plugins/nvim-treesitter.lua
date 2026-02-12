return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    branch = 'master', -- frozen branch
    lazy = false,
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {
                "markdown",
                "markdown_inline",
                "lua",
                "python",
                "cpp",
            },
            sync_install = false,
            auto_install = true,

            highlight = {
                enable = true,
                disable = function(lang, buf)
                    local allowed = { "markdown", "markdown_inline", "python" }
                    return not vim.tbl_contains(allowed, lang)
                end,
            },

        })
    end,
}
