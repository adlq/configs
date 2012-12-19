" Not compatible mode
set nocompatible

set autoindent
" Display a match for a search pattern when halfway typing it
set incsearch

" Runtime Path Manipulation by Pathogen
call pathogen#infect()
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

" Hide modification buffers
set hidden

" No backup no swap
set nobackup
set noswapfile

" Remap Leader key
let mapleader=","

" Remap Esc key
:imap jj <Esc>

" Remap : to ; to save keystroke
nnoremap ; :

" Remap to naturally jump between lines 
nnoremap j gj
nnoremap k gk

" Automatic reloading of ~/.vimrc
autocmd! bufwritepost .vimrc source %

" Better Copy & Paste 
set pastetoggle=<F2>
set clipboard=unnamed
map <leader>p <S-Insert>

" Show line numbers and length
set number 	" line numbers
set wrap 
set textwidth=110
"set tw=80 	" width of document (used by gd)
"set fo-=t 	" don't automatically wrap text when typing 
set colorcolumn=110
highlight ColorColumn ctermbg=233

" Reselect visual block after indent/outdent
vnoremap < <gv 
vnoremap > >gv

" Misc.
syntax on
filetype plugin indent on
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"
set hlsearch
set runtimepath=~/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,~/.vim/after

" Text colors
highlight LineNr ctermfg=gray
highlight Normal ctermfg=white

" Automatically reload .vimrc when it's saved
au BufWritePost .vimrc so ~/.vimrc
" Quickly edit and reload .vimrc
nmap <silent> <leader>ev :e $MYVIMRC<CR>

" Clear search highlight
nmap <silent> <leader>/ :nohlsearch<CR>

