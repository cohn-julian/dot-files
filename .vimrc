"leader
let mapleader = ","

" H and L as home/end
noremap H ^
noremap L $

"backup to special dir
set backupdir=~/vimtmp,.
set directory=~/vimtmp,.

"No - Highlight (:noh) as <c-l>
noremap <silent> <c-l> :nohls<cr><c-l>

" Always show line numbers, but only in current window.
set nu
set relativenumber
:au WinEnter * :setlocal relativenumber
:au WinEnter * :setlocal nu
:au WinLeave * :setlocal norelativenumber
:au WinLeave * :setlocal nonumber

" Automatically resize vertical splits.
:au WinEnter * :set winfixheight
:au WinEnter * :wincmd =

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" Show matching brackets when text indicator is over them
set showmatch

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Enable syntax highlighting
syntax enable

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%

" Keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv

"when you hit star don't move to the next one
nnoremap <silent> * :let stay_star_view = winsaveview()<cr>*:call winrestview(stay_star_view)<cr>

" Always show the status line
set laststatus=2

" remaps HTN to escape
inoremap htn <Esc>
cnoremap htn <Esc>

" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" , = or - for underline
map <leader>= mZyypVr=`Z
map <leader>- mZyypVr-`Z
map <leader>3 mZyypVr#`Z

"show command in bottom bar
set showcmd

 "Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null 

