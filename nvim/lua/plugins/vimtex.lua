return {
    "lervag/vimtex",
    -- tag = "v2.15", -- uncomment to pin to a specific release
    commit = "088ad457c04d3c8adb6fdeeb491bb9a42c70a5f5",
    ft = { "tex" },
    config = function()
        vim.g.vimtex_compiler_method = "latexmk"

        vim.g.vimtex_indent_enabled = 0

        vim.g.vimtex_env_toggle_math_map = {
            ['$'] = '\\(',
            ['$$'] = '\\[',
            ['\\('] = '\\[',
            ['\\['] = 'gather*',
            ['gather'] = '\\(',
        }
    end,
}
