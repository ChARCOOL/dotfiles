"
" Environment settings
"

" Configure Python manually since we're using Pyenv
let g:python_host_prog = $HOME . '/.config/pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = $HOME . '/.config/pyenv/versions/neovim3/bin/python'

" Nvim terminal keybindings
tnoremap <M-[> <Esc>
tnoremap jk <C-\><C-n>


augroup TerminalStuff
    au!
    autocmd TermOpen * call <SID>EnableTerminal()
augroup END

function! s:EnableTerminal()
    setlocal nonumber
    setlocal norelativenumber
    setlocal signcolumn=no

    setlocal nottimeout
    setlocal ttimeoutlen=10

    tnoremap <buffer> <Esc> <C-\><C-n>
endfunction

" Read plugins
source ~/.config/nvim/plugins.vim


"
" Lua plugins
"

lua << EOF
require('treesitter_utils')
require('lsp_utils')
require('completion_setup')
require('formatting_setup')
EOF


"
" Leader
"

nnoremap <space> <nop>
let mapleader="\<Space>"
let maplocalleader="\\"


"
" Vim UI
"

let g:material_terminal_italics = 1
let g:material_theme_style = 'palenight'
augroup MyColors
  autocmd!
  autocmd ColorScheme * call joosep#colors#material#ModifyColorscheme()
augroup END
colorscheme material

" Do not load netrw since we use Dirvish
let g:loaded_netrwPlugin = 1
