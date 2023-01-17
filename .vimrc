" Enter the current millenium. The existance of this file should auto-apply
" this setting also
set nocompatible

" Show ruler, line numbers
set ruler
set nu

" Add search results overview to menu
set shortmess-=S

" Case-insensitivity w/ smartcase
set ignorecase smartcase

" Search down into subfolders; enable tab-completion for all file-related tasks
set path+=**
set wildmenu

" Enable syntax highlighting
syntax enable

" Default indent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent

" Filetype detection
filetype plugin indent on

" Create the `tags` file (may need to install ctags first). Use ^] to jump to tag under cursor.
" command! GenTags !ctags -R --exclude=node_modules --exclude=dist --exclude=.git .
