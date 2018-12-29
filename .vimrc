" Plugins
call plug#begin('~/.vim/bundle')
Plug 'Lokaltog/vim-easymotion'
Plug 'Townk/vim-autoclose'
Plug 'briancollins/vim-jst'
Plug 'cakebaker/scss-syntax.vim'
Plug 'elixir-lang/vim-elixir'
Plug 'fatih/vim-go'
Plug 'godlygeek/tabular'
Plug 'groenewege/vim-less'
Plug 'jgdavey/vim-blockle'
Plug 'kchmck/vim-coffee-script'
Plug 'kien/ctrlp.vim'
Plug 'kristjan/scrimmage'
Plug 'kristjan/vim-human-dates'
Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim'
Plug 'michaeljsmith/vim-indent-object'
Plug 'mileszs/ack.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/syntastic'
Plug 'suan/vim-instant-markdown'
Plug 'tmhedberg/matchit'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'vim-python/python-syntax'
Plug 'vim-ruby/vim-ruby'
Plug 'vim-scripts/InsertChar'
Plug 'vim-scripts/jQuery'
Plug 'vimwiki/vimwiki'
Plug 'walm/jshint.vim'
Plug 'wesQ3/vim-windowswap'
Plug 'wgibbs/vim-irblack'
call plug#end()

set nocompatible

if $VIM_CRONTAB == "true"
  set nobackup
  set nowritebackup
endif

set fileformat=unix

function! TrimSpace()
    let save_cursor = getpos(".")
    :silent! %s/\s\+$//e          " Trailing whitespace
    :silent! %s/\($\n\s*\)\+\%$// " Blank lines at end
    call setpos('.', save_cursor)
endfunction

" Colors
colors ir_black

set t_ti= t_te=

let mapleader = ';'

" Mess with .vimrc
map <Leader>v :sp ~/.vimrc<CR><C-W>_
map <silent> <Leader>V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

" Window geometry
map \w :set lines=86<CR> :set columns=161<CR>
map \W :set lines=24<CR> :set columns=80<CR>
set splitbelow
set splitright

" Text formatting
set backspace=2
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set textwidth=80
set colorcolumn=+1

" Search
set ignorecase
set smartcase " Case sensitive if you type an uppercase letter
set incsearch
set hlsearch

" UI
set wildmenu
set statusline=%f%m%r%h%w\ %Y\ %03l/%03L\ %02v\ %=\ %n\ "
set statusline+=
set laststatus=2
set mouse= " Off!

" Ignore files
set wildignore=node_modules/*,*/node_modules/*,tmp/*

" Ack options
if executable('ag')
  let g:ackprg = 'ag --vimgrep --smart-case'
endif

" Blockle options
let g:blockle_mapping = '<Leader>d'

" CtrlP / Command-T
map <Leader>t <C-P>
map <Leader>b :CtrlPBuffer<CR>

" Gist options
let g:gist_clip_command = 'pbcopy'
let g:gist_post_private = 1
let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1

" JSLint Options
let $JS_CMD = 'node'

" Syntastic Options
let g:syntastic_auto_loc_list=1
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['cpp', 'go'] }
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']


highlight MatchParen   cterm=bold      ctermfg=1     ctermbg=0
highlight OverLength   cterm=none      ctermfg=1     ctermbg=0
highlight Pmenu                                      ctermbg=8
highlight PmenuSel     cterm=bold      ctermfg=10    ctermbg=4
highlight PmenuThumb                   ctermfg=6
highlight Search       cterm=none      ctermfg=0     ctermbg=3
highlight StatusLine   cterm=bold      ctermfg=7     ctermbg=8
highlight StatusLineNC cterm=none      ctermfg=0     ctermbg=8
highlight ToDo         cterm=underline ctermfg=3     ctermbg=none
highlight ColorColumn  cterm=none      ctermfg=1     ctermbg=233

" Markdown
highlight htmlItalic   cterm=none      ctermfg=6     ctermbg=0

" Shortcuts
map <C-k> <C-w>k
map <C-j> <C-w>j
map <C-l> <C-w>l
map <C-h> <C-w>h
" vim-windowswap
let g:windowswap_map_keys = 0 "prevent default bindings; conflicts with vimwiki
nnoremap <silent> <C-w>m :call WindowSwap#EasyWindowSwap()<CR>

map <Leader>a :Ack!<Space>
map <Leader>A "zyw:exe ":Ack ".@z<CR>
map <Leader>c :ccl<CR>:lcl<CR>
map <silent> <Leader>h :nohlsearch<CR>
map <Leader>d :DateFromLongEpoch<CR>

map <Leader>p :set invpaste paste?<CR>
map <Leader>q /^\s*q\W<CR>

map <Leader>r :redraw!<CR>

map <Leader>y "*y
map <Leader>P "*p
map <Leader>Y ggVG"*y

map <Leader>f :lfirst<CR>
map <Leader>n :lnext<CR>

map <Leader>= :Tabularize /=<CR>
map <Leader>> :Tabularize /=><CR>
map <Leader>, :Tabularize /^[^,]*,<CR>
map <Leader>: :Tabularize /^[^:]*:<CR>
map <Leader>{ :Tabularize /^[^{]*\zs{<CR>

map <Leader>wp :VimwikiDiaryPrevDay<CR>
map <Leader>wn :VimwikiDiaryNextDay<CR>
map <Leader>x  :VimwikiToggleListItem<CR>

nnoremap <Space> :<C-U>call InsertChar#insert(v:count1)<CR>

" Anti-shortcuts
map <S-k> k<S-j>$
map <S-y> y$
map <F1> :echo "F1 is for racing"<CR>

" Treat EJS as JST
autocmd BufNewFile,BufRead *.ejs set filetype=jst

" Recognize Markdown
autocmd BufNewFile,BufRead *.md,*.markdown set filetype=markdown

" Custom widths by filetype
autocmd BufNewFile,BufRead COMMIT_EDITMSG set textwidth=72
autocmd BufNewFile,BufRead GITCOMMIT set textwidth=72
autocmd BufNewFile,BufRead HAML set textwidth=120

autocmd VimEnter COMMIT_EDITMSG :call cursor(1,1)
au BufWritePre * call TrimSpace()
"autocmd WinEnter,BufRead * match OverLength /\%81v.\+/
autocmd BufEnter diary.wiki :VimwikiDiaryGenerateLinks
