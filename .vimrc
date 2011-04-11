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
set backspace=2
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
set statusline+=
set laststatus=2
set mouse=a " On!

" Command-T Options
let g:CommandTMaxFiles = 30000
let g:CommandTMaxHeight=10
let g:CommandTMatchWindowAtTop=1

" Syntastic Options
let g:syntastic_auto_loc_list=1

" Colors
set t_Co=16
colors ir_black

highlight MatchParen   cterm=bold      ctermfg=1     ctermbg=0
highlight OverLength   cterm=none      ctermfg=1     ctermbg=0
highlight Pmenu                                      ctermbg=8
highlight PmenuSel     cterm=bold      ctermfg=10    ctermbg=4
highlight PmenuThumb                   ctermfg=6
highlight Search       cterm=none      ctermfg=0     ctermbg=3
highlight StatusLine   cterm=bold      ctermfg=7     ctermbg=8
highlight StatusLineNC cterm=none      ctermfg=0     ctermbg=8
highlight ToDo         cterm=underline ctermfg=3     ctermbg=none


" Shortcuts
map \a :Ack
map \A "zyw:exe ":Ack ".@z<CR>
map \c :ccl<CR>:lcl<CR>
map \h :nohlsearch<CR>
map <C-k> <C-w>k
map <C-j> <C-w>j
map <C-l> <C-w>l
map <C-h> <C-w>h

map <Leader>y :echo system('echo -n '.shellescape(@").' \| npaste')<CR>

map <Leader>T :CommandTFlush<CR>

map <Leader>= :Tabularize /= <CR>
map <Leader>> :Tabularize /=><CR>
map <Leader>, :Tabularize /,\zs<CR>

" Anti-shortcuts
map <S-k> k<S-j>$
map <S-y> y$
map <F1> :echo "F1 is for racing"<CR>

autocmd VimEnter COMMIT_EDITMSG :call cursor(1,1)
autocmd BufWritePre * :%s/\s\+$//e " Remove trailing whitespace
autocmd WinEnter,BufRead * match OverLength /\%81v.\+/
autocmd VimLeave * !clear
