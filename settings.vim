" Global Sets """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

syntax on            " Enable syntax highlight
set nu               " Enable line numbers
set tabstop=4        " Show existing tab with 4 spaces width
set softtabstop=4    " Show existing tab with 4 spaces width
set shiftwidth=4     " When indenting with '>', use 4 spaces width
set expandtab        " On pressing tab, insert 4 spaces
set smarttab         " insert tabs on the start of a line according to shiftwidth
set smartindent      " Automatically inserts one extra level of indentation in some cases
set hidden           " Hides the current buffer when a new file is openned
set incsearch        " Incremental search
set ignorecase       " Ingore case in search
set smartcase        " Consider case if there is a upper case character
set scrolloff=8      " Minimum number of lines to keep above and below the cursor
set colorcolumn=100  " Draws a line at the given line to keep aware of the line size
set signcolumn=yes   " Add a column on the left. Useful for linting
set cmdheight=2      " Give more space for displaying messages
set updatetime=100   " Time in miliseconds to consider the changes
set encoding=utf-8   " The encoding should be utf-8 to activate the font icons
set nobackup         " No backup files
set nowritebackup    " No backup files
set splitright       " Create the vertical splits to the right
set splitbelow       " Create the horizontal splits below
set autoread         " Update vim after file update from outside
set mouse=a          " Enable mouse support
filetype on          " Detect and set the filetype option and trigger the FileType Event
filetype plugin on   " Load the plugin file for the file type, if any
filetype indent on   " Load the indent file for the file type, if any
syntax on 

set completeopt=menuone,noselect

au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

" You can't stop me
cmap w!! w !sudo tee %

let g:markdown_fenced_languages = [
      \ 'vim',
      \ 'help'
      \]

let g:loaded_perl_provider = 0

" Remaps """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader = " "

"""Abrir Terminal """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <A-t> :terminal<CR>

""" Abrir e Fechar o NERDTREE """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <C-b> :NERDTreeToggle<CR>

""" Mudar de janela ativa """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <Leader>h <C‑w>h
nnoremap <Leader>j <C‑w>j
nnoremap <Leader>k <C‑w>k
nnoremap <Leader>l <C‑w>l

""" Utilizar o Telescope  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>ff :Telescope find_files<CR>
nnoremap <leader>fg :Telescope live_grep<CR>
nnoremap <leader>fb :Telescope buffers<CR>
nnoremap <leader>fh :Telescope help_tags<CR>

""" Troca entre os buffers ativos """""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <Leader>bn :bnext<CR>
nnoremap <Leader>bp :bprevious<CR>

""" Redimensiona a janela ativa  """""""""""""""""""""""""""''"""""""""""""""""""""""""""
nnoremap <Up>    :resize +2<CR>
nnoremap <Down>  :resize -2<CR>
nnoremap <Left>  :vertical resize -2<CR>
nnoremap <Right> :vertical resize +2<CR>

""" Salva/Fecha o arquivo  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>x :x<CR>

""" Mover as linhas """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <A-k> :m .-2<CR>==
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
nnoremap <A-j> :m .+1<CR>==
