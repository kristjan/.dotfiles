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
set statusline=%f%m%r%h%w\ %Y\ %03l/%03L\ %02v\ %=\ %n\ "
set laststatus=2
set mouse=a " On!

" Colors
set t_Co=256
highlight MatchParen cterm=bold      ctermfg=none  ctermbg=none
highlight Search     cterm=none      ctermfg=0     ctermbg=3
highlight ToDo       cterm=underline ctermfg=3     ctermbg=none
highlight Pmenu                                    ctermbg=8
highlight PmenuSel   cterm=bold      ctermfg=10    ctermbg=4
highlight PmenuThumb                 ctermfg=6

" Shortcuts
map \h :nohlsearch<CR>

" Remove trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

" Plugins
  " CheckSyntax
  let g:checksyntax_auto_ruby=1

  " Command-T Options
  let g:CommandTMaxHeight=10
  let g:CommandTMatchWindowAtTop=1

