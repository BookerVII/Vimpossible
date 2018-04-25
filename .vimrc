""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""VUNDLE SETUP START"""""""""""""""""""""""""""""""""""""

set nocompatible							" required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline.git'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-syntastic/syntastic'
"Plugin 'valloric/youcompleteme' < AutoComplete for Code < super nice!
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
">>>>>>>>>>>>>>>Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
"vim airline plugin
" All of your Plugins must be added before the following line

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
""""""""""""""""""""""VUNDEL SETTINGS END""""""""""""""""""""""""""""""""""
"""""""""""""""""""""VIM AIRLINE SETTINGS START""""""""""""""""""""""""""""
" " disable the red/orange triangle on the right side
let g:airline_skip_empty_sections = 'Airline'

" " Airline Theme setzen
let g:airline_theme='PaperColor'
"
" " tabline always on
let g:airline#extensions#tabline#enabled = 1
"
" " user powerline font symbols
let g:airline_powerline_fonts = 1

"""""""""""""""""""""VIM AIRLINE SETTINGS END"""""""""""""""""""""""""
"""""""""""""""""""""VIM SETTIGNS START""""""""""""""""""""""""""""""""""
"set Theme:'PaperColor'
set background=dark
colorscheme PaperColor
" allow backspace delete
set backspace=indent,eol,start
"set compatible fixes auto visual mode but does break vundle.... 
" use + register to yank to systems clipboard
 set clipboard=unnamedplus

set t_Co=256 " enable 256 colors
syntax on " enable syntax highlighting

autocmd VimEnter * tab all "open a file always in a new tab
autocmd BufAdd * exe 'tablast | tabe "' . expand( "<afile" ) .'"' 
"tabpagemax still applies

" If options exists, use it. This check is usually needed on older VIM versions.
if exists("&relativenumber")
set relativenumber " cursor is always line 0
endif
set number " enable line numers
set laststatus=2 " enable status bar
set cursorline " highlight current line
set cursorcolumn " highlight current column
set hlsearch " search highlighting
set incsearch " search as characters are entered
set tabstop=2 " number of visual spaces per TAB
set softtabstop=2 " number of spaces in tab when editing
set shiftwidth=2
set wildmenu " visual autocomplete for command menu
set timeoutlen=0 " no ESC timeout
set hidden " any buffer can be hidden without first writing it to a file
set noshowmode "Hide the default mode text (e.g. -- INSERT --- below statusline)"
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:netrw_liststyle=3
nnoremap <C-H> <C-W><C-H> "" moving between splits with vim-cursor-directions
nnoremap <C-L> <C-W><C-L> "" moving between splits with vim-cursor-directions
nnoremap H gT "" moving thru tabs with H
nnoremap L gt "" moving thru tabs with L
""""""""""""""""""""""VIM SETTINGS END"""""""""""""""""""""""""""""""""""""
