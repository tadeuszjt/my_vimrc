source $VIMRUNTIME/vimrc_example.vim

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg1 = substitute(arg1, '!', '\!', 'g')
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg2 = substitute(arg2, '!', '\!', 'g')
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let arg3 = substitute(arg3, '!', '\!', 'g')
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      if empty(&shellxquote)
        let l:shxq_sav = ''
        set shellxquote&
      endif
      let cmd = '"' . $VIMRUNTIME . '\diff"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  let cmd = substitute(cmd, '!', '\!', 'g')
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
  if exists('l:shxq_sav')
    let &shellxquote=l:shxq_sav
  endif
endfunction

"my stuff
" for viavi
if !exists("autocommands_loaded")
    let autocommands_loaded = 1
    " Magic command to strip trailing spaces from certain filetypes
    autocmd FileType c,cpp autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))
    " Set to 3 space soft tabs for C/C++
    autocmd FileType c,cpp set et sw=3 ts=3
endif

set guifont=Consolas:h11
map ; :

" no line wrapping shite
set nowrap
set textwidth=0
set wrapmargin=0

" no junk files
set noswapfile
set nobackup
set nowritebackup
set noundofile

" keep cursor away from ends
set scrolloff=9

set tabstop=4
set shiftwidth=4

" set better pane navigation
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

" better tab navigation
nnoremap <C-t> :tabedit <CR>
nnoremap <Tab> gt
nnoremap <S-Tab> gT

" Workman Remap
" hjkl -> yneo
" (Y)ank -> (H)aul
" Search (N)ext -> (J)ump
" (E)nd word -> brea(K) of word
" (O)pen new line -> (L)ine
" jJ -> Search forwards/backwards
nnoremap l o
vnoremap l o
nnoremap o l
vnoremap o l
nnoremap L O
vnoremap L O
nnoremap O L
vnoremap O L
nnoremap j n
vnoremap j n
nnoremap n j
vnoremap n j
nnoremap J N
vnoremap J N
nnoremap N J
vnoremap N J
nnoremap k e
vnoremap k e
nnoremap e k
vnoremap e k
nnoremap K E
vnoremap K E
nnoremap E <nop>
vnoremap E <nop>
nnoremap h y
onoremap h y
vnoremap h y
nnoremap y h
vnoremap y h
nnoremap H Y
vnoremap H Y
nnoremap Y H
vnoremap Y H

"nicer for my hands
nnoremap t v
nnoremap T V
nnoremap v <nop>
nnoremap V <nop>

"vim splits
set splitbelow
set splitright
nnoremap <C-Y> <C-W><C-H>
nnoremap <C-N> <C-W><C-J>
nnoremap <C-E> <C-W><C-K>
nnoremap <C-O> <C-W><C-L>
nnoremap <C-s> :w <CR>
nnoremap <C-w> :q <CR>
nnoremap <C-h> :Vexplore! <CR>

"working directory always current file
set autochdir

"line numbers
set number
