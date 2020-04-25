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
	autocmd FileType tex setlocal spell
	autocmd FileType javascript iabbrev cosnt const
augroup END
