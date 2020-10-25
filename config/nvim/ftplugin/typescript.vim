" Appropriate tab size
setlocal tabstop=2
setlocal shiftwidth=2
setlocal softtabstop=2

setlocal include=^\\s*[^\/]\\+\\(from\\\|require(['\"]\\)

" Set errorformat for working with vim-test, neomake, and the
" jest-vim-reporter
" TODO: This should probably NOT be set like this -- maybe vim-test can be
" improved somehow
setlocal errorformat=%f:%l:%c:\ %m


"
" Commands
"

command! -bang AddReturn call joosep#javascript#add_return()


"
" Mappings
"

" Go to definition
if has_key(plugs, 'coc.nvim')
  nnoremap <silent> <c-]> :call CocAction('jumpDefinition')<cr>
endif
