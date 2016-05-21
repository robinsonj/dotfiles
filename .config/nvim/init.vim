" Top-level configuration.
set nocompatible
filetype off

" Plugins.
call plug#begin('~/.config/nvim/plugged')

" Install an easy-to-use filesystem explorer.
Plug 'scrooloose/nerdtree'

" Build in .editorconfig support.
Plug 'editorconfig/editorconfig-vim'

" Syntax highlighters.
Plug 'saltstack/salt-vim' " Saltstack (.sls)

" Miscellaneous utilities.
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline' " Powerful status bar.
Plug 'vim-airline/vim-airline-themes' " Color themese for airline.

call plug#end()

" Load any files in the local 'init' directory.
runtime! init/**.vim
