return {
  'nvim-treesitter/nvim-treesitter',
  -- build = ':TSUpdate',
  lazy = false,
  -- event = { "BufReadPost", "BufNewFile" },
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
    })
  end,
}
