return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  main = 'nvim-treesitter.configs',
  opts = {
    ensure_installed = { 'bash', 'c', 'diff', 'html', 'lua', 'luadoc', 'markdown', 'vim', 'vimdoc', 'go' },
    auto_install = true,
    highlight = {
      enable = true,
      disable = { 'latex' },
      additional_vim_regex_highlighting = { 'latex', 'markdown' },
    },
    indent = { enable = true, disable = { 'latex' } },
  },
}
