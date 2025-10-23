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
    vim.api.nvim_set_hl(0, 'ColorColumn', { ctermbg = 'Red', bg = 'Red' })
  end,
}
