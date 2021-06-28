" Tim's config for NVIM "
let mapleader = "."

""" List all plugins
call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'yggdroot/indentline'
Plug 'bling/vim-airline'
Plug 'ap/vim-css-color'
Plug 'jreybert/vimagit'
Plug 'vimwiki/vimwiki'
Plug 'tpope/vim-commentary'
Plug 'kovetskiy/sxhkd-vim'
Plug 'junegunn/goyo.vim'
call plug#end()

""" User Configuration
" Basics
set encoding=utf-8
set number relativenumber

" Disable automatic commenting on new line
autocmd Filetype * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Delete all trailing whitespace and new lines at the end of file on save
" autocmd BufWritePre * %s/\s\+$//e
" autocmd BufWritePre * %s/\n\+\%$//e

""" Plugin Configuration
" Goyo
map <leader>f :Goyo \| set bg=light \| set linebreak<CR>

" NerdTree
map <leader>n :NERDTreeToggle<CR>
""" User Keybindings
map <leader>o :setlocal spell! spelllang=en_us<CR>
