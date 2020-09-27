" add any autocommands
if !exists("autocommands_loaded")
    let autocommands_loaded = 1

    " Magic command to strip trailing spaces from certain filetypes
    autocmd FileType c,cpp autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))
    " Set to 3 space soft tabs for C/C++
    autocmd FileType c,cpp set et sw=3 ts=3
endif

"plugins
call plug#begin(stdpath('data').'/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ludovicchabant/vim-gutentags'
Plug 'Shougo/deoplete.nvim'
Plug 'junegunn/vim-easy-align'
Plug 'iCyMind/NeoSolarized'
call plug#end()

"windows
set splitbelow
set splitright

"buffers
nnoremap <C-q> :b#<bar>bd#<CR>
nnoremap <C-p> :bp<CR>
nnoremap <C-n> :bn<CR>
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
set nohlsearch
set termguicolors
set number relativenumber
set statusline +=%{gutentags#statusline()}

"other
set encoding=utf-8
set path=**
set makeprg=scons
set grepprg=rg\ -n\ -t\ cpp
set colorcolumn=100

let g:deoplete#enable_at_startup = 1
let g:airline_theme='tomorrow'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:sneak#s_next = 1

"open quickfix window automatically
augroup qf
	autocmd!
	autocmd QuickFixCmdPost [^l]* cwindow
	autocmd QuickFixCmdPost l*    cwindow
	autocmd QuickFixCmdPost *     cwindow
	autocmd VimEnter        *     cwindow
augroup end
autocmd FileType qf wincmd J

"autosave on buffer leave
au BufLeave * silent! wa
