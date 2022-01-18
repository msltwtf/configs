" Specify a directory for plugins
call plug#begin('~/.vim/plugged')
Plug 'lepture/vim-jinja'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'hashivim/vim-terraform'
Plug 'hashivim/vim-vagrant'
Plug 'joshdick/onedark.vim'
Plug 'juliosueiras/vim-terraform-completion'
Plug 'godlygeek/tabular'
Plug 'APZelos/blamer.nvim'
call plug#end()
let g:blamer_enabled = 1
let g:blamer_delay = 250
let g:python3_host_prog = expand('~/.config/nvim/venv/bin/python')
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

syntax on
set tabstop=2
set number
set rnu
set background=dark
set t_Co=256
set cursorline
filetype plugin indent on
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:.
set list
set expandtab
set shiftwidth=2
set softtabstop=2
set omnifunc=syntaxcomplete#Complete
set smarttab
set cindent
set tabstop=2
set shiftwidth=2
set expandtab
colorscheme onedark
