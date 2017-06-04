" Remap movement keys
nnoremap j h
nnoremap k j
nnoremap l k
nnoremap é l

" Quickly exiting insert mode
:imap jk <Esc>
:inoremap ő <Esc>
:inoremap á <Esc>

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
Plug 'reewr/vim-monokai-phoenix'
Plug 'git@github.com:dunckr/vim-monokai-soda.git'

call plug#end()

" Configure C-tags
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vs:p <CR>:exec("tag ".expand("<cword>"))<CR>

colorscheme monokai-soda
