set nocompatible		" vim



syntax on               " 语法高亮

filetype on             " 检测文件的类型

set number				" 显示行号
set relativenumber      " 相对行号
set cursorline          " 用浅色高亮当前行
"autocmd InsertLeave * se nocul
"autocmd InsertEnter * se cul
autocmd filetype yaml setlocal ai ts=2 sw=2 et


set ruler               " 在编辑过程中，在右下角显示光标位置的状态行
set laststatus=2        " 显示状态栏 (默认值为 1, 无法显示状态栏)
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\
                        " 设置在状态行显示的信息

set tabstop=4           " Tab键的宽度
set softtabstop=4
set shiftwidth=4        " 统一缩进为4

set autoindent          " vim使用自动对齐，也就是把当前行的对齐格式应用到下一行(自动缩进)
set cindent             " (cindent是特别针对 C语言语法自动缩进)
set smartindent         " 依据上面的对齐格式，智能的选择对齐方式，对于类似C语言编写上有用
set shortmess=alI		" 启动时不显示援助乌干达的提示

set scrolloff=3         " 光标移动到buffer的顶部和底部时保持3行距离
set backspace=2			" 解决插入模式下delete/backspce键失效问题
set incsearch           " 输入搜索内容时就显示搜索结果
set hlsearch            " 搜索时高亮显示被找到的文本

"-- FOLDING --
set foldmethod=syntax
set foldlevelstart=1

let javaScript_fold=1         " JavaScript
let perl_fold=1               " Perl
let php_folding=1             " PHP
let r_syntax_folding=1        " R
let ruby_fold=1               " Ruby
let sh_fold_enabled=1         " sh
let vimsyn_folding='af'       " Vim script
let xml_syntax_folding=1      " XML

nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
                        " 用空格键来开关折叠

inoremap jj <esc>		" 将jj设为escape key
" 自动跳转到上次退出的位置
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

"-- EMMET CONFIG --
"redefine trigger key
let g:user_emmet_leader_key=','

call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/nerdtree'			" a file system explorer for the Vim editor
Plug 'wakatime/vim-wakatime'
Plug 'rizzatti/dash.vim'
Plug 'mattn/emmet-vim'
Plug 'kien/ctrlp.vim'
Plug 'leafgarland/typescript-vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'airblade/vim-gitgutter'

" theme
Plug 'rakr/vim-one'
Plug 'chriskempson/base16-vim'
Plug 'tomasr/molokai'
Plug 'morhetz/gruvbox'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'altercation/vim-colors-solarized'
Plug 'joshdick/onedark.vim'
Plug 'junegunn/seoul256.vim'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

colorscheme onedark   " 设置颜色主题
