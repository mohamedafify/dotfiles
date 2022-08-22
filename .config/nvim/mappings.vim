noremap J o<esc>k
noremap K O<esc>j

noremap H ^
noremap L $

"move between pans"
nnoremap <Left>  <C-w>h
nnoremap <Down>  <C-w>j
nnoremap <Up> 	 <C-w>k
nnoremap <Right> <C-w>l

"tabs"
nnoremap <C-L>	gt
nnoremap <C-H>	gT
nnoremap <leader>tq :tabclose<CR>
nnoremap <leader>tl :tabm -1<CR>
nnoremap <leader>tr :tabm +1<CR>

"refresh"
nnoremap <leader>r :source ~/.config/nvim/init.vim<CR>
noremap <leader>p :source ~/.config/nvim/init.vim<CR>:PluginInstall<CR>

"flutter
nnoremap <leader>fr :FlutterRun<CR>
nnoremap <leader>fh :FlutterRestart<CR>
nnoremap <leader>fq :!killall -SIGKILL qemu-system-x86_64<CR>
nnoremap <silent><leader>fe :!flutter emulators --launch Pixel_4_XL_API_30<CR>
nnoremap <expr><silent><leader>fd ToggleFlutterDebug()

function! ToggleFlutterDebug()
	if bufwinnr("__Flutter_Output__") == -1
		return ":below new __Flutter_Output__\<CR> 10\<C-W>_"
	else
		return ":bd! __Flutter_Output__\<CR>"
	endif
endfunction

"folders
nnoremap <C-b> :NERDTreeToggle<CR>

"search files
nnoremap <C-F> :Files<CR>

"Coc
inoremap <silent><expr> <TAB> pumvisible() ? coc#_select_confirm() : "\<TAB>"
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> <leader>rn <Plug>(coc-rename)
nnoremap <silent> <C-K> :call <SID>show_documentation()<CR>

function! s:show_documentation()
	if (index(['vim','help'], &filetype) >= 0)
		execute 'h '.expand('<cword>')
	elseif (coc#rpc#ready())
		call CocActionAsync('doHover')
	else
		execute '!' . &keywordprg . " " . expand('<cword>')
	endif
endfunction
"DON'T USE noremap with <Plug>"


"git
nnoremap <leader>gc :Git commit<CR>
"nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gd :Git difftool -y --cached<CR>
nnoremap <leader>ge :Gedit<CR>
nnoremap <leader>gp :Git push<CR>
nnoremap <leader>gs :Git<CR>

"dubgging
nnoremap <silent> <leader>dc :lua require'dap'.continue()<CR>
nnoremap <silent> <leader>dq :lua require'dap'.stop()<CR>
nnoremap <silent> <leader>do :lua require'dap'.step_over()<CR>
nnoremap <silent> <leader>di :lua require'dap'.step_into()<CR>
nnoremap <silent> <leader>dt :lua require'dap'.step_out()<CR>
nnoremap <silent> <leader>db :lua require'dap'.toggle_breakpoint()<CR>
nnoremap <silent> <leader>dr :lua require'dap'.repl.open()<CR>
nnoremap <silent> <leader>dl :lua require'dap'.run_last()<CR>
nnoremap <silent> <leader>dd :lua require'dapui'.toggle()<CR>

func! FixFileIndentation()
	let l:winview = winsaveview()
	:norm gg=Gzz
	call winrestview(l:winview)
endf

"fix indentation
nnoremap <silent> <leader>fi :call FixFileIndentation()<CR>

"prettier
command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument
