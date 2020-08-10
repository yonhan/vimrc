" System vimrc file for MacVim
" set nocompatible
set encoding=utf-8
scriptencoding utf-8

set fileencodings=utf-8,gb2312,gbk,gb18030
set termencoding=utf-8
set fileformats=unix,dos
set langmenu=zh_CN.UTF-8
language message zh_CN.UTF-8

set background=dark
set guifont=Fantasque\ Sans\ Mono:h14
set linespace=3

set tags=tags;
set hidden

set laststatus=2    " 启动显示状态行(1),总是显示状态行(2)
set foldenable      " 允许折叠
set foldmethod=indent
set foldlevel=99

syntax on
set number                      " 显示行号
set tabstop=4                   " 设定tab长度为4
set shiftwidth=4                " 缩进的空格数
set softtabstop=4
set expandtab                 " 是否在缩进和遇到Tab键时使用空格代替; 使用noexpandtab取消设置
set smarttab
set autoindent                  " 自动缩进
set smartindent
set ignorecase
set smartcase
set cindent
set confirm

set showcmd              "在状态栏显示当前输入的命令
set showmode			 "显示INSERT NORMAL等
set lazyredraw           " Don't redraw while executing macros (good performance config)

set hlsearch
set incsearch

set showmatch                   " 显示括号配对情况
set nopaste
set clipboard+=unnamed          " 与windows共享剪贴板

set history=99                  " keep 99 lines of command history
set showmatch                   " 显示括号配对情况

set guioptions-=T               " windows下隐藏工具栏
"set guioptions-=r               " 把gui右边的滑动条去掉
set guioptions-=L               " 把gui左边的滑动条去掉
set guioptions-=m               " 把gui的菜单栏去掉
set guioptions-=b
set shortmess=atI               " 启动的时候不显示援助索马里儿童的提示(是I而不是L)

set completeopt=longest,menu
set ruler
set cursorline
set autowrite
set magic
set nowrap
set linebreak
set iskeyword+=_,$,@,%,#,-

set backspace=indent,eol,start

set undofile

set mouse=a
set selection=exclusive
set selectmode=mouse,key

" 禁止生成临时文件
set nobackup
set noswapfile

"set scrolloff=5
set sidescrolloff=3
set pumheight=20

set nocompatible              " 去除VI一致性,必须要添加
filetype off                  " 必须要添加

" 设置包括vundle和初始化相关的runtime path
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
" " 另一种选择, 指定一个vundle安装插件的路径
"
" " 让vundle管理插件版本,必须
 Plugin 'VundleVim/Vundle.vim'
"
" " 以下范例用来支持不同格式的插件安装.
" " 格式为 Plugin '用户名/插件仓库名'
" " 正确指定路径用以设置runtimepath. 以下范例插件在sparkup/vim目录下
 Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " 安装L9，如果已经安装过这个插件，可利用以下格式避免命名冲突
 Plugin 'ascenator/L9', {'name': 'newL9'}
 Plugin 'git://github.com/scrooloose/nerdtree.git'
 Plugin 'git://github.com/Xuyuanp/nerdtree-git-plugin.git'

 Plugin 'scrooloose/syntastic'

" " 你的所有插件需要在下面这行之前
 call vundle#end()            " 必须
 filetype plugin indent on    " 必须
" 加载vim自带和插件相应的语法和文件类型相关脚本
" " 忽视插件改变缩进,可以使用以下替代:
 "filetype plugin on
" "
" " 常用的命令
" " :PluginList       - 列出所有已配置的插件
" " :PluginInstall     - 安装插件,追加 `!` 用以更新或使用 :PluginUpdate
" " :PluginSearch foo - 搜索 foo ; 追加 `!` 清除本地缓存
" " :PluginClean      - 清除未使用插件,需要确认; 追加 `!`
" 自动批准移除未使用插件
" "
"
let Tlist_Ctags_Cmd='ctags'
let Tlist_Show_One_File=1               "不同时显示多个文件的tag，只显示当前文件的
let Tlist_WinWidt =28                   "设置taglist的宽度
let Tlist_Exit_OnlyWindow=1             "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window=1           "在右侧窗口中显示taglist窗口
"let Tlist_Use_Left_Windo =1             "在左侧窗口中显示taglist窗口
"
map <F2> :NERDTreeToggle<CR>
map <F3> :TlistToggle<CR>



let g:NERDTreeWinPos="left"
let g:NERDTreeWinSize=25
let g:NERDTreeShowLineNumbers=1
let g:neocomplcache_enable_at_startup = 1 
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_cpplint_exec = 'cpplint'
let g:syntastic_cpp_checkers = ['cpplint', 'gcc']
" 设置 cpplint 的错误级别阈值（默认是 5），级别低于这一设置的不会显示
let g:syntastic_cpp_cpplint_thres = 1
let syntastic_aggregate_errors = 1
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_style_error_symbol = '!'
let g:syntastic_style_warning_symbol = '?'
