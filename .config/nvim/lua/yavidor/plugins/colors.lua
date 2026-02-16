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
-- return {
--   'maxmx03/solarized.nvim',
--   lazy = false,
--   priority = 1000,
--   ---@type solarized.config
--   opts = {},
--   config = function(_, opts)
--     vim.o.termguicolors = true
--     vim.o.background = 'light'
--     require('solarized').setup(opts)
--     vim.cmd.colorscheme 'solarized'
--   end,
-- }
