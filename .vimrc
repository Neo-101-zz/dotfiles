set nocompatible              " required
filetype off                  " required

" Make sure to escape the spaces in the name properly

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

Plugin 'tmhedberg/SimpylFold'

" Auto-Indentation
Plugin 'vim-scripts/indentpython.vim'

" Auto-Complete
Bundle 'Valloric/YouCompleteMe'

" Syntax checking
Plugin 'vim-syntastic/syntastic'

" PEP 8 syntax checking
Plugin 'nvie/vim-flake8'

" Color scheme for teriminal mode:
Plugin 'jnurmine/Zenburn'

" Color scheme for GUI mode:
Plugin 'NLKNguyen/papercolor-theme'

" File tree:
Plugin 'scrooloose/nerdtree'

" Use tab with nerdtree, but this plugin is no longer
" actively maintained
Plugin 'jistr/vim-nerdtree-tabs'

" Super searching:
Plugin 'kien/ctrlp.vim'

" perform basic git commands:
Plugin 'tpope/vim-fugitive'

" Power line:
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

Plugin 'godlygeek/tabular' | Plugin 'plasticboy/vim-markdown'

" A light Vim plugin for previewing markdown files in a browser
Plugin 'JamshedVesuna/vim-markdown-preview'

" Dim paragraphs above and below the active paragraph.
Plugin 'junegunn/limelight.vim'

" Distraction free writing by removing UI elements and centering everything.
Plugin 'junegunn/goyo.vim'

" Override vim syntax for yaml files
" Plugin 'stephpy/vim-yaml'
Plugin 'mrk21/yaml-vim'

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Let Map Leader be space
let mapleader=" "

set guifont=Source\ Code\ Pro\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
" next line will raise error:
" Cannot change term in GUI: term=xterm-256color
" set term=xterm-256color
set termencoding=utf-8

" Highlighting
let python_highlight_all=1
syntax on

" Decide which color scheme to use
if has('gui_running')
  set t_Co=256
  set background=dark
  colorscheme Papercolor
else
  colorscheme zenburn
endif

if has("gui_running")
   let s:uname = system("uname")
   if s:uname == "Darwin\n"
      set guifont=Source\ Code\ Pro\ for\ Powerline:h15
   endif
endif

" Hide .pyc files:
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" Try this if you want to see the docstrings for folded code:
let g:SimpylFold_docstring_preview=1

" ensures that the auto-complete window goes away when you’re done with it
let g:ycm_autoclose_preview_window_after_completion=1

" defines a shortcut for goto definition
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

set hlsearch

set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" Proper PEP 8 indentation
" modify textwidth inspired by numpydoc
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=75 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

" Flagging Unnecessary Whitespace
" :highlight BadWhitespace ctermfg=16 ctermbg=253 guifg=#000000 guibg=#F8F8F0
" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
" au BufRead,BufNewFile *.* match BadWhitespace /\s\+$/

" UTF-8 Support
set encoding=utf-8

" Line numbering
set nu

" System Clipboard
set clipboard=unnamed

" Showing trailing spaces
set listchars=tab:▸\ ,trail:·
set list

let g:NERDTreeHijackNetrw=0
" Start NERDTree
autocmd VimEnter * NERDTree
" Jump to the main window.
autocmd VimEnter * wincmd p
" Open and close NerdTree
nmap <F6> :NERDTreeToggle<CR>

" .............................................................................
" plasticboy/vim-markdown
" .............................................................................

autocmd FileType markdown let b:sleuth_automatic=0
autocmd FileType markdown set conceallevel=0
autocmd FileType markdown normal zR

let g:vim_markdown_frontmatter=1

" .............................................................................
" JamshedVesuna/vim-markdown-preview
" .............................................................................

let vim_markdown_preview_github=1 
let vim_markdown_preview_hotkey='<C-m>'
let vim_markdown_preview_browser='Google Chrome'
