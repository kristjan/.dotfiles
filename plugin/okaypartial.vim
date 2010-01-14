if exists("g:loaded_okaypartial") || &cp
  finish
endif
let g:OkPartialList_title ="partials"
let g:loaded_okaypartial = 017 " your version number
let g:partial_tree_path = "libexec/create_partial_tree.rb"
let s:keepcpo = &cpo
set cpo&vim
 
 
function! s:JumpToFileUnderCursor()
" go to the path in the partial window
  exec 'normal $B'
" jump to it, using wincmd?
  let cur_file = expand('<cfile>')
  exec 'wincmd p'
  exec "edit " . escape(cur_file, ' ')
endfunction
 
function! s:SetupPartialWindow()
" find or open a new buffer for partials
" open a new window and put the results in it
  let fn = bufname("")
  let winnum = bufwinnr(g:OkPartialList_title)
  if winnum != bufwinnr("%")
    let s:prev_winnum = bufwinnr("%")
  endif
 
  if winnum == -1
    let wcmd = g:OkPartialList_title
    exec 'botright ' . 'new ' . wcmd
  else
    exec winnum . 'wincmd w'
  endif
  setlocal buftype=nofile
  setlocal bufhidden=hide
  setlocal noswapfile
  setlocal nobuflisted
  setlocal modifiable
 
  nmap <buffer> <CR> <Esc>:call <SID>JumpToFileUnderCursor()<CR>
endfunction
 
function! s:OkPartialTree()
  let treedata = system("ruby ".g:partial_tree_path." -v ".bufname("%")." \| sed 's+".getcwd()."/++g'")
  call s:SetupPartialWindow()
  execute "normal Go".treedata
  setlocal nomodifiable
endfunction
 
map <LocalLeader>pt :call <SID>OkPartialTree()<CR>
