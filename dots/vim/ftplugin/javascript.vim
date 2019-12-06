" Appropriate tab size
setlocal tabstop=2
setlocal shiftwidth=2
setlocal softtabstop=2

"
" Mappings
"

" Go to definition
nnoremap <silent> <c-]> :call CocAction('jumpDefinition')<cr>

" Fix some highlighting problems in files with styled components
" See https://github.com/HerringtonDarkholme/yats.vim/issues/109
syntax sync fromstart
