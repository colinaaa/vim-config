set colorcolumn=+0      " Column highlight at textwidth's max character-limit
set number

set scrolloff=10
set sidescrolloff=15
set cmdheight=1

let g:tex_flavor = 'tex'

call textobj#user#plugin('line', {
\   '-': {
\     'select-a-function': 'CurrentLineA',
\     'select-a': 'al',
\     'select-i-function': 'CurrentLineI',
\     'select-i': 'il',
\   },
\ })

function! CurrentLineA()
  normal! 0
  let head_pos = getpos('.')
  normal! $
  let tail_pos = getpos('.')
  return ['v', head_pos, tail_pos]
endfunction

function! CurrentLineI()
  normal! ^
  let head_pos = getpos('.')
  normal! g_
  let tail_pos = getpos('.')
  let non_blank_char_exists_p = getline('.')[head_pos[2] - 1] !~# '\s'
  return
  \ non_blank_char_exists_p
  \ ? ['v', head_pos, tail_pos]
  \ : 0
endfunction

set expandtab
set fileencoding=utf-8
set fileencodings=utf-8,prc
lang en_US.UTF-8

augroup ft_g
	autocmd!
	autocmd FileType tex setlocal spell spelllang=en_us,cjk
  autocmd FileType * iabbrev falg flag
  autocmd FileType javascript iabbrev constractor constructor
	autocmd FileType javascript,cpp iabbrev cosnt const
	autocmd FileType cpp iabbrev slef self
	autocmd FileType cpp iabbrev #i #include
	autocmd FileType cpp iabbrev #d #define
	autocmd FileType go setlocal omnifunc=go#complete#Complete
augroup END

let g:python3_host_prog='/usr/local/bin/python3'

let tex_conceal='abg'

let g:swim_on_ft=['tex', 'markdown', '']

let g:vista_default_executive = 'vim_lsp'
