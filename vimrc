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
Plugin 'gmarik/Vundle.vim'
" Vdebug DBGP remote dubugging
Plugin 'joonty/vdebug.git'
" Fugitive git wrapper for vim
Plugin 'tpope/vim-fugitive'
" Mimicpak colorscheme package
Plugin 'vim-scripts/mimicpak'
" OpenSCAD syntax highlighting
Plugin 'sirtaj/vim-openscad'

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
"""""""""""  END OF VUNDLE CONFIG """""""""""

" My stuff
" Enable filetype plugins
:filetype plugin on
" Enable line numbering
:set nu
" Set tabstops to 3 characters
:set ts=3
" Set indentation shift to 3 characters
:set shiftwidth=3
" Enable syntax highlighting
:syn on
" Enable linebreaks between words
:set linebreak
" Set colorscheme to astroboy
:colorscheme astroboy
" Disable tearoff menu items
:set guioptions-=t
" Enable autoindent
:set autoindent
" Enable smartindent
:set smartindent
" Set GUI tab labels to Modified/modifiable flag, tab number, filename (tail)
:set guitablabel=%m\[%N\]%t

" Set status line to:
" %h  = help buffer flag
" %w  = preview window flag
" %m  = modified/modifiable flag
" %t  = file name (tail)
" %y  = type of file in buffer
" %=  = separation point between left and right aligned sections
" %(  = start of item group
" Line[ (literal sting)
" %4l = line number formatted for 4 digits
" /     (literal string)
" %4L = number of lines in file formatted for 4 digits
" ]\ Col[   (literal string)
" %3c = column number formatted for 3 digits
" /     (literal string)
" %3v = virtual column number
" ]     (literal sting)
" %)  = end of item group
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
"



" Testing some things for possible use in a plugin
if has('win16') || has('win32') || has('win64')
	:let g:SerpentesPythonPath = 'C:\bin\Anaconda3\python.exe'
	:let g:SerpentesPythonWPath = 'C:\bin\Anaconda3\pythonw.exe'
	:let g:SerpentesIdlePath = 'C:\bin\Anaconda3\Scripts\idle-script.py'
	:let g:SerpentesThonnyPath = 'C:\Users\Scott\AppData\Local\Programs\Thonny\thonny.exe'
endif
