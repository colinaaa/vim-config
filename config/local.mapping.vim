" for Startify
nmap <leader>st :Startify<cr>

" saving
nmap <leader><leader> :w<cr>

" switch between current and last buffer
nmap <leader>. <c-^>

" clear highlighted search
nnoremap <space> :set hlsearch! hlsearch?<cr>

" map jk to esc
inoremap jk <ESC>

" Tab manage
nnoremap <silent> sh :<C-U>tabprevious<CR>
nnoremap <silent> sl :<C-U>tabnext<CR>

" Window manage
nnoremap <silent> se <C-w>o
