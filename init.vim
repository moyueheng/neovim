set number
set scrolloff=5
set number
let &t_ut=''
set mouse=a
syntax on
set relativenumber
set cursorline
set wrap
set linebreak
set showmode
set showcmd
set showcmd
set t_Co=256
set autoindent
set autoindent
set expandtab
set expandtab " 自动将tab转换成空格
set softtabstop=4 " 一个tab转换成多少个空格
set laststatus=2 " 是否显示状态栏。0 表示不显示，1 表示只在多窗口时显示，2 表示显示。
set showmatch " 光标遇到圆括号、方括号、大括号时，自动高亮对应的另一个圆括号、方括号和大括号。
set hlsearch " 搜索时，高亮显示匹配结果
set incsearch " 输入搜索模式时，每输入一个字符，就自动跳到第一个匹配的结果。
set noswapfile " 不产生交换文件
set wildmenu 
set ignorecase
" 键位
let mapleader = "\<space>" " 把leader键改成空格键

"let &t_SI = "\<Esc>]50;CursorShape=1\x7"
"let &t_SR = "\<Esc>]50;CursorShape=2\x7"
"let &t_EI = "\<Esc>]50;CursorShape=0\x7"

map R :source $MYVIMRC<CR>
map S :w<CR>
map Q :q<CR>
map s <nop>
" 分屏
map sl :set splitright<CR>:vsplit<CR>
map sh :set nosplitright<CR>:vsplit<CR>
map sk :set nosplitbelow<CR>:split<CR>
map sj :set splitbelow<CR>:split<CR>
" 切换鼠标在屏幕的位置
map <LEADER>h <C-w>h
map <LEADER>j <C-w>j
map <LEADER>k <C-w>k
map <LEADER>l <C-w>l
" 修改分屏大小
map <up> :res -5<CR>
map <down> :res +5<CR>
map <left> :vertical resize+5<CR>
map <right> :vertical resize-5<CR>
" 标签页设置
map ti :tabe<CR>
map tl :+tabnext<CR>
map th :-tabnext<CR>



call plug#begin('~/.vim/plugged')

Plug 'connorholyday/vim-snazzy'

Plug 'vim-airline/vim-airline'

" File navigation
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'


Plug 'zxqfl/tabnine-vim'


call plug#end()


colorscheme snazzy



" ===
" === NERDTree
" ===
map ff :NERDTreeToggle<CR>
let NERDTreeMapOpenExpl = ""
let NERDTreeMapUpdir = ""
let NERDTreeMapUpdirKeepOpen = "h"
let NERDTreeMapOpenSplit = ""
let NERDTreeOpenVSplit = ""
let NERDTreeMapActivateNode = "i"
let NERDTreeMapOpenInTab = "o"
let NERDTreeMapPreview = ""
let NERDTreeMapCloseDir = "n"
let NERDTreeMapChangeRoot = "y"
let NERDTreeMapToggleHidden = "zh"


" ==
" == NERDTree-git
" ==
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }
