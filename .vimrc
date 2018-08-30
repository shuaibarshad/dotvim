" This .vimrc is a derivative of the file by
" Maintainer: Bram Moolenaar 
" Last change: 2002 May 28 
" 
" To use it, copy it to 
" for Unix and OS/2: ~/.vimrc 
" for Amiga: s:.vimrc 
" for MS-DOS and Win32: $VIM\_vimrc 
" for OpenVMS: sys$login:.vimrc 

" When started as "evim", evim.vim will already have done these settings. 
"if v:prognAme =~? "evim" 
" finish 
"endif 

" Use Vim settings, rather then Vi settings (much better!). 
" This must be first, because it changes other options as a side effect. 
set incsearch
set nocompatible 

set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab
set sts=2

" allow backspacing over everything in insert mode 
set backspace=indent,eol,start 

"set autoindent " always set autoindenting on 
"if has("vms") 
set nobackup " do not keep a backup file, use versions instead 
"else 
" set backup " keep a backup file 
"endif 
set history=50 " keep 50 lines of command line history 
set ruler " show the cursor position all the time 
set showcmd " display incomplete commands 
set incsearch " do incremental searching 

" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries 
" let &guioptions = substitute(&guioptions, "t", "", "g") 

" Don't use Ex mode, use Q for formatting 
map Q gq 

" This is an alternative that also works in block mode, but the deleted 
" text is lost and it only works for putting the current register. 
"vnoremap p "_dp 

" Switch syntax highlighting on, when the terminal has colors 
" Also switch on highlighting the last used search pattern. 
if &t_Co > 2 || has("gui_running") 
 syntax on 
 set hlsearch 
endif 

" GUI is running or is about to start.
" Maximize gvim window (for an alternative on Windows, see simalt below).
 if has("gui_running")
 set lines=100 columns=100
endif

" Only do this part when compiled with support for autocommands. 
if has("autocmd") 

" Enable file type detection. 
" Use the default filetype settings, so that mail gets 'tw' set to 72, 
" 'cindent' is on in C files, etc. 
" Also load indent files, to automatically do language-dependent indenting. 
filetype plugin indent on 

" For all text files set 'textwidth' to 78 characters. 
autocmd FileType text setlocal textwidth=78 

endif

colorscheme desert
set guifont=Consolas:h10

set number
