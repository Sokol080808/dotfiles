local function map(mode, lhs, rhs, desc, opts)
    opts = opts or { silent = true }
    opts.desc = desc
    vim.keymap.set(mode, lhs, rhs, opts)
end

map('', '<leader>y', '"+y', 'Yank to clipboard')
map('', '<leader>Y', '"+y$', 'Yank until EOL to clipboard')

map('', '<leader>p', '"+p', 'Paste after cursor from clipboard')
map('', '<leader>P', '"+P', 'Paste before cursor from clipboard')
