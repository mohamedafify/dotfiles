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
set shell=zsh
set noswapfile
set termguicolors
set noexpandtab
set splitright
set wildmenu
set wildmode=list:full,full
set background=dark
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set clipboard=unnamedplus

"for some plugins to work
set hidden
set nobackup
set nowritebackup
set updatetime=300
set shortmess+=c

set completeopt-=preview "prevent showing preview when autocompleting"

if has("nvim-0.5.0") || has("patch-8.1.1564")
	" Recently vim can merge signcolumn and number column into one
	set signcolumn=number
else
	set signcolumn=yes
endif

"dart
let g:dart_format_on_save = 0

"flutter
let g:flutter_command = "$HOME/development-kit/flutter/bin/flutter"

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

"snippets
let g:UltiSnipsEditSplit = "tabdo"
let g:UltiSnipsExpandTrigger = '<Nop>'
let g:coc_snippet_next = '<TAB>'
let g:coc_snippet_prev = '<S-TAB>'

"git symbols inside file
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_modified = '|'

"colorscheme
let g:airline_theme = 'onedark'
colorscheme onedark

"markdown
let g:mkdp_auto_start = 1
let g:mkdp_auto_close = 0

"debugging
lua << EOF
local dap = require('dap')

dap.adapters.dart = {
	type = "executable";
	command = "node";
	args = {"/home/mohamed/.config/nvim/bundle/dart-code/out/dist/debug.js", "flutter"};
	}

dap.configurations.dart = {
	{
			type = "dart",
			request = "launch",
			name = "Launch flutter",
			dartSdkPath = "/home/mohamed/development-kit/flutter/bin/cache/dart-sdk/",
			flutterSdkPath = "/home/mohamed/development-kit/flutter",
			program = "${workspaceFolder}/lib/main.dart",
			cwd = "${workspaceFolder}",
	}
	}
vim.fn.sign_define('DapBreakpoint', {text='🟥', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapStopped', {text='⭐️', texthl='', linehl='', numhl=''})

require("dapui").setup()
require("flutter-tools").setup {
	debugger = {
		enabled = true,
	}
}
EOF

"auto closing tags
