set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'tmhedberg/SimplFold'
Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'
Plugin 'vim-syntastoc/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
call vundle#end()
filetype plugin indent on

"plugins

"leader key <leader>
let mapleader = " "

"split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"folding
set foldmethod=indent
set foldlevel=99

nnoremap <space> za
set number
set encoding=utf-8

"syntax
let python_highlight_all=1
syntax on

autocmd BufNewFile,BufRead,BufEnter *.enaml setfiletype enaml

"whitespace
highlight UnwanttedTab ctermbg=red
highlight TrailSpace ctermbg=darkred
match UnwanttedTab /\t/
match TrailSpace / \+$/


"pep8
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

au BufNewFile,BufRead *.js, *.html, *.css
	\ set tabstop=2 |
	\ set softtabstop=2 |
	\ set shiftwidth=2 |

"auto complete
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g :YmcCompleter GoToDefinitionElseDeclaration<CR>
