return {
  "neanias/everforest-nvim",
  name = "everforest",
  priority = 1000,
  opts = {
    background = "hard"
  },
  config = function(_, opts)
    require("everforest").setup(opts)
    vim.cmd([[colorscheme everforest]])
  end,
}
