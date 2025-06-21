source ~/.config/nvim/settings.vim
source ~/.config/nvim/vim-plug/auto-install-plug.vim
source ~/.config/nvim/vim-plug/plugins.vim
source ~/.config/nvim/theme.vim

lua require("plugins.cmp-config")
lua require("lsp").setup()

