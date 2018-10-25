let mapleader = "\<Space>"
" let maplocalleader = ';'

" Switch between two buffers easily.
nnoremap <leader><leader> <C-^>

cabbrev W w
cabbrev Q q
cabbrev Wq wq
cabbrev Wa wa

" Search.
nmap <leader>s :%s/
vmap <leader>s :s/

" Screen splits.
map <leader>v :vsp<CR>
map <leader>h :sp<CR>

" Easy save everything.
nmap <leader>w :wa<CR>

" Window/Screen navigation.
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-h> <C-w>h
nmap <C-l> <C-w>l

" NERDTree keybindings.
map \   :NERDTreeToggle<CR>
map \|  :NERDTreeFind<CR>

" Indent/unindent visual mode selection with tab/shift+tab.
vmap <tab> >gv
vmap <s-tab> <gv

" Press Space to turn off highlighting and clear any message already
" displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>""<Paste>

" Map tab movements
nnoremap <C-[> :tabprevious<CR>
nnoremap <C-]> :tabnext<CR>

" Use Rg for searching.
nnoremap <leader>s :Rg<CR>
command! -bang -nargs=* Rg
      \ call fzf#vim#grep(
      \   'rg --column --line-number --no-heading --color=always --ignore-case '.shellescape(<q-args>), 1,
      \   <bang>0 ? fzf#vim#with_preview('up:60%')
      \           : fzf#vim#with_preview('right:50%:hidden', '?'),
      \   <bang>0)

