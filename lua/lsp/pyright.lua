local lspconfig = require("lspconfig")
local handlers = require("lsp.handlers")
local capabilities = require('cmp_nvim_lsp').default_capabilities()

local M = {}

function M.setup()
  lspconfig.pyright.setup({
    on_attach = handlers.on_attach,
    capabilities = capabilities,
  })
end

return M
