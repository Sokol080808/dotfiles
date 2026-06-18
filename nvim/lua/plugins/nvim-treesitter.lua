return {
    'nvim-treesitter/nvim-treesitter',
    branch = 'main',
    lazy = false,
    build = ':TSUpdate',
    config = function()
        require('nvim-treesitter').install({
            'markdown',
            'markdown_inline',
            'lua',
            'python',
            'cpp',
            'latex',
        })

        vim.api.nvim_create_autocmd('FileType', {
            callback = function(ev)
                if ev.match == 'markdown' or ev.match == 'python' then
                    pcall(vim.treesitter.start, ev.buf)
                else
                    pcall(vim.treesitter.get_parser, ev.buf)
                end
            end,
        })
    end,
}
