-- require("lazy").setup({
--   "neanias/everforest-nvim",
--   version = false,
--   lazy = false,
--   priority = 1000, -- make sure to load this before all the other start plugins
--   -- Optional; default configuration will be used if setup isn't called.
--   config = function()
--     require("everforest").setup({
--       -- Your config here
--     })
--   end,
-- })
-- return { "neanias/everforest-nvim", name = "everforest", priority = 1000 , config = true}
return {
  "neanias/everforest-nvim",
  name = "everforest",
  priority = 1000,
  opts = {
    background = "hard"  -- Set the hard dark version
  },
  config = function(_, opts)
    require("everforest").setup(opts)
    vim.cmd([[colorscheme everforest]])
  end,
}
