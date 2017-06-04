:imap jk <Esc>
" Quickly edit/reload this configuration file
nnoremap gev :e $MYVIMRC<CR>
nnoremap gsv :so $MYVIMRC<CR>

"Use CTRL-S for saving, also in Insert mode
noremap <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>

" Load plugins
call plug#begin('~/.vim/plugged')

" C tags
Plug '~/.vim/vim-tag'
Plug 'git@github.com:ctrlpvim/ctrlp.vim.git'

call plug#end()

" Configure C-tags
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vs:p <CR>:exec("tag ".expand("<cword>"))<CR>

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
