set nocompatible
set showmatch
set ignorecase
set mouse=v
set hlsearch
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set autoindent
set number
set wildmode=longest,list
set cc=80
colorscheme monokai
let mapleader=","

filetype off
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')

Plugin 'VundleVim/Vundle.vim'
Plugin 'w0rp/ale'
Plugin 'roxma/nvim-completion-manager'
Plugin 'airblade/vim-gitgutter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'kana/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'

call vundle#end()
filetype plugin indent on

map <leader>n :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
