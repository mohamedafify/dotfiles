set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin("~/.config/nvim/bundle")

Plugin 'VundleVim/Vundle.vim'

"Debuging
Plugin 'mfussenegger/nvim-dap'
Plugin 'rcarriga/nvim-dap-ui'
Plugin 'dart-code/dart-code'

"Dart
Plugin 'dart-lang/dart-vim-plugin'
Plugin 'natebosch/dartlang-snippets'

"JavaScript
Plugin 'yuezk/vim-js'
Plugin 'MaxMellon/vim-jsx-pretty'

"Flutter
Plugin 'akinsho/flutter-tools.nvim'
Plugin 'nvim-lua/plenary.nvim'

"autocompele
Plugin 'neoclide/coc.nvim'

"Colorscheme
Plugin 'sainnhe/gruvbox-material'
Plugin 'joshdick/onedark.vim'

"folder management
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

"Git
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'

"search files
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/fzf'

"syntax checking
Plugin 'vim-syntastic/syntastic'

"markdown
Plugin 'iamcco/markdown-preview.nvim'

"General
Plugin 'vim-airline/vim-airline'
Plugin 'andymass/vim-matchup'
Plugin 'jiangmiao/auto-pairs'
Plugin 'honza/vim-snippets'

call vundle#end()
filetype plugin indent on

