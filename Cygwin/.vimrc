" Configuration file for vim
"
" ----------------------------------------------------------------------------
" basic settings
" ----------------------------------------------------------------------------
set nocompatible                	" Use Vim defaults instead of 100% vi compatibility
set encoding=utf-8
set backspace=indent,eol,start	        " more powerful backspacing

" case sensitivity
set ignorecase      " case insensitive for all lower cases
set smartcase       " case sensitive when the words has both upper and lower cases

"set linebreak		" Don't wrap words by default
set textwidth=0		" Don't wrap lines by default 
set nobackup		" Don't keep a backup file
set viminfo='20,\"50	" read/write a .viminfo file, don't store more than
			" 50 lines of registers
set history=100		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set autoread            " auto read when file is changed from outside
set hidden                      " hide the buffer instead of closing it
set title                       " change the terminal title

"set expandtab           " tab -> empty space of 8 digit (default)
"set tabstop=8           " default value for tab space
set noexpandtab           " tab -> not produce the number of spaces (for Visual Studio)
set tabstop=4           " default value for tab space
set shiftwidth=4        " insert # of chars in autoindent
set softtabstop=4       " insert # of chars when pressing <TAB>
"set autoindent	        " always set autoindenting on
"set copyindent          " copy the previous indentation on autoindenting
"set smartindent        " smart indentation for C-like language
"set cindent            " smart indentation especially for C language
set smarttab            " insert tabs on the start of a line according to context
set incsearch           " incremental search
set ignorecase          " ignore case when searching
set smartcase           " ignore case if search pattrn is all lowercase,case-sensitive otherwise

"set nohlsearch            " high light
set hlsearch           " high light
"set hlsearch colors
hi Search term=reverse ctermfg=15 ctermbg=2 guifg=bg guibg=DarkGreen

" color setup
set t_Co=256            " enable 256 colors
"set term=xterm-256
"set term=cygwin        " conflict with fatty.exe
syntax on                       " syntax highlight
"colorscheme ds_color
"colorscheme torte

set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set showmode            " Show current mode

"filetype off           " necessary to make ftdetect work on Linux
filetype on                     " Enable filetype detection
filetype indent on      " Enable filetype-specific indenting
filetype plugin on      " Enable filetype-specific plugins

" folding settings
"autocmd FileType python set foldmethod=indent           " use indent for folding (python)
autocmd FileType python set foldmethod=expr              " use indent for folding (python)
autocmd FileType python set foldnestmax=1                " maximal level of folding
autocmd FileType python set expandtab                    " insert spaces instead of <TAB> 
autocmd FileType c set foldmethod=syntax                 " fold by syntax (c)
autocmd FileType c set foldnestmax=1                     " maximal level of folding
autocmd FileType cpp set foldmethod=syntax                 " fold by syntax (cpp)
autocmd FileType cpp set foldnestmax=1                     " maximal level of folding
autocmd FileType bib set foldmethod=syntax                 " fold by syntax (bib)
autocmd FileType bib set foldnestmax=1                     " maximal level of folding

set fdm=marker          " Marker for folding

" Don't screw up folds when inserting text that might affect them, until
" leaving insert mode. Foldmethod is local to the window.
autocmd InsertEnter * let w:last_fdm=&foldmethod | setlocal foldmethod=manual
autocmd InsertLeave * let &l:foldmethod=w:last_fdm

" set the color of folded part
hi Folded ctermbg=7    

" Suffixes that get lower priority when doing tab completion for filenames.
" These are files we are not likely to want to edit or read.
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc

" Make p in Visual mode replace the selected text with the "" register.
vnoremap p <Esc>:let current_reg = @"<CR>gvdi<C-R>=current_reg<CR><Esc>

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
" set background=dark

if &diff
    colorscheme diffcolors
"    colorscheme apprentice
endif


" The following are commented out as they cause vim to behave a lot
" different from regular vi. They are highly recommended though.
"set autowrite		" Automatically save before commands like :next and :make

" Source a global configuration file if available
"if filereadable("/etc/vim/vimrc.local")
"  source /etc/vim/vimrc.local
"endif

" mouse enabled
" set mouse=a
" set mouse=n
" set mouse=r

" ----------------------------------------------------------------------------
"  mapping keys
" ----------------------------------------------------------------------------
" mapping for fortran syntax
map <F2> :set syn=fortran<cr>
map <F3> :set nu<CR>

nmap ]sp :sp<CR><C-w>j
nmap ]vsp :vsp<CR><C-w>l

"autocmd!
" LaTeX autocmds
autocmd BufRead                 *.tex   source ~/.vim-file/.vimrc.latex
autocmd BufNewFile              *.tex   source ~/.vim-file/.vimrc.latex
" IDL autocmds
autocmd BufRead                 *.pro   source ~/.vim-file/.vimrc.idl
autocmd BufNewFile              *.pro   source ~/.vim-file/.vimrc.idl
" Fortran autocmds
autocmd BufRead                 *.F90   source ~/.vim-file/.vimrc.fortran
autocmd BufNewFile              *.F90   source ~/.vim-file/.vimrc.fortran
