---@type vim.lsp.Config
return {
    name = "texlab",
    cmd = { "texlab" },
    root_markers = {
        ".git",
        "*.tex"
    },
    filetypes = {
        "tex",
        "bib"
    },
}
