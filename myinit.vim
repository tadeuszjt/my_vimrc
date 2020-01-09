set encoding=utf-8

call plug#begin(stdpath('data').'/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'Shuogo/deoplete.nvim'
call plug#end()

let g:deoplete#enable_at_startup = 1
let g:airline_theme='tomorrow'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#fnamemod = ':t'

" no line wrapping
set nowrap
set textwidth=0
set wrapmargin=0

" no junk files
set noswapfile
set nobackup
set nowritebackup
set noundofile

" keep cursor away from ends
set scrolloff=10
set tabstop=4
set shiftwidth=4

noremap ; :
map : <nop>

" buffer navigation
nnoremap <Tab>   :bnext <CR>
nnoremap <S-Tab> :bprevious <CR>

" section jumping
noremap { [[zz
noremap } ]]zz
noremap [ {
noremap ] }

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
noremap O f<space>
nnoremap j n
vnoremap j n
nnoremap n j
vnoremap n j
nnoremap J N
vnoremap J N
noremap N }
nnoremap k e
vnoremap k e
nnoremap e k
vnoremap e k
nnoremap K E
vnoremap K E
noremap E {
nnoremap h y
onoremap h y
vnoremap h y
nnoremap y h
vnoremap y h
noremap H Y
noremap Y F<space>

" use t for visual
nnoremap t v
nnoremap T V
nnoremap <C-t> <C-v>
nnoremap v <nop>
nnoremap V <nop>

"vim splits
set splitbelow
set splitright
nnoremap <C-h> :sp <CR>
nnoremap <C-v> :vsp <CR>
noremap <C-Y> <C-W><C-H>
noremap <C-N> <C-W><C-J>
noremap <C-E> <C-W><C-K>
noremap <C-O> <C-W><C-L>

nnoremap <C-w> :bp <BAR> bd #<CR>

"tags navigation
nnoremap <C-F> <C-T>
nnoremap <C-U> <C-]>

"escape terminal
tnoremap <Esc> <C-\><C-n>

"line numbers
set number relativenumber

"search for selected text
vnoremap // y/<C-R>"<CR>

"open quickfix window automatically
augroup qf
	autocmd!
	autocmd QuickFixCmdPost [^l]* cwindow
	autocmd QuickFixCmdPost l*    cwindow
	autocmd QuickFixCmdPost *     cwindow
	autocmd VimEnter        *     cwindow
augroup end

"incsearch
set incsearch
set nohlsearch

syntax on
colorscheme NeoSolarized

" this allows buffers to hide when modified
set hidden

set statusline+=%{gutentags#statusline()}
