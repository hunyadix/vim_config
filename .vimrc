:imap jj <Esc>
" Quickly edit/reload this configuration file
nnoremap gev :e $MYVIMRC<CR>
nnoremap gsv :so $MYVIMRC<CR>

" Load plugins
call plug#begin('~/.vim/plugged')

map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vs:p <CR>:exec("tag ".expand("<cword>"))<CR>
