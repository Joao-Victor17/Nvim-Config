# 🧠 Neovim Configuration (Lua + VimScript)

Personal Neovim setup, modularized and organized with support for LSP, autocompletion, snippets, Telescope and more.

## 📦 Plugins

Plugin Manager: [vim-plug](https://github.com/junegunn/vim-plug):

- **Theme**

  - [`sainnhe/sonokai`](https://github.com/sainnhe/sonokai) — elegant color scheme
  - [`vim-airline/vim-airline`](https://github.com/vim-airline/vim-airline) — statusline
  - [`preservim/nerdtree`](https://github.com/preservim/nerdtree) — file tree explorer

- **Utility Plugins**

  - [`jiangmiao/auto-pairs`](https://github.com/jiangmiao/auto-pairs) — automatic parentheses insertion
  - [`nvim-telescope/telescope.nvim`](https://github.com/nvim-telescope/telescope.nvim) — fuzzy finder

- **LSP and Autocompletion**

  - [`hrsh7th/nvim-cmp`](https://github.com/hrsh7th/nvim-cmp)
  - [`hrsh7th/cmp-nvim-lsp`](https://github.com/hrsh7th/cmp-nvim-lsp)
  - [`hrsh7th/cmp-buffer`](https://github.com/hrsh7th/cmp-buffer)
  - [`hrsh7th/vim-vsnip`](https://github.com/hrsh7th/vim-vsnip)
  - [`neovim/nvim-lspconfig`](https://github.com/neovim/nvim-lspconfig)

## 📂 Filetree

- `init.vim`: main settings file of nvim
- `settings.vim`: Global settings + Autocmd + Remaps
- `theme.vim`: Theme settings
- `vim-plug/plugins.vim`: Declared plugins
- `lua/plugins/cmp-config.lua`: nvim-cmp settings
- `lua/lsp/init.lua`: LSP's initialization
- `lua/lsp/handlers.lua`: keybindings e on\_attach
- `lua/lsp/{clangd, tsserver, jdtls}.lua`: Languages LSP

## 🛠 Requiremnts

- Neovim ≥ 0.7
- NerdFonts (Airline)
- Install desired LSP servers:
  - `clangd` for C/C++
  - `jdtls` for Java
  - `typescript-language-server` for JS/TS (`npm i -g typescript-language-server`)

## 🚀 Instalation

```bash
git clone https://github.com/seu-usuario/nvim-config ~/.config/nvim
nvim +PlugInstall +qall
```
---
