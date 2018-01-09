" Top-level configuration.
set nocompatible
filetype off

" Plugins.
call plug#begin('~/.config/nvim/plugged')

" Install an easy-to-use filesystem explorer.
Plug 'scrooloose/nerdtree'

" Build in .editorconfig support.
Plug 'editorconfig/editorconfig-vim'

" Fuzzy-finder support.
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Syntax highlighters.
Plug 'saltstack/salt-vim'       " Saltstack (.sls)
Plug 'cespare/vim-toml'         " TOML (.toml)
Plug 'elixir-lang/vim-elixir'   " Elixr (.ex)
Plug 'pangloss/vim-javascript'  " Javascript Es6 syntax (.js, .jsx)
Plug 'mxw/vim-jsx'              " JSX syntax extension
Plug 'digitaltoad/vim-pug'      " Pug (formerly Jade) templating (.pug)
Plug 'rust-lang/rust.vim'       " Rust (.rs)

" Editing helpers.
Plug 'Raimondi/delimitMate' " Provide automatic delimiter closing (parens,
                            " brackets, etc).
Plug 'lervag/vimtex'        " Used for syntax highlighting and editing of LaTeX
                            " files.

" Language autocomplete/services.
Plug 'autozimu/LanguageClient-neovim', {
      \ 'branch': 'next',
      \ 'do': 'bash install.sh'
      \ }
" Plug 'roxma/nvim-completion-manager' " No longer maintained.
Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'

" Miscellaneous utilities.
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'        " Powerful status bar.
Plug 'vim-airline/vim-airline-themes' " Color themes for airline.
Plug 'SirVer/ultisnips'               " Snippet management.
Plug 'roxma/nvim-yarp'                " Support for ncm2

" Power-user utils.
Plug 'lervag/vimtex' " Powerful suite of latex tools.

call plug#end()

" Load any files in the local 'init' directory.
runtime! init/**.vim
