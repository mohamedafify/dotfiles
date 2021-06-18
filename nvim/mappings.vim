noremap J o<esc>k
noremap K O<esc>j

noremap H ^
noremap L $

"move between pans"
nnoremap <Left>  <C-w>h
nnoremap <Down>  <C-w>j
nnoremap <Up> 	 <C-w>k
nnoremap <Right> <C-w>l

"move between tabs"
nnoremap <C-L>	gT
nnoremap <C-H>	gt

"refresh"
nnoremap <leader>r :source ~/.config/nvim/init.vim<CR>
noremap <leader>p :source ~/.config/nvim/init.vim<CR>:PluginInstall<CR>

"flutter
nnoremap <leader>fr :FlutterRun<CR>
nnoremap <leader>fh :FlutterHotRestart<CR>
nnoremap <leader>fq :FlutterQuit<CR>
nnoremap <leader>fe :FlutterEmulatorsLaunch Pixel_4_XL_API_30<CR>
nnoremap <leader>fd :FlutterVisualDebug<CR>

"folders
nnoremap <C-b> :NERDTreeToggle<CR>

"search files
nnoremap <C-F> :Files<CR>

"Coc
inoremap <silent><expr> <TAB> pumvisible() ? coc#_select_confirm() : "\<TAB>"

nnoremap <silent> gd <Plug>(coc-definition)
nnoremap <silent> gy <Plug>(coc-type-definition)
nnoremap <silent> gi <Plug>(coc-implementation)
nnoremap <silent> gr <Plug>(coc-refrences)
nnoremap <silent> <leader>rn <Plug>(coc-rename)

"imap <tab> <Plug>(coc-snippets-expand)
" let g:UltiSnipsExpandTrigger = '<Nop>'
" let g:coc_snippet_next = '<TAB>'
" let g:coc_snippet_prev = '<S-TAB>'

"git
" nnoremap <leader>gc :Gcommit<CR>
" nnoremap <leader>gd :Gdiff<CR>
" nnoremap <leader>ge :Gedit<CR>
" nnoremap <leader>gp :Gpush<CR>
" nnoremap <leader>gs :Gstatus<CR>
