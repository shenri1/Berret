return {
  {
    "marko-cerovac/material.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "darker",
      contrast = {
        terminal = false,
        sidebars = false,
        floating_windows = false,
      },
    },
    config = function(_, opts)
      require("material").setup(opts)
      vim.g.material_style = "darker"
      vim.cmd("colorscheme material")
    end,
  },
}
