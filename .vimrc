"""""""""""""""
" Keybindings "
"""""""""""""""

" Disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Remap movement keys
nnoremap j h
nnoremap k j
nnoremap l k
nnoremap é l

" Remap movement keys for operations
onoremap j h
onoremap k j
onoremap l k
onoremap é l

" Saving
noremap <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>

" Duplicate line
noremap <C-S-d> y0O<ESC>pkéy$lgp`[
noremap <C-S-d> y0O<ESC>pkéy$lgp`[
vnoremap <C-S-d> <ESC>yygp`[i
inoremap <C-S-d> <ESC>yygp`[i

" Quickly exiting insert mode
:imap jk <Esc>
:inoremap ő <Esc>
:inoremap á <Esc>

" Quickly edit/reload this configuration file
nnoremap gev :e $MYVIMRC<CR>
nnoremap gsv :so $MYVIMRC<CR>


"""""""""""
" Plugins "
"""""""""""

" Load plugins
call plug#begin('~/.vim/plugged')

Plug '~/.vim/vim-tag'
Plug 'git@github.com:ctrlpvim/ctrlp.vim.git'
Plug 'reewr/vim-monokai-phoenix'
Plug 'gkjgh/cobalt'
Plug 'endel/vim-github-colorscheme'

call plug#end()

" Configure plugins
" Configure C-tags
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vs:p <CR>:exec("tag ".expand("<cword>"))<CR>

" Colorscheme
"colorscheme monokai-phoenix
colorscheme cobalt
"colorscheme github
