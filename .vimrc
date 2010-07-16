filetype off

call pathogen#runtime_append_all_bundles()

syntax on
filetype plugin indent on

" Mess with .vimrc
map ,v :sp ~/.vimrc<CR><C-W>_
map <silent> ,V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

" Window geometry
map \w :set lines=86<CR> :set columns=161<CR>
map \W :set lines=24<CR> :set columns=80<CR>

" Text formatting
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set textwidth=80

" Search
set ignorecase
set smartcase " Case sensitive if you type an uppercase letter
set incsearch

" UI
set wildmenu
set statusline=%f%m%r%h%w\ %Y\ %03l/%03L\ %02v
set laststatus=2
hi MatchParen cterm=bold ctermbg=none ctermfg=none

" Command-T Options
let g:CommandTMaxHeight=10
let g:CommandTMatchWindowAtTop=1
