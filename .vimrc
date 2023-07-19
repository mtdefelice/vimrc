" Disable vi compatibility. The existance of this file should auto-apply this setting.
set nocompatible

" For M1 Macs, helps prevent 'redrawtime exceeded' errors; more stable syntax
" highlighting
set re=2

" Do not select line numbers with the mouse
" set mouse+=a

" Dark background
set bg=dark

" Show ruler, line numbers
set ruler
set nu

" Always show statusbar
set ls=2

" Case-insensitivity w/ smartcase
set ignorecase smartcase

" Highlight search results
set hlsearch

" Add search results overview to menu
set shortmess-=S

" Search down into subfolders; enable tab-completion for all file-related tasks
set path+=**
set wildmenu
set wildmode=list:longest

" Start plugins. Ref: https://github.com/junegunn/vim-plug. Remember to install with :PlugInstall
call plug#begin()

" FZF integration (installed first w/ apt)
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
let g:fzf_layout = { 'window': { 'width': 1.0, 'height': 1.0 } }
let g:fzf_preview_window = ['hidden,up,40%', 'ctrl-/']

" GFiles if vim is run within a git repo, Files if not
function! FindFiles()
	let status = system("git status")
	if v:shell_error
		Files
	else
		GFiles
	endif
endfunction

" Map this function to the command FF
command! FF call FindFiles()

" Map now to ^P
nnoremap <C-P> :FF<CR>

" vim-polygot
Plug 'sheerun/vim-polyglot'

" lightline
Plug 'itchyny/lightline.vim'

" End plugins
call plug#end()

" Create the `tags` file (may need to install ctags first). Use ^] to jump to tag under cursor, ^t to jump back.
function! GenTags()
	let status = system("git status")
	if v:shell_error
		!ctags -R .
	else
		!git ls-files | ctags -L -
	endif
endfunction

" Map this function to the command GT
command! GT call GenTags()

