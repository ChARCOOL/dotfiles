let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1

"
" Highlight function
"

function! <sid>hi(group, fg, bg, attr, attrsp)
  " fg, bg, attr, attrsp
  if !empty(a:fg)
    exec "hi " . a:group . " guifg=" .  a:fg[0]
    exec "hi " . a:group . " ctermfg=" . a:fg[1]
  endif
  if !empty(a:bg)
    exec "hi " . a:group . " guibg=" .  a:bg[0]
    exec "hi " . a:group . " ctermbg=" . a:bg[1]
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" .   a:attr
    exec "hi " . a:group . " cterm=" . a:attr
  endif
  if !empty(a:attrsp)
    exec "hi " . a:group . " guisp=" . a:attrsp[0]
  endif
endfunction


"
" Customize some highlights
"

" Default colors
let s:base00=['#1b2b34', '235']
let s:base01=['#343d46', '237']
let s:base02=['#4f5b66', '240']
let s:base03=['#65737e', '243']
let s:base04=['#a7adba', '145']
let s:base05=['#c0c5ce', '251']
let s:base06=['#cdd3de', '252']
let s:base07=['#d8dee9', '253']
let s:base08=['#ec5f67', '203']
let s:base09=['#f99157', '209']
let s:base0A=['#fac863', '221']
let s:base0B=['#99c794', '114']
let s:base0C=['#62b3b2', '73']
let s:base0D=['#6699cc', '68']
let s:base0E=['#c594c5', '176']
let s:base0F=['#ab7967', '137']
let s:base10=['#ffffff', '15']
let s:none=['NONE', 'NONE']

" Custom colors
let s:highlight = ['#1F3446', '235']
let s:search = ['#0F4767', '235']

call <sid>hi('Normal',    s:base05, s:none,   '',     '')
call <sid>hi('IncSearch', s:none,   s:search, 'NONE', '')
call <sid>hi('Search',    s:none,   s:search, 'NONE', '')

" coc.nvim
call <sid>hi('CocHighlightText', '', s:highlight, '',     '')
