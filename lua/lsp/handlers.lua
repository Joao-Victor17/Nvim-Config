local M = {}

function M.on_attach(client, bufnr)
  local opts = { buffer = bufnr, silent = true }

  -- navigation
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition,     vim.tbl_extend('force', opts, { desc = 'LSP: Go to definition' }))
  vim.keymap.set('n', 'gdd', vim.lsp.buf.declaration,   vim.tbl_extend('force', opts, { desc = 'LSP: Go to declaration' }))
  vim.keymap.set('n', 'gr', vim.lsp.buf.references,     vim.tbl_extend('force', opts, { desc = 'LSP: List references' }))
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, vim.tbl_extend('force', opts, { desc = 'LSP: Go to implementation' }))
  vim.keymap.set('n', 'gk', vim.lsp.buf.hover,          vim.tbl_extend('force', opts, { desc = 'LSP: Hover documentation' }))
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, vim.tbl_extend('force', opts, { desc = 'LSP: Signature help' }))

  -- diagnostics
  vim.keymap.set('n', '<C-n>', vim.diagnostic.goto_prev, vim.tbl_extend('force', opts, { desc = 'LSP: Previous diagnostic' }))
  vim.keymap.set('n', '<C-p>', vim.diagnostic.goto_next, vim.tbl_extend('force', opts, { desc = 'LSP: Next diagnostic' }))

  -- actions
  vim.keymap.set('n', 'mm', vim.lsp.buf.rename,         vim.tbl_extend('force', opts, { desc = 'LSP: Rename symbol' }))
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, vim.tbl_extend('force', opts, { desc = 'LSP: Code action' }))
  vim.keymap.set('n', '<leader>cf', function() vim.lsp.buf.format({ async = true }) end,
    vim.tbl_extend('force', opts, { desc = 'LSP: Format document' }))
end

return M

