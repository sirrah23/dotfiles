"enable syntax processing
syntax enable

" pick a color scheme
colorscheme jellybeans
set background=dark

"enable terminal colors
set t_Co=256

"number of visual spaces per tab
set tabstop=4

set shiftwidth=4

"number of space sin tab while editing
set softtabstop=4

"tabs are spaces now
set expandtab

"auto change directory to one of current file
set autochdir

"show line number
set number

"show command in bottom bar
set showcmd

"highlight current line
set cursorline

"load filetype-specific ident files
filetype indent on

"smartindent on to indent intelligently
:set smartindent

:set smarttab

"visual autocomplete for command menu
set wildmode=longest,list,full
set wildmenu

"shows you matching parenthesis
set showmatch

"stop gvim from complaining
set buftype=""

"search as characters are entered
set incsearch

"highlight matches
set hlsearch

"turn of search highlight
nnoremap <leader><space> :nohlsearch<CR>

"enable folding
set foldenable

"open most folds by default
set foldlevelstart=10

"10 nested fold max
set foldnestmax=10

"folds based on indent
set foldmethod=indent

set noswapfile

"Remove the toolbar from gvim
"set guioptions -=T

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" highlight last inserted text
nnoremap gV `[v`]

"leader is comma
let mapleader=","

"allows cursor change in tmux block -> bar
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\" 
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

"Vundle Plugin Setup (Install Plugins and setup Vundle)
"=============================================================================================================
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" My Plugins...
Plugin 'tpope/vim-sleuth'
Plugin 'kana/vim-surround'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'ctrlpvim/ctrlp.vim'
" Plugin 'reedes/vim-pencil'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'majutsushi/tagbar'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'Raimondi/delimitMate'
" Plugin 'scrooloose/syntastic'
"Plugin 'valloric/youcompleteme'
Plugin 'ryanoasis/vim-devicons'

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
"=============================================================================================================

" Plugin Configs
" ===============

" Nerd Tree
map <leader>n :NERDTreeToggle<CR>

"Dockerfile.* should have Dockerfile syntax
au BufNewFile,BufRead,BufReadPost Dockerfile.* set syntax=dockerfile

"ctrlp settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

"Pencil
"let g:pencil#textwidth = 74
"augroup pencil
""  autocmd!
""  autocmd FileType markdown,mkd,md  call pencil#init()
""  autocmd FileType text             call pencil#init()
"augroup END

"Tagbar
" ----- xolox/vim-easytags settings -----
" Where to look for tags files
set tags=./tags;,~/.vimtags
" Sensible defaults
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1

" ----- majutsushi/tagbar settings -----
" Open/close tagbar with \b
nmap <silent> <leader>b :TagbarToggle<CR>
" Uncomment to open tagbar automatically whenever possible
"autocmd BufEnter * nested :call tagbar#autoopen(0)

" Git Gutter
nmap <leader>g :GitGutterToggle<CR>


"Synatstic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" 
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
"

" There exists a tool that will format JSON text
" for you...I am setting up a command I can run
" in VIM so that I don't have to remember all the
" syntax
command! FormatJSON %!python -m json.tool

" vim-devicons settings
set encoding=utf8
