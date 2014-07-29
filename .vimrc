set nocompatible
" 语法高亮
syntax on 
" set background
syntax enable 
set background=dark
" set colors scheme
colorscheme solarized

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install bundles
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

" The following are examples of different formats supported.
" Keep bundle commands between here and filetype plugin indent on.
" scripts on GitHub repos
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-rails.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" scripts from http://vim-scripts.org/vim/scripts.html
Bundle 'L9'
Bundle 'OmniCppComplete'
Bundle 'AutoComplPop'
Bundle 'SuperTab'
"Bundle 'FuzzyFinder'
" Bundle 'Valloric/YouCompleteMe'
" Bundle 'Valloric/ListToggle'
Bundle 'https://github.com/Lokaltog/vim-powerline.git'
" Bundle 'scrooloose/syntastic'
" scripts not on GitHub
" Bundle 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Bundle 'file:///home/gmarik/path/to/plugin'
" ...

Bundle  'godlygeek/tabular'
Bundle  'plasticboy/vim-markdown'

" common setting 
" 去掉输入错误的提示声音
set noeb
" 在处理未保存或只读文件的时候，弹出确认
set confirm
" 自动缩进
set autoindent
set cindent
" Tab键的宽度
set tabstop=4
" 统一缩进为4
set softtabstop=4
set shiftwidth=4
" 不要用空格代替制表符
" set noexpandtab
" " 在行和段开始处使用制表符
" set smarttab
" 显示行号
set number
" 历史记录数
set history=1000
"禁止生成临时文件
set nobackup
set noswapfile
"搜索忽略大小写
set ignorecase
"搜索逐字符高亮
set hlsearch
set incsearch
"行内替换
set gdefault
"编码设置
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
"语言设置
" set langmenu=zh_CN.UTF-8
" set helplang=cn
" 侦测文件类型
filetype on
" 载入文件类型插件
filetype plugin on
" 为特定文件类型载入相关缩进文件
filetype indent on
" 保存全局变量
set viminfo+=!
" " 带有如下符号的单词不要被换行分割
" set iskeyword+=_,$,@,%,#,-
" " 字符间插入的像素行数目
" set linespace=0
" " 增强模式中的命令行自动完成操作
" set wildmenu
" " 使回格键（backspace）正常处理indent, eol, start等
" set backspace=indent,eol,start
" "状态栏显示目前所执行的指令
" set showcmd
" " 允许backspace和光标键跨越行边界
" set whichwrap+=<,>,h,l
" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0
" 启动的时候不显示那个援助索马里儿童的提示
" set shortmess=atl
" " 在被分割的窗口间显示空白，便于阅读
" set fillchars=vert:\ ,stl:\ ,stlnc:\
" " 高亮显示匹配的括号
" set showmatch
" " 匹配括号高亮的时间（单位是十分之一秒）
" set matchtime=5
" " 光标移动到buffer的顶部和底部时保持3行距离
" set scrolloff=3
" " 为C程序提供自动缩进
" set smartindent
" "隐藏工具栏
" set guioptions-=T
" "隐藏菜单栏
" set guioptions-=m
" "开启折叠
" "set foldenable
" "设置语法折叠
" "set foldmethod=syntax 
" "设置折叠区域的宽度
" "set foldcolumn = 0
" "设置折叠层数
" "set foldlevel=1   
" "设置自动关闭折叠
" "set foldclose=all

" plugin settiog 
" plugin vim-powerline 
set laststatus=2
set t_Co=256
let g:Powerline_symbols='unicode'
set encoding=utf8

