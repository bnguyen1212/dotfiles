return {
  "Hiroya-W/sequoia-moonlight.nvim",
  lazy = false, -- load immediately on startup
  priority = 1000, -- ensures colorscheme loads first
  config = function()
    vim.cmd([[colorscheme sequoia]])
  end,
}
