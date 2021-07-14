" Commment one line (Controle /)
autocmd FileType *						nnoremap <buffer> <C-_> 0i# <esc>
autocmd FileType vim					nnoremap <buffer> <C-_> 0i" <esc>
autocmd FileType nasm					nnoremap <buffer> <C-_> 0i; <esc>
autocmd FileType c,cpp,dart,javascript	nnoremap <buffer> <C-_> 0i// <esc>
autocmd FileType css					nnoremap <buffer> <C-_> 0i/* <End> */<esc>
autocmd FileType html					nnoremap <buffer> <C-_> 0i<!-- <End> --><esc>
autocmd FileType lua					nnoremap <buffer> <c-_> 0i-- <esc>

" Uncomment one line (Shift /)
autocmd FileType *						nnoremap <buffer> ? :s/^# /<CR>
autocmd FileType vim					nnoremap <buffer> ? :s/^" /<CR>
autocmd FileType nasm					nnoremap <buffer> ? :s/^; /<CR>
autocmd FileType c,cpp,dart,javascript	nnoremap <buffer> ? :s/^\/\/ /<CR>:noh<CR>
autocmd FileType c						nnoremap <buffer> <Leader>? :s/^/* /<CR>:s/ */$/<CR>
autocmd FileType css					nnoremap <buffer> ? :s/^/* /<CR>:s/ */$/<CR>
autocmd FileType html					nnoremap <buffer> ? :s/^<!-- /<CR>:s/ -->$/<CR>
autocmd FileType lua					nnoremap <buffer> ? :s/^-- /<CR>:noh<CR>

" Commment selected lines (Controle /)
autocmd FileType *						vnoremap <buffer> <C-_> <Home><C-v>I# <esc><esc>
autocmd FileType vim					vnoremap <buffer> <C-_> <Home><C-v>I" <esc><esc>
autocmd FileType nasm					vnoremap <buffer> <C-_> <Home><C-v>I; <esc><esc>
autocmd FileType c,cpp,dart,javascript	vnoremap <buffer> <C-_> <Home><C-v>I// <esc><esc>
autocmd FileType lua					nnoremap <buffer> <c-_> <Home><C-v>I-- <esc>

" Uncomment selected lines (Shift /)
autocmd FileType *						vnoremap <buffer> ? :s/^# /<CR>:noh<CR>
autocmd FileType vim					vnoremap <buffer> ? :s/^" /<CR>:noh<CR>
autocmd FileType nasm					vnoremap <buffer> ? :s/^; /<CR>:noh<CR>
autocmd FileType c,cpp,dart,javascript	vnoremap <buffer> ? :s/^\/\/ /<CR>:noh<CR>
autocmd FileType lua					nnoremap <buffer> ? :s/^-- /<CR>:noh<CR>

