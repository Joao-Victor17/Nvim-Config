local lspconfig = require("lspconfig")
local handlers = require("lsp.handlers")
local capabilities = require('cmp_nvim_lsp').default_capabilities()

local M = {}

function M.setup()
  lspconfig.clangd.setup({
    on_attach = handlers.on_attach,
    capabilities = capabilities,
    -- Você pode adicionar opções específicas do clangd aqui, ex:
    -- cmd = { "clangd", "--background-index" }
  })
end

return M
