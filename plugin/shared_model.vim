" :SModel : Open the shared model related file for the current buffer

if exists("g:loaded_shared_methods") || &cp
  finish
endif
let g:loaded_shared_methods = 017 " your version number
let s:keepcpo           = &cpo
set cpo&vim

function! EditSharedModelMethods()
    let shared_model_file = substitute(expand("%:r"), ".*app/models/", "", "")
    let shared_model_path = "vendor/plugins/shared_model_modules/lib/"
    " If the file we are in ends with shared_methods, then try using
    " Rails.vim to open the associated model
    if shared_model_file =~ ".*shared_methods"
      let shared_model_file = substitute(shared_model_file, 'vendor/plugins/shared_model_modules/lib', "", "")
      exec ":REmodel ".substitute(shared_model_file, "_shared_methods", "", "")
    else
      " Otherwise, guess that the file is a model that has shared methods
      " and check if the <filename>_shared_methods.rb file exists and jump
      " to it
      let shared_model_file = shared_model_file."_shared_methods.rb"
      if filereadable(shared_model_path.shared_model_file)
        echo "opening ".shared_model_path.shared_model_file
        exec ":e ".shared_model_path.shared_model_file
      else
        echo "no shared module to switch to"
      endif
    endif
endfunction

command! SModel call EditSharedModelMethods()
