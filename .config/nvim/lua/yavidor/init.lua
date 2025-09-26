-- Make spacebar the leader
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require 'yavidor.remap'
require 'yavidor.options'
require 'yavidor.lazy'

-- Highlight on yank
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})
