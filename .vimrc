set number
set title
set ambiwidth=double
set tabstop=4
set expandtab
set shiftwidth=4
set smartindent
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
set nrformats-=octal
set hidden
set history=50
set virtualedit=block
set whichwrap=b,s,[,],<,>
set backspace=indent,eol,start
set autochdir
set wildmenu
set hidden
set cursorline

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif
"
" Required:
set runtimepath^=.vim/dein/repos/github.com/Shougo/dein.vim
"
" Required:
call dein#begin(expand('.vim/dein'))
"
" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')
"
" Add or remove your plugins here:
call dein#add('Shougo/unite.vim')
call dein#add('Shougo/neomru.vim')
"call dein#add('Shougo/neosnippet.vim')
"call dein#add('Shougo/neosnippet-snippets')
"
" You can specify revision/branch/tag.
"call dein#add('Shougo/vimshell', { 'rev': '3787e5' })
"
" Required:
call dein#end()
"
" Required:
filetype plugin indent on
"
" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
"
"End dein Scripts-------------------------
"
nnoremap <silent> ,uy :<C-u>Unite history/yank<CR>
nnoremap <silent> ,ub :<C-u>Unite buffer<CR>
nnoremap <silent> ,uf :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
nnoremap <silent> ,ur :<C-u>Unite -buffer-name=register register<CR>
nnoremap <silent> ,uu :<C-u>Unite file_mru buffer<CR>
nnoremap <silent> ,uk :<C-u>Unite bookmark<CR>
