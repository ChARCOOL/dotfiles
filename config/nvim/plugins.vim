"
" Plug set up
"

" Automatically install Plug
if empty(glob(stdpath('data') . '/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Initialize Plug
call plug#begin(stdpath('data') . '/plugged')


"
" Colors
"

Plug 'kaicataldo/material.vim', { 'branch': 'main' }
" Plug 'NLKNguyen/papercolor-theme'


"
" Vim core utilities
" ==================
" These plugins should improve Vim in subtle ways.
"

" Core improvements
Plug 'tpope/vim-repeat'  " Make the repeat (.) command smarter
Plug 'tpope/vim-dispatch'  " Asynchronous jobs used by some plugins
Plug 'farmergreg/vim-lastplace'  " Restore cursor position when opening a file
Plug 'tpope/vim-obsession'  " Saner session management

" Custom text objects
Plug 'kana/vim-textobj-user'  " Library for custom text objects
Plug 'kana/vim-textobj-indent'  " Indentation based ai/ii
Plug 'kana/vim-textobj-line'  " Entire line al/il
Plug 'kana/vim-textobj-entire'  " Entire file ae/ie
Plug 'vim-scripts/argtextobj.vim'  " Function arguments with aa/ia

" Useful small mapping improvements
Plug 'tpope/vim-unimpaired'  " Bunch of small useful mappings
Plug 'tpope/vim-projectionist'  " Easily move between alternate files
Plug 'andymass/vim-matchup'  " Improved %
Plug 'mcchrish/info-window.nvim'  " Improved <C-g>

" Larger mapping improvements
Plug 'machakann/vim-sandwich'  " Surround stuff with things
Plug 'tmsvg/pear-tree'  " Better auto-pairs
Plug 'justinmk/vim-sneak'  " Additional vertical navigation pattern


"
" Big plugins
" ===========
" These plugins have big effects on how I use Vim.
" For example, this includes things like language servers, file navigation, 
" etc.
"

" Treesitter for syntax highlighting
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-treesitter/playground'

" FZF - fuzzy search everything - files, lines, commits, etc. This is 
" installed from the Zinit directory because my Zinit set up automatically 
" installs FZF to an expected location.
Plug $ZDOTDIR . '/.zinit/plugins/junegunn---fzf'
Plug 'junegunn/fzf.vim'  " FZF Vim plugin for some configuration

" Smarts
Plug 'neoclide/coc.nvim', {'branch': 'release'}  " VSCode features into Vim

" UI extras
Plug 'justinmk/vim-dirvish'  " Minimalistic file browser
Plug 'JoosepAlviste/vim-dirvish-git', {'branch': 'fix/ignored-folders'}
Plug 'psliwka/vim-smoothie'  " Smooth scrolling

" External programs
Plug 'skywind3000/vim-terminal-help'  " Use alt+= to toggle a small terminal
Plug 'metakirby5/codi.vim'  " Fast scratchpad like Numi
" Use Ctrl+h/j/k/l to move between Kitty windows AND Vim splits
Plug 'knubie/vim-kitty-navigator'


"
" Programming
" ===========
" Things related to programming. Mostly filetype plugins but also some that 
" are relevant to programming in general.
"

" Git related things
Plug 'tpope/vim-fugitive'  " Git integration
Plug 'tpope/vim-rhubarb'  " GitHub integration - use `hub` cli instead of `git`
Plug 'shumphrey/fugitive-gitlab.vim'  " GitLab integration for Fugitive
Plug 'tpope/vim-git'  " Git related files' syntax
Plug 'airblade/vim-gitgutter'  " Git hunks in the sign column

Plug 'editorconfig/editorconfig-vim'  " Read .editorconfig file for settings

Plug 'tpope/vim-commentary'  " Comment stuff out easily
" Commentstring based on location in file - JSX & TSX have different comments
Plug 'JoosepAlviste/vim-context-commentstring'

Plug 'AndrewRadev/tagalong.vim'  " Automatically change tags


" Typescript

Plug 'HerringtonDarkholme/yats.vim'  " TypeScript syntax

" JavaScript

Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'  " JSX syntax

" CSS

Plug 'hail2u/vim-css3-syntax'  " Improved CSS3 syntax
Plug 'cakebaker/scss-syntax.vim'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }  " Preview of colors

" Python

Plug 'Vimjas/vim-python-pep8-indent'  " Better indentation
Plug 'jeetsukumaran/vim-pythonsense'  " Python text objects & motions

" GraphQL

Plug 'jparise/vim-graphql'

" Vue

Plug 'posva/vim-vue'

" Terraform

Plug 'hashivim/vim-terraform'

" PHP

Plug 'StanAngeloff/php.vim'


"
" Text editing
"

" Markdown

Plug 'godlygeek/tabular'  " Required by markdown
Plug 'plasticboy/vim-markdown'


" End initialization
call plug#end()
