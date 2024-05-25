
vim.api.nvim_create_augroup("Formatting", {})

vim.api.nvim_create_autocmd('BufWritePre', {
  group = 'Formatting',
  pattern = { '*.ex,*.exs,*.heex' },
  callback = function()
    vim.lsp.buf.format { async = false }
  end
})
