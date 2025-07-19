local M = {}

function M.setup()
  local handlers    = require("lsp.handlers")
  local capabilities = require('cmp_nvim_lsp').default_capabilities()
  local format      = require("lsp.format")

  -- format on save
  format.setup_format_on_save()

  local servers = { "pyright", "ts_ls", "clangd", "jdtls" }

  for _, server in ipairs(servers) do
    local ok, mod = pcall(require, "lsp." .. server)
    if ok and type(mod.setup) == "function" then
      mod.setup({
        on_attach    = handlers.on_attach,
        capabilities = capabilities,
      })
    else
      vim.notify("[LSP] module not found: lsp." .. server, vim.log.levels.WARN)
      local lspconfig = require("lspconfig")
      if lspconfig[server] or (server == "ts_ls" and lspconfig.tsserver) then
        lspconfig[server == "ts_ls" and "tsserver" or server].setup {
          on_attach    = handlers.on_attach,
          capabilities = capabilities,
        }
      end
    end
  end
end

return M
