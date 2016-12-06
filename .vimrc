" Configuration file for vim
set modelines=0" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible" Use Vim defaults instead of 100% vi compatibility
set backspace=2" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup


"key bind setting

"normal modeでNERDTree起動
nmap <C-n> :NERDTree<CR>

"setting
set number
set autoindent
syntax on
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set relativenumber
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis
set fileformats=unix,dos,mac


"----dein.vim setting----
if &compatible
    set nocompatible
endif

set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.vim/dein'))

call dein#add('Shougo/dein.vim')
call dein#add('scrooloose/nerdtree')
call dein#add('nathanaelkane/vim-indent-guides')
"call dein#add('Shougo/vimproc.vim', {'build': 'make'})

"call dein#add('Shougo/neocomplete.vim')
"call dein#add('Shougo/neomru.vim')
"call dein#add('Shougo/neosnippet')

call dein#end()

if dein#check_install()
    call dein#install()
endif

filetype plugin indent on

"----dein.vim setting end----

"vim-indent-guide setting
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']
let g:indent_guides_start_level = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=7
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=15


"----color scheme setting----
autocmd ColorScheme * highlight Comment ctermfg=3 guifg=#cb8500
colorscheme molokai
"colorscheme badwolf


