-- This plugin is a dependency for other plugins, including:
-- - nvim-telescope/telescope.nvim
-- - nvim-neo-tree/neo-tree.nvim
return {
  'nvim-tree/nvim-web-devicons',
  lazy = true,
  enabled = vim.g.have_nerd_font,
}