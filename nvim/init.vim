set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin("~/.config/nvim/bundle")

Plugin 'VundleVim/Vundle.vim'

"Dart
Plugin 'natebosch/dartlang-snippets'
Plugin 'dart-lang/dart-vim-plugin'
Plugin 'natebosch/vim-lsc-dart'
Plugin 'thosakwe/vim-flutter'

"autocompele
Plugin 'neoclide/coc.nvim'

"Colorscheme
Plugin 'sainnhe/gruvbox-material'

"folder management
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

"Git
Plugin 'airblade/vim-gitgutter'

"search files
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/fzf'

"Snippets
Plugin 'SirVer/ultisnips'

Plugin 'jiangmiao/auto-pairs'
Plugin 'natebosch/vim-lsc'

call vundle#end()
filetype plugin indent on

source ~/.config/nvim/settings.vim
source ~/.config/nvim/mappings.vim
source ~/.config/nvim/comment.vim
