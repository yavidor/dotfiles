vim.api.nvim_create_user_command('Gilaion', function(args)
  vim.api.nvim_command '%s/#\\+\\s\\+\\(.\\+\\)/\\\\section*{\\1}/'

  vim.api.nvim_command '%s/^\\$\\$\\n\\\\begin{gather}/\\\\begin{gather*}'

  vim.api.nvim_command '%s/^\\\\end{gather}\\n\\$\\$/\\\\end{gather*}'

  vim.api.nvim_command '%s/^\\$\\$\\n\\\\begin{cases}/\\\\begin{equation*}\\r\\\\begin{cases}'

  vim.api.nvim_command '%s/\\\\end{cases}\\n\\$\\$/\\\\end{cases}\\r\\\\end{equation*}'
end, {})
