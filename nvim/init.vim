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
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'iamcco/markdown-preview.nvim'
Plug 'dense-analysis/ale'
Plug 'pearofducks/ansible-vim', { 'do': './UltiSnips/generate.sh' }
Plug 'fatih/vim-go'
Plug 'tpope/vim-fugitive'
call plug#end()
let g:blamer_enabled = 1
let g:blamer_delay = 250
let g:python3_host_prog = expand('~/.config/nvim/venv/bin/python')
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:NERDTreeIgnore = ['^node_modules$', 'venv']
let g:NERDTreeGitStatusWithFlags = 1
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:coc_global_extensions = [
  \ 'coc-pairs',
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ 'coc-git',
  \ 'coc-yaml',
  \ 'coc-markdownlint'
  \ ]
" from readme
" if hidden is not set, TextEdit might fail.
set hidden
set updatetime=300


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

let g:ansible_unindent_after_newline = 1
"let g:ansible_yamlKeyName = 'yamlKey'
"let g:ansible_attribute_highlight = "a"
"let g:ansible_name_highlight = 'd'
"let g:ansible_extra_keywords_highlight = 1
"let g:ansible_extra_keywords_highlight_group = 'Statement'
"let g:ansible_normal_keywords_highlight = 'Constant'
"let g:ansible_loop_keywords_highlight = 'Constant'
"let g:ansible_template_syntaxes = { '*.rb.j2': 'ruby' }
"let g:ansible_ftdetect_filename_regex = '\v(playbook|site|main|local|requirements)\.ya?ml$'
"
