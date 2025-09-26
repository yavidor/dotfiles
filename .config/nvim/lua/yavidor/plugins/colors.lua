return {
    'catppuccin/nvim',
    name = 'catppuccin',
    opts = {
      transparent_background = true,
    },
    priority = 1000,
    init = function()
      vim.cmd.colorscheme 'catppuccin-mocha'
      vim.cmd.hi 'Comment gui=none'
    end,
  }
