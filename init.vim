
"plugins
call plug#begin(stdpath('data').'/plugged')
Plug 'vim-airline/vim-airline'
Plug 'Shougo/deoplete.nvim'
Plug 'junegunn/vim-easy-align'
Plug 'overcache/NeoSolarized'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf'
Plug 'kassio/neoterm'
call plug#end()

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:deoplete#enable_at_startup = 1

"windows
set splitbelow
set splitright

"buffers
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

"cursor
set scrolloff=10
set tabstop=4
set shiftwidth=4

"display
syntax on
colorscheme NeoSolarized
"set nohlsearch
set termguicolors
set number relativenumber
"set statusline +=%{gutentags#statusline()}

"other
set encoding=utf-8
"set path=**
"set makeprg=scons
set grepprg=rg\ --type-add\ mytype:*.{asn,fakes,module,opt,yang,csv,py,txt}\ -n\ -tcpp\ -tc\ -tmytype
set colorcolumn=100
set clipboard+=unnamedplus

"set guifont=Consolas:h12

