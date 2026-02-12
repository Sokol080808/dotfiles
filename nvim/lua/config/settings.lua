vim.g.mapleader = " "
vim.g.maplocalleader = ","

vim.opt.termguicolors = true

vim.opt.showmode = false

vim.opt.shiftwidth = 4
vim.opt.smarttab = true
vim.opt.expandtab = true
vim.opt.tabstop = 8
vim.opt.softtabstop = 0

vim.opt.smartindent = true
vim.opt.autoindent = true

vim.opt.number = true

vim.opt.list = true
vim.opt.listchars = {
    eol = '↵',
    tab = '→ ',
    extends = '⟩',
    precedes = '⟨',
    trail = '·',
}

vim.opt.signcolumn = "yes"
vim.diagnostic.config({
    virtual_text = { current_line = true },
    severity_sort = true,
})
