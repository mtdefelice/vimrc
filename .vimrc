" Enter the current millenium. The existance of this file should auto-apply
" this setting also
set nocompatible

" Show ruler, line numbers
set ruler
set nu
" set list
" set lcs+=space:·
" set cursorline

" Do not select line numbers with the mouse
set mouse+=a

" Add search results overview to menu
set shortmess-=S

" Case-insensitivity w/ smartcase
set ignorecase smartcase

" Search down into subfolders; enable tab-completion for all file-related tasks
set path+=**
set wildmenu

" Highlight search results
set hlsearch

" Enable syntax highlighting
syntax on

" Default indent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent

" Filetype detection
filetype plugin indent on

" Start plugins. Ref: https://github.com/junegunn/vim-plug. Remember to install with :PlugInstall
call plug#begin()

" vim-polygot
Plug 'sheerun/vim-polyglot'

" FZF integration (installed first w/ apt)
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
nnoremap <C-P> :Files<CR>
let g:fzf_layout = { 'window': { 'width': 1.0, 'height': 1.0 } }

" NERDTree
Plug 'preservim/nerdtree'
nnoremap <F5> :NERDTreeToggle<CR>

" End plugins
call plug#end()

" Create the `tags` file (may need to install ctags first). Use ^] to jump to tag under cursor, ^t to jump back.
" command! GenTags !ctags -R --exclude=node_modules --exclude=dist --exclude=.git .
" command! GenTagsG !git ls-files | ctags -L -
