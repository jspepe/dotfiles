let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/code/books/css-in-depth-2/ch01
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +2 ~/.config/nvim/sessions/css-in-depth-ch01.vim
badd +20 listing-1.01.html
badd +1 listing-1.02.html
badd +1 listing-1.03.html
badd +1 listing-1.04.html
badd +3 term://~/code/books/css-in-depth-2/ch01//15831:/bin/bash
badd +1 term://~/code/books/css-in-depth-2/ch01//15883:/bin/bash
argglobal
%argdel
$argadd listing-1.01.html
set stal=2
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit listing-1.01.html
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 30 + 45) / 91)
exe 'vert 2resize ' . ((&columns * 60 + 45) / 91)
argglobal
enew
file NvimTree_1
balt listing-1.01.html
setlocal foldmethod=manual
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
lcd /
wincmd w
argglobal
balt ~/code/books/css-in-depth-2/ch01/listing-1.04.html
setlocal foldmethod=manual
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
silent! normal! zE
let &fdl = &fdl
let s:l = 20 - ((19 * winheight(0) + 22) / 44)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 20
normal! 07|
wincmd w
exe 'vert 1resize ' . ((&columns * 30 + 45) / 91)
exe 'vert 2resize ' . ((&columns * 60 + 45) / 91)
tabnext
argglobal
if bufexists(fnamemodify("term://~/code/books/css-in-depth-2/ch01//15831:/bin/bash", ":p")) | buffer term://~/code/books/css-in-depth-2/ch01//15831:/bin/bash | else | edit term://~/code/books/css-in-depth-2/ch01//15831:/bin/bash | endif
if &buftype ==# 'terminal'
  silent file term://~/code/books/css-in-depth-2/ch01//15831:/bin/bash
endif
balt ~/code/books/css-in-depth-2/ch01/listing-1.01.html
setlocal foldmethod=manual
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
let s:l = 3 - ((1 * winheight(0) + 22) / 44)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 3
normal! 0
tabnext
argglobal
if bufexists(fnamemodify("term://~/code/books/css-in-depth-2/ch01//15883:/bin/bash", ":p")) | buffer term://~/code/books/css-in-depth-2/ch01//15883:/bin/bash | else | edit term://~/code/books/css-in-depth-2/ch01//15883:/bin/bash | endif
if &buftype ==# 'terminal'
  silent file term://~/code/books/css-in-depth-2/ch01//15883:/bin/bash
endif
balt term://~/code/books/css-in-depth-2/ch01//15831:/bin/bash
setlocal foldmethod=manual
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
let s:l = 44 - ((43 * winheight(0) + 22) / 44)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 44
normal! 0
tabnext 1
set stal=1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
