local lspconfig = require("lspconfig")
local handlers = require("lsp.handlers")
local capabilities = require('cmp_nvim_lsp').default_capabilities()

local M = {}

function M.setup()
  lspconfig.jdtls.setup({
    on_attach = handlers.on_attach,
    capabilities = capabilities,
    -- Pode ser necessário configurar root_dir, cmd, etc.
    -- Exemplo básico:
    -- root_dir = lspconfig.util.root_pattern(".git", "mvnw", "gradlew", "pom.xml", "build.gradle"),
  })
end

return M
