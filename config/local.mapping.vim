" for Startify
nnoremap <leader>st :Startify<cr>

" saving
nnoremap <leader><leader> :w<cr>

" switch between current and last buffer
nnoremap <leader>. <c-^>

" clear highlighted search
nnoremap <space> :set hlsearch! hlsearch?<cr>

" map jk to esc
inoremap jk <ESC>

" Tab manage
nnoremap <silent> sh :<C-U>tabprevious<CR>
nnoremap <silent> sl :<C-U>tabnext<CR>

" Window manage
nnoremap <silent> se <C-w>o

tnoremap <Esc> <C-\><C-n>
