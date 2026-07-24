-- Make spacebar the leader
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require 'yavidor.remap'
require 'yavidor.options'
require 'yavidor.lazy'
require 'yavidor.cmds'

-- Highlight on yank
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
  pattern = { '*.c', '*.cpp', '*.h', '*.hpp' },
  callback = function()
    vim.opt.colorcolumn = '100'
    vim.api.nvim_set_hl(0, 'ColorColumn', { ctermbg = 'grey', bg = 'grey' })
  end,
})
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'mermaid',
  callback = function()
    local buf = vim.api.nvim_get_current_buf()
    vim.keymap.set('n', '<leader>mp', '<cmd>MermaidPreview<CR>', { buffer = buf, desc = 'Mermaid Preview' })
    vim.keymap.set('n', '<leader>mf', '<cmd>MermaidFormat<CR>', { buffer = buf, desc = 'Mermaid Format' })
    vim.keymap.set('n', '<leader>mr', '<cmd>MermaidRender<CR>', { buffer = buf, desc = 'Mermaid Render' })
    vim.keymap.set('n', '<leader>mc', '<cmd>MermaidCopyURL<CR>', { buffer = buf, desc = 'Mermaid Copy URL' })
    vim.keymap.set('n', '<leader>mx', '<cmd>MermaidPreviewStop<CR>', { buffer = buf, desc = 'Mermaid Stop Preview' })
  end,
})
