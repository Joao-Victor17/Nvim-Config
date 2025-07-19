local lspconfig    = require("lspconfig")
local handlers     = require("lsp.handlers")
local capabilities = require('cmp_nvim_lsp').default_capabilities()

local M = {}

function M.setup()
  lspconfig.ts_ls.setup({
    on_attach    = handlers.on_attach,
    capabilities = capabilities,
    -- settings = { javascript = { format = { enable = false } } },
  })
end

return M
