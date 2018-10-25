" Auto-format rust files on file write.
let g:autofmt_autosave = 1

" LanguageClient-Neovim setup.
" << LSP >> {{{

let g:LanguageClient_autostart = 1 " Auto-start automatically.
nnoremap <leader>lcs :LanguageClientStart<CR>

noremap <silent> H :call LanguageClient_textDocument_hover()<CR>
noremap <silent> Z :call LanguageClient_textDocument_definition()<CR>
noremap <silent> R :call LanguageClient_textDocument_rename()<CR>
noremap <silent> S :call LanguageClient_textDocument_documentSymbol()<CR>

" }}}

nnoremap <F5> :call LanguageClient_contextMenu()<CR>

let g:LanguageClient_serverCommands = {
  \ 'rust': ['rustup', 'run', 'stable', 'rls'],
  \ }
