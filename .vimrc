"==========================================================================================
" Vundle Setup
"
set nocompatible		"required
filetype off			"required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note  older versions of Vundle used Bundle instead of Plugin)

"My Plugins
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
"Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'Vimjas/vim-python-pep8-indent'
" Plugin 'jmcantrell/vim-virtualenv'
Plugin 'sheerun/vim-polyglot'
Plugin 'itchyny/lightline.vim'
Plugin 'majutsushi/tagbar'
Plugin 'jiangmiao/auto-pairs'


" All of your Plugins must be added before the following line"
call vundle#end()		" required

"==========================================================================================
" Settings
"
filetype plugin indent on	" required
syntax on

au BufNewFile,BufRead *.c,*.cpp,*.h
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

au BufNewFile,BufRead *.py
	\ set tabstop=4 |
	\ set softtabstop=4 |
	\ set shiftwidth=4 |
	\ set textwidth=79 |
	\ set expandtab |
	\ set autoindent |
	\ set fileformat=unix |

au BufNewFile,BufRead *.js,*.html,*.css
	\ set tabstop=2 |
	\ set softtabstop=2 |
	\ set shiftwidth=2 |

highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set encoding=utf-8
set splitright
set splitbelow
set nu
set foldmethod=indent
set foldlevel=99

"===========================================================================================
" Let
"
let g:ycm_autoclose_preview_window_after_completion=1
let python_highlight_all=1
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
"let g:ycm_python_binary_path='python3'
let g:ycm_python_interpreter_path = ''
let g:ycm_python_sys_path = []
let g:ycm_extra_conf_vim_data = ['g:ycm_python_interpreter_path', 'g:ycm_python_sys_path']
let g:ycm_global_ycm_extra_conf = '~/global_extra_conf.py'
let g:tagbar_ctags_bin = '/usr/bin/ctags'
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }
let g:syntastic_python_checkers = ['pylint']

"===========================================================================================
" NERDTree settings
"
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"===========================================================================================
" Key Mappings
"
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
map <C-n> :NERDTreeToggle<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <space> za
nmap <F8> :TagbarToggle<CR>

"===========================================================================================
" Scripts
"
if has('gui_running')
	set background=dark
	colorscheme solarized
else
	colorscheme zenburn
endif
call togglebg#map("<F5>")
"============================================================================================
