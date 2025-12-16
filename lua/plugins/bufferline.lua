return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  lazy = false,
  keys = {
    {"<C-p>", "<cmd>bp<cr>", "Previous buffer"},
    {"<C-n>", "<cmd>bn<cr>", "Next buffer"},
  },
  config = function()
    require("bufferline").setup{}
  end,
}
