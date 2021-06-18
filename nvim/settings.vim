let mapleader=" "
filetype off

syntax enable
set encoding=utf-8
set laststatus=2
set noshowmode
set tabstop=4
set shiftwidth=4
set cursorline
set number
set noshowcmd
set ruler
set backspace=indent,eol,start
set relativenumber
set ignorecase
set smartcase
set autoread
set completeopt=menuone,preview
set complete+=kspell
let &showbreak = '↳'
set autoindent
set smartindent
set list
set nojoinspaces
set nocompatible
set inccommand=split
set showmatch
set hlsearch
set textwidth=79
set colorcolumn=120
set formatoptions+=j
set formatoptions+=n
set foldmethod=indent
set foldlevelstart=99
set shell=bash
set noswapfile
set termguicolors
set noexpandtab
set splitright
set wildmenu
set wildmode=list:full,full
set background=dark

"for some plugins to work
set hidden
set nobackup
set nowritebackup
set updatetime=300


"vim-flutter
let g:flutter_command= "~/development-kit/flutter/bin"
let g:flutter_hot_reload_on_save = 1
let g:flutter_hot_restart_on_save = 0
let g:flutter_show_log_on_run = 1 "__Flutter_Output__"

"folder management (nerdtree)
let g:NERDTreeGitStatusIndicatorMapCustom = {
\ 'Modified'  :'M',
\ 'Staged'    :'S',
\ 'Untracked' :'U',
\ 'Renamed'   :'R',
\ 'Unmerged'  :'═',
\ 'Deleted'   :'✖',
\ 'Dirty'     :'✗',
\ 'Ignored'   :'☒',
\ 'Clean'     :'✔︎',
\ 'Unknown'   :'?',
\ }
let g:NERDTreeGitStatusUseNerdFonts = 1
let g:NERDTreeGitStatusShowIgnored = 1

"Colorscheme
let g:gruvbox_material_background = 'soft'
let g:gruvbox_material_palette = 'original'
let g:gruvbox_material_diagnostic_line_highlight = 1

"snippets
let g:UltiSnipsEditSplit = "tabdo"

let g:airline_theme = 'gruvbox_material'
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_modified = '|'

let g:lsc_dart_sdk_path="~/development-kit/flutter/bin/cache/dart-sdk"
colorscheme gruvbox-material

