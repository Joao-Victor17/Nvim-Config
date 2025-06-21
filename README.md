# 🧠 Neovim Config - Modular Setup (Lua + VimScript)

Configuração pessoal do Neovim, modularizada e organizada com suporte a LSP, autocompletar, snippets, Telescope e muito mais. Ideal para desenvolvimento em C, C++, JavaScript e Java.

## 📦 Plugins Usados

Gerenciados com [vim-plug](https://github.com/junegunn/vim-plug):

- **Interface**

  - [`sainnhe/sonokai`](https://github.com/sainnhe/sonokai) — tema elegante
  - [`vim-airline/vim-airline`](https://github.com/vim-airline/vim-airline) — statusline
  - [`preservim/nerdtree`](https://github.com/preservim/nerdtree) — navegador de arquivos

- **Produtividade**

  - [`jiangmiao/auto-pairs`](https://github.com/jiangmiao/auto-pairs) — inserção automática de parênteses
  - [`nvim-telescope/telescope.nvim`](https://github.com/nvim-telescope/telescope.nvim) — fuzzy finder

- **Autocompletar e LSP**

  - [`hrsh7th/nvim-cmp`](https://github.com/hrsh7th/nvim-cmp)
  - [`hrsh7th/cmp-nvim-lsp`](https://github.com/hrsh7th/cmp-nvim-lsp)
  - [`hrsh7th/cmp-buffer`](https://github.com/hrsh7th/cmp-buffer)
  - [`hrsh7th/vim-vsnip`](https://github.com/hrsh7th/vim-vsnip)
  - [`neovim/nvim-lspconfig`](https://github.com/neovim/nvim-lspconfig)

## 📂 Estrutura dos Arquivos

- `init.vim`: ponto de entrada principal
- `settings.vim`: configurações globais
- `theme.vim`: configurações de tema
- `vim-plug/plugins.vim`: plugins declarados
- `lua/plugins/cmp-config.lua`: configuração do nvim-cmp
- `lua/lsp/init.lua`: inicialização dos LSPs
- `lua/lsp/handlers.lua`: keybindings e on\_attach
- `lua/lsp/{clangd, tsserver, jdtls}.lua`: LSPs por linguagem

## 🛠 Requisitos

- Neovim ≥ 0.7
- NerdFonts (para Airline)
- Instalar servidores LSP desejados:
  - `clangd` para C/C++
  - `jdtls` para Java
  - `typescript-language-server` para JS/TS (`npm i -g typescript-language-server`)

## 🚀 Instalação

```bash
git clone https://github.com/seu-usuario/nvim-config ~/.config/nvim
nvim +PlugInstall +qall
```

---

Feito com ❤️ por [Seu Nome ou nick]

