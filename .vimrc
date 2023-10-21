"return" 2>&- || "exit""
"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/weixianwei/.vim/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('/Users/weixianwei/.vim/dein')

" Let dein manage dein
" Required:
call dein#add('/Users/weixianwei/.vim/dein/repos/github.com/Shougo/dein.vim')
call dein#add('wsdjeg/dein-ui.vim')
"call dein#add('python-mode/python-mode')
call dein#add('scrooloose/nerdTree')

" Add or remove your plugins here like this:
"call dein#add('Shougo/neosnippet.vim')
"call dein#add('Shougo/neosnippet-snippets')

" Required:
call dein#end()

"call dein#begin('/Users/weixianwei/.vim/dein')
"call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------
set nocompatible "不兼容vi
syntax on " 关键字上色
syntax enable " 语法高亮
set hlsearch "搜索高亮显示 no~
filetype plugin indent on "文件类型检测
set relativenumber number "显示相对行
set ic "忽略大小写：ic， 不忽略：noic
set cursorline "高亮当前行
set autoindent "自动缩进
set smartindent "智能对齐
set incsearch " 输入时启用搜索

set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

"Python专门设置
let python_highlight_all=1
au Filetype python set tabstop=4 " tab 4空格
au Filetype python set softtabstop=4 " 退格删除缩进
au Filetype python set shiftwidth=4 " 自动缩进空格数
au Filetype python set textwidth=79
au Filetype python set expandtab " 把插入的tab 字符替换成特定数目的空格
au Filetype python set autoindent
au Filetype python set fileformat=unix
autocmd Filetype python set foldmethod=indent " 折叠代码
autocmd Filetype python set foldlevel=99


" 分屏
set hidden

"key map
nmap Q <Nop> " 解绑Q按键
inoremap jj <ESC> " jj映射为ESC 
nnoremap <space> za

" 常规模式禁用方向键
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" 插入模式禁用方向键
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>

" 句尾句头
noremap H ^
noremap L $


"将当前行向上/下移动
nmap n :m +1<CR>
nmap m :m -2<CR>
nmap <tab> V> " 缩进
nmap <s-tab> V< " 反缩进

nnoremap <F5> :exec 'NERDTreeToggle' <CR>

"pymode
"let g:pymode_options = 1
"let g:pymode_python = 'python3'
"let g:pymode_run = 0
