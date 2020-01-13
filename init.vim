" add any autocommands
if !exists("autocommands_loaded")
    let autocommands_loaded = 1

    " Magic command to strip trailing spaces from certain filetypes
    autocmd FileType c,cpp autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))
    " Set to 3 space soft tabs for C/C++
    autocmd FileType c,cpp set et sw=3 ts=3
endif

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
nnoremap Y Bh
vnoremap Y Bh
nnoremap N }
vnoremap N }
nnoremap E {
vnoremap E {
nnoremap O El
vnoremap O El

"new line
nnoremap l o
vnoremap l o
nnoremap L O
vnoremap L O

"yank
nnoremap h y
vnoremap h y
onoremap h y
nnoremap H Y
vnoremap H Y

"search
nnoremap j n
vnoremap j n
nnoremap J N
vnoremap J N
set incsearch
set nohlsearch

"end word
nnoremap k e
vnoremap k e
nnoremap K E
vnoremap K E

"visual mode
nnoremap t v
nnoremap T V
nnoremap <C-t> <C-v>
nnoremap v <nop>
nnoremap V <nop>

"escape terminal
tnoremap <Esc> <C-\><C-n>

"concatenate lines
nnoremap <C-j> :join<Return>

"redo
nnoremap U <C-r>

"buffers
set hidden
nnoremap <Tab> :bnext<Return>
nnoremap <S-Tab> :bprevious<Return>
nnoremap <C-w> :bp <Bar> bd #<Return>

"windows
set splitbelow
set splitright
nnoremap <C-h> :sp<Return>
nnoremap <C-v> :vsp<Return>
noremap <C-y> <C-w>h
noremap <C-n> <C-w>j
noremap <C-e> <C-w>k
noremap <C-o> <C-w>l
nnoremap <C-.> <C-w>>
nnoremap <C-,> <C-w><lt>

"tags navigation
nnoremap <C-f> <C-t>
nnoremap <C-u> <C-]>

"colon key
noremap ; :
map : <nop>

"copy/paste
vnoremap <C-c> "+y
map      <C-v> "+gP

"no line wrapping
set nowrap
set textwidth=0
set wrapmargin=0

"no junk files
set noswapfile
set nobackup
set nowritebackup
set noundofile

"cursor
set scrolloff=10
set tabstop=4
set shiftwidth=4

"display
syntax on
colorscheme NeoSolarized
set termguicolors
set number relativenumber
set statusline +=%{gutentags#statusline()}

"other
set encoding=utf-8
cd C:\views

"plugins
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

"open quickfix window automatically
augroup qf
	autocmd!
	autocmd QuickFixCmdPost [^l]* cwindow
	autocmd QuickFixCmdPost l*    cwindow
	autocmd QuickFixCmdPost *     cwindow
	autocmd VimEnter        *     cwindow
augroup end


