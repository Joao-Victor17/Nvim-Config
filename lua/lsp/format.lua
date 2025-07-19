local M = {}

function M.setup_format_on_save()
  local group = vim.api.nvim_create_augroup("LspFormatOnSave", { clear = true })
  local filetypes = { "js", "jsx", "go", "ts", "tsx", "py", "c", "cpp", "java" }

  for _, ft in ipairs(filetypes) do
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = group,
      pattern = "*." .. ft,
      callback = function(event)
        for _, client in ipairs(vim.lsp.get_active_clients({ bufnr = event.buf })) do
          if client.server_capabilities.documentFormattingProvider then
            vim.lsp.buf.format({ async = true })
            return
          end
        end
      end,
    })
  end
end

return M
