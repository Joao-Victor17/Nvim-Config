-- lua/lsp/init.lua
local M = {}

function M.setup()
  local handlers    = require("lsp.handlers")
  local capabilities = require("cmp_nvim_lsp").default_capabilities()
  local format      = require("lsp.format")
  local lspconfig   = require("lspconfig")

  -- format on save
  format.setup_format_on_save()

  -- servers we want
  local servers = { "pyright", "ts_ls", "clangd", "jdtls", "tailwindcss" }

  -- try require mason and mason-lspconfig
  local has_mason, mason = pcall(require, "mason")
  local has_m_lsp, mason_lspconfig = pcall(require, "mason-lspconfig")

  if has_mason then
    pcall(mason.setup)
  end

  local default_opts = {
    on_attach = handlers.on_attach,
    capabilities = capabilities,
  }

  if has_m_lsp and mason_lspconfig.setup_handlers then
    -- preferred path: mason-lspconfig with setup_handlers available
    mason_lspconfig.setup({
      ensure_installed = servers,
      automatic_installation = true,
    })

    mason_lspconfig.setup_handlers({
      -- default handler for all servers (uses any custom lua/lsp/<server>.lua if present)
      function(server_name)
        -- if you have a custom module for server (lua/lsp/<server_name>.lua) use it
        local ok, mod = pcall(require, "lsp." .. server_name)
        if ok and type(mod.setup) == "function" then
          mod.setup(default_opts)
          return
        end

        if lspconfig[server_name] then
          lspconfig[server_name].setup(default_opts)
        else
          vim.notify("[mason-lspconfig] no lspconfig entry for " .. server_name, vim.log.levels.WARN)
        end
      end,

      -- example override for tailwindcss (if you need special filetypes)
      ["tailwindcss"] = function()
        local opts = vim.tbl_deep_extend("force", default_opts, {
          filetypes = {
            "html","css","scss","javascript","javascriptreact",
            "typescript","typescriptreact","jsx","tsx","svelte","vue","astro"
          },
        })
        lspconfig.tailwindcss.setup(opts)
      end,
    })
    return
  end

  -- fallback (no mason-lspconfig.setup_handlers available)
  -- simply try to setup each server via lspconfig using default_opts
  for _, server in ipairs(servers) do
    -- if server is "ts_ls" mapping, adapt here (we used "tsserver" above)
    if lspconfig[server] then
      lspconfig[server].setup(default_opts)
    else
      -- no lspconfig entry for that name — warn but continue
      vim.notify("[LSP fallback] no lspconfig entry for " .. server, vim.log.levels.WARN)
    end
  end
end

return M

