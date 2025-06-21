local M = {}

function M.on_attach(client, bufnr)
  -- navegação LSP
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition,    { buffer = bufnr, silent = true })
  vim.keymap.set('n', 'gdd', vim.lsp.buf.declaration,  { buffer = bufnr, silent = true })
  vim.keymap.set('n', 'gr', vim.lsp.buf.references,    { buffer = bufnr, silent = true })
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation,{ buffer = bufnr, silent = true })
  vim.keymap.set('n', 'gk', vim.lsp.buf.hover,         { buffer = bufnr, silent = true })
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, { buffer = bufnr, silent = true })

  -- diagnósticos
  vim.keymap.set('n', '<C-n>', vim.diagnostic.goto_prev, { buffer = bufnr, silent = true })
  vim.keymap.set('n', '<C-p>', vim.diagnostic.goto_next, { buffer = bufnr, silent = true })

  -- refatoração
  vim.keymap.set('n', 'mm', vim.lsp.buf.rename, { buffer = bufnr, silent = true })
end

return M
