"movement
nnoremap y h
vnoremap y h
nnoremap n j
vnoremap n j
nnoremap e k
vnoremap e k
nnoremap o l
vnoremap o l

"shifted movement
nnoremap Y 0
vnoremap Y 0
nnoremap N }
vnoremap N }
nnoremap E {
vnoremap E {
nnoremap O $
vnoremap O $

"new line
nnoremap l o
vnoremap l o
nnoremap L O
vnoremap L O

"search
nnoremap j n
vnoremap j n
nnoremap J N
vnoremap J N

"yank
nnoremap h y
vnoremap h y
onoremap h y
nnoremap H Y
vnoremap H Y

"end word
nnoremap k e
vnoremap k e
nnoremap K E
vnoremap K E

"visual
nnoremap t v
nnoremap T V
nnoremap <C-t> <C-v>
nnoremap v <nop>
nnoremap V <nop>

"semicolon
noremap ; :
map : <nop>

"window navigation
set splitbelow
set splitright
nnoremap <C-h> :sp <Return>
nnoremap <C-v> :vsp <Return>
noremap <C-y> <Esc><C-w>h
noremap <C-n> <Esc><C-w>j
noremap <C-e> <Esc><C-w>k
noremap <C-o> <Esc><C-w>l
noremap <C-s> <C-w>r

"buffers
nnoremap <C-w> :bp <Bar> bd #<Return>
nnoremap <Tab> :bnext <Return>
nnoremap <S-Tab> :bprevious <Return>

"tags
nnoremap <C-f> <C-t>
nnoremap <C-u> <c-]>

"escape terminal
tnoremap <Esc> <c-\><c-n>

"hidden buffers
set hidden

"no line wrapping
set nowrap
set textwidth=0
set wrapmargin=0

"no junk files
set noswapfile
set nobackup
set nowritebackup
set noundofile

"cursor settings
set scrolloff=10
set tabstop=4
set shiftwidth=4

"line numbers
set number relativenumber

"search settings
set incsearch
set nohlsearch

"colours
syntax on

"encoding
set encoding=utf-8

"colourscheme
colorscheme NeoSolarized
set termguicolors
set background=dark

"open quickfix automatically
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow
autocmd FileType qf wincmd J

"plugins
call plug#begin('~/.config/nvim/plugged')
Plug 'Shougo/deoplete.nvim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/vim-easy-align'
Plug 'ludovicchabant/vim-gutentags'
Plug 'kassio/neoterm'
call plug#end()

let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#buffer_nr_show=1
let g:airline#extensions#tabline#fnamemod=':t'
let g:airline_theme='tomorrow'
let g:deoplete#enable_at_startup=1
