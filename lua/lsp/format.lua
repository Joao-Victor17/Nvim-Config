local M = {}

function M.setup_format_on_save()
  local group = vim.api.nvim_create_augroup("LspFormatOnSave", { clear = true })

  local filetypes = { "js", "jsx", "go", "tsx", "py", "c", "cpp", "java" }
  for _, ft in ipairs(filetypes) do
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = group,
      pattern = "*." .. ft,
      callback = function()
        vim.lsp.buf.format({ async = false })
      end,
    })
  end
end

return M
