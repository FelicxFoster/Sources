
"Basic
set nu
set autoindent
set mouse=a
set backspace=2
set smartindent

"Scheme color
set tabstop=4
syntax enable
set t_Co=256
set background=dark
colorscheme molokai

"background none
hi Normal  ctermfg=252 ctermbg=none

"Key map
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <F3> :NERDTreeToggle<CR>
map <F5> :w<Enter>
map  I#<ESC>
map  0x<ESC>
map <Tab> I<Tab><Esc>
map <C-\> I<Backspace><Esc>
map  0
map  $
map <C-up>  ddkkp
map <C-down>  ddp
map <C-S-down>  yyp
map <C-S-up>  ddk

map <CR> A<CR><Esc>


map <C-F5>  <F5>:!python3 %<CR>


imap <C-h> <Left>
imap <C-l> <Right>
imap <C-k> <Up>
imap <C-j> <Down>
imap <C-b> <Backspace>
imap <C-d> <Delete>
imap <F5> <ESC>:w<Enter>
imap () ()<Left>
imap [] []<Left>
imap {} {}<Left>
imap <> <><Left>
imap '' ''<Left>
imap "" ""<Left>


"Vundle for plugin
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'


"可以在这是添加要安装的插件
Plugin 'Valloric/YouCompleteMe'

"Plugin 'SirVer/ultisnips'
"Plugin 'honza/vim-snippets'

Plugin 'scrooloose/nerdtree'

Plugin 'kien/ctrlp.vim'

Plugin 'tomasr/molokai'

Plugin 'rkulla/pydiction'

Plugin 'othree/html5.vim'
Plugin 'hail2u/vim-css3-syntax'

Plugin 'pangloss/vim-javascript'

Plugin 'Shougo/neocomplcache.vim'

Plugin 'moll/vim-node'
Plugin 'myhere/vim-nodejs-complete'

Plugin 'mattn/emmet-vim'


Plugin 'plasticboy/vim-markdown'
Plugin 'iamcco/markdown-preview.vim'

call vundle#end()
filetype plugin indent on 


" markdown config
let g:mkdp_auto_start = 1
let g:vim_markdown_frontmatter = 1
map <F6> :MarkdownPreview<CR><Esc>


"Python   pydiction -- Tab-complete
filetype plugin on
let g:pydiction_location = '/home/sqd/.vim/bundle/pydiction/complete-dict'
let g:pydiction_menu_height = 4  


"Node.js  vim-node
autocmd User Node if &filetype == "javascript" | setlocal expandtab | endif


autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags 


