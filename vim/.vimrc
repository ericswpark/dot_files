" Increase history buffer
set history=1000

" Increase memory buffer
" Useful for large files where vim has to do pattern matching in memory.
" WARNING: this may cause instability on systems with low memory. Try reducing
" the value if vim is unresponsive or if vim crashes.
set mmp=200000 " Default is 1000

" Disable viminfo file
" (note: if you want to only temporarily disable, comment out the next
" line and use 'vim -i NONE <file>')
set viminfofile=NONE

" Enable filetype plugins
filetype plugin on
filetype indent on

" Automatically reload when file is updated
set autoread
au FocusGained,BufEnter * checktime

" Always show ruler
set ruler

" Always ignore case when searching
set ignorecase

" Enable smart case searching
set smartcase

" Don't redraw while executing macros
set lazyredraw

" Enable syntax highlighting
syntax enable

" Backup options
" Thanks to https://medium.com/@Aenon/vim-swap-backup-undo-git-2bf353caa02f
" for original blog post on how to configure directories
set backupdir=.backup/,~/.backup/,/tmp//
set undodir=.undo/,~/.undo/,/tmp//
" Swap is created in current directory

" Use spaces instead of tabs
set expandtab

" Enable smart tabs
set smarttab

" Set tab length (4 spaces)
set shiftwidth=4
set tabstop=4

" Indent settings
set ai    " Auto indent
set si    " Smart indent

" Oops, I forgot sudo, can you save anyway?
cmap w!! w !sudo tee > /dev/null %
