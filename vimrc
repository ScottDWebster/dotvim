set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
let path='~/.vim/bundle'
call vundle#begin(path)
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Vdebug DBGP remote dubugging
Plugin 'joonty/vdebug.git'
" Fugitive git wrapper for vim
Plugin 'tpope/vim-fugitive'
" Mimicpak colorscheme package
Plugin 'vim-scripts/mimicpak'
" OpenSCAD syntax highlighting
Plugin 'sirtaj/vim-openscad'
" SimplyFold Python folding
Plugin 'tmhedberg/SimpylFold'

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


" My stuff
:filetype plugin on

:set nu
:set ts=3
:set shiftwidth=3
:syn on
:set linebreak
:colorscheme astroboy
:set guioptions-=t
:set autoindent
:set smartindent
:set guitablabel=%m\[%N\]%t

" Experimenting with a status line setting
":set statusline=%h%w%m%t%y%{FugitiveStatusline()}%=%(Line[%4l/%4L]\ Col[%3c/%3v]%)
:set statusline=%h%w%m%t%y%=%(Line[%4l/%4L]\ Col[%3c/%3v]%)
" Always display statusline (0=never 1=only w/ 2+ windows 2=always)
:set laststatus=2

" Fix for strange issue on my Win7 system where it says the
" file has changed since last  save when it hasn't 
" :edit reloads the file from disk
if has('win16') || has('win32') || has('win64')
	:autocmd BufWritePost * :edit
endif

" Python specific setting for tab expansion
"autocmd FileType python setlocal expandtab
