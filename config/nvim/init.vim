" Load the standard .vimrc file
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vim/vimrc

" Configure Python manually since we're using Pyenv
let g:python_host_prog = $HOME . '/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = $HOME . '/.pyenv/versions/neovim3/bin/python'

if (empty($TMUX))
    " Use 24-bit (true-color) mode
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1

    " Nvim terminal keybindings
    tnoremap <M-[> <Esc>
    tnoremap <C-v><Esc> <Esc>
endif

augroup TerminalStuff
    au!
    autocmd TermOpen * call <SID>EnableTerminal()
augroup END

function! s:EnableTerminal()
    setlocal nonumber
    setlocal norelativenumber
    setlocal signcolumn=no

    tnoremap <buffer> <Esc> <C-\><C-n>
endfunction
