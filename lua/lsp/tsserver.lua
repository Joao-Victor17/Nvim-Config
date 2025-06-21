local lspconfig = require("lspconfig")
local handlers = require("lsp.handlers")
local capabilities = require('cmp_nvim_lsp').default_capabilities()

local M = {}

function M.setup()
  lspconfig.tsserver.setup({
    on_attach = handlers.on_attach,
    capabilities = capabilities,
    -- Opcional: desabilitar formatação se usar outro formatador
    -- settings = { documentFormatting = false }
  })
end

return M
