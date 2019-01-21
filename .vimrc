" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Vim will load $VIMRUNTIME/defaults.vim if the user does not have a vimrc.
" This happens after /etc/vim/vimrc(.local) are loaded, so it will override
" any settings in these files.
" If you don't want that to happen, uncomment the below line to prevent
" defaults.vim from being loaded.
" let g:skip_defaults_vim = 1

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
syntax on

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
"if filereadable("/etc/vim/vimrc.local")
"  source /etc/vim/vimrc.local
"endif


" MY STUFF
" settab space to 4
set tabstop=4 shiftwidth=4

" set better pane navigation
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

" better tab navigation
nnoremap <Tab> gt
nnoremap <S-Tab> gT

" Paste
map <C-v> "+p
vnoremap <C-c> "+y

" more natural split
set splitbelow
set splitright

" no stupid .swp everywhere
set noswapfile

" Latex stuff
let g:livepreview_previewer = 'mupdf'

" New command key
nmap ; :

" Keep cursor away from ends
set scrolloff=5

" Disable highlighting shit
let g:ycm_enable_diagnostic_highlighting = 0

" no fucking beeping
set noerrorbells

" Workman Remap
" hjkl -> yneo
" (Y)ank -> (H)aul
" Search (N)ext -> (J)ump
" (E)nd word -> brea(K) of word
" (O)pen new line -> (L)ine
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
