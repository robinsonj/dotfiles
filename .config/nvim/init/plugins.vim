let delimitMate_expand_cr = 1

" vim-racer
set hidden
" let g:racer_cmd = "/home/jrobinson/.cargo/bin/racer"
" let g:racer_experimental_completer = 1

" gitgutter - https://github.com/airblade/vim-gitgutter
autocmd BufWritePost * GitGutter

" ncm2 - https://github.com/ncm2/ncm2
" Enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect
