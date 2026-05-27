vim.api.nvim_create_user_command('Gilaion', function(args)
  vim.api.nvim_command '%s/####\\s\\+\\(.\\+\\)/\\\\subsubsection*{\\1}/e'

  vim.api.nvim_command '%s/###\\s\\+\\(.\\+\\)/\\\\subsection*{\\1}/e'

  vim.api.nvim_command '%s/##\\s\\+\\(.\\+\\)/\\\\section*{\\1}/e'

  vim.api.nvim_command '%s/#\\+\\s\\+\\(.\\+\\)/\\\\part*{\\1}/e'

  vim.api.nvim_command '%s/^\\$\\$\\n\\s\\+\\\\begin{gather}/\\\\begin{gather*}/e'

  vim.api.nvim_command '%s/^\\s\\+\\\\end{gather}\\n\\$\\$/\\\\end{gather*}/e'

  vim.api.nvim_command '%s/^\\$\\$\\n\\\\begin{cases}/\\\\begin{equation*}\\r\\\\begin{cases}/e'

  vim.api.nvim_command '%s/\\\\end{cases}\\n\\$\\$/\\\\end{cases}\\r\\\\end{equation*}/e'
end, {})
