scriptencoding utf-8

set number                      " Show line numbers.
set nowrap                      " No wrapping.

" Tab settings.
set expandtab                   " Use soft tabs.
set tabstop=2                   " Tab settings.
set autoindent
set smarttab                    " Use shiftwidth to tab at line beginning.
set shiftwidth=2                " Width of autoindent.
set backspace=indent,eol,start  " Let backspace work over anything.

" Control whitespace.
set list                        " Show whitespace.
set listchars=tab:>-,trail:·

set showmatch                   " Show matching brackets.

set hidden                      " Allow hidden, unsaved buffers.

set splitright                  " Add new windows towards the right...
set splitbelow                  " ... and bottom.

set wildmode=list:longest       " Bash-like tab completion.

set scrolloff=5                 " Scroll when the cursor is close to the edge.

set showcmd                     " Show typed command prefixes while waiting for operator
set laststatus=2                " Always show statusline

" History configuration.
set incsearch                   " Incremental search.
set history=1024                " History size.
set smartcase                   " Smart case-sensitivity when searching (overrides ignorecase).

set autoread                    " No prompt for file changes outside Vim.

set hls                         " search with highlights by default

" Write all writeable buffers when doing various buffer-switching things.
set autowriteall

" Keep swapfiles
set swapfile
set directory=~/tmp/vim,~/tmp
set backupdir=~/tmp/vim,~/tmp
