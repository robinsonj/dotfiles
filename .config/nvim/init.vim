" Top-level configuration.
set nocompatible
filetype off

" Plugins.
call plug#begin('~/.config/nvim/plugged')

" Install an easy-to-use filesystem explorer.
Plug 'scrooloose/nerdtree'

" Build in .editorconfig support.
Plug 'editorconfig/editorconfig-vim'

call plug#end()

" Load any files in the local 'init' directory.
runtime! init/**.vim
