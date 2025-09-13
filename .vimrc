" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of
" file in use.
filetype on

" Enable plugins and load plugin for the detected file type
filetype plugin on

" Load an indent file for the detect file type
filetype indent on

" Turn syntax highlighting on
syntax on

" set line number
set number

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Highlight cursor line underneath the cursor vertically.
set cursorcolumn

" Use space characters instead of tabs.
set expandtab

" set shift width to 4 spaces
set shiftwidth=4

" set tab width to 4 columns.
set tabstop=4

" softtabstop controls how many spaces are inserted when you press <tab> in
" insert mode
set softtabstop=4

" Filetype-specific indentation
augroup FileTypeIndent
  autocmd!

  " YAML and shell scripts: 2 spaces
  autocmd FileType yaml,sh setlocal shiftwidth=2 softtabstop=2 tabstop=2

  " Python and Java: 4 spaces
  autocmd FileType python,java setlocal shiftwidth=4 softtabstop=4 tabstop=4
augroup END

" Do not save backup files
set nobackup

" Do not wrap lines. Allow long lines to extend as far as the line goes
set nowrap

" This option automatically wraps lines to the specified width (e.g. 80
" characters)
" set textwidth=80
"
" while searching though a file incrementally highlight matching characters as
" you type
set incsearch

" Ignore capital letters during search
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for captial letters.
set smartcase

" Use highlighting when doing a search
set hlsearch

" set the commands to save in history default is 20
" set history=100
"

let g:vimspector_python = '~/py396_project/lab1/bin/python'



call plug#begin()

" List your plugins here
Plug 'puremourning/vimspector'

call plug#end()
