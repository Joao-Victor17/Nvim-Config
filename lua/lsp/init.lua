local M = {}

function M.setup()
  local servers = {
    "pyright",
	"tsserver",
	"clangd",
  }

  local format = require("lsp.format")
  format.setup_format_on_save()

  for _, server in ipairs(servers) do
    local ok, mod = pcall(require, "lsp." .. server)
    if ok and mod.setup then
      mod.setup()
    else
      -- fallback básico:
      local lspconfig = require("lspconfig")
      lspconfig[server].setup {
        on_attach = require("lsp.handlers").on_attach,
        capabilities = require('cmp_nvim_lsp').default_capabilities(),
      }
    end
  end
end

return M
