set nocompatible              " 去除VI一致性,必须要添加
set showmode                  " 在底部显示, 当前处于命令模式还是插入模式
set showcmd                   " 命令模式下, 在底部显示, 当前键入的命令, 操作完成, 显示消失
" set mouse=a                   " 支持使用鼠标
set encoding=utf-8            " 使用utf-8编码
set t_Co=256                  " 启用256色
set autoindent                " auto indent
set tabstop=2                 " 按下tab键, vim显示的空格数
set shiftwidth=4              " 缩进>>的每一级的字符数
set expandtab                 " 自动将tab转为空格
set softtabstop=2             " Tab转为多少个空格
set number   		      " 显示行号
set wrap                      " 自动折行
set scrolloff=5		      " 垂直滚动时, 光标距离顶部/底部的位置
set showmatch 		      " 自动高亮对应的另一个圆括号等
set undofile		      " 保留撤销历史
" set backupdir=~/.vim/.backup//
" set directory=~/.vim/.swp//
set undodir=~/.vim/.undo//
set hlsearch                  " 高亮颜色设置
hi Search ctermbg=LightYellow
hi Search ctermfg=Red
syntax on                     " 语法高亮
filetype indent on            " 开启文件类型检查, 并且载入与该类型对应的缩进规则
filetype off                  " 必须要添加

" 设置包括vundle和初始化相关的runtime path
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" 另一种选择, 指定一个vundle安装插件的路径
"call vundle#begin('~/some/path/here')

" 让vundle管理插件版本,必须
Plugin 'VundleVim/Vundle.vim'
"vim-easymotion
Plugin 'file:///root/.vim/easymotion'
" 以下范例用来支持不同格式的插件安装.
" 请将安装插件的命令放在vundle#begin和vundle#end之间.
" Github上的插件
" 格式为 Plugin '用户名/插件仓库名'
"Plugin 'tpope/vim-fugitive'
" 来自 http://vim-scripts.org/vim/scripts.html 的插件
" Plugin '插件名称' 实际上是 Plugin 'vim-scripts/插件仓库名'
"只是此处的用户名可以省略
"Plugin 'L9'
" 由Git支持但不再github上的插件仓库 Plugin 'git clone 后面的地址'
"Plugin 'git://git.wincent.com/command-t.git'
" 本地的Git仓库(例如自己的插件) Plugin 'file:///+本地插件仓库绝对路径'
"Plugin 'file:///home/gmarik/path/to/plugin'
" 插件在仓库的子目录中.
" 正确指定路径用以设置runtimepath. 以下范例插件在sparkup/vim目录下
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" 安装L9，如果已经安装过这个插件，可利用以下格式避免命名冲突
"Plugin 'ascenator/L9', {'name': 'newL9'}

" 你的所有插件需要在下面这行之前
call vundle#end()            " 必须
filetype plugin indent on    " 必须
"加载vim自带和插件相应的语法和文件类型相关脚本
" 忽视插件改变缩进,可以使用以下替代:
"filetype plugin on
"
" 常用的命令
" :PluginList       - 列出所有已配置的插件
" :PluginInstall  	 - 安装插件,追加 `!` 用以更新或使用 :PluginUpdate
" :PluginSearch foo - 搜索 foo ; 追加 `!` 清除本地缓存
" :PluginClean      - 清除未使用插件,需要确认; 追加 `!`
"自动批准移除未使用插件
"
" 查阅 :h vundle 获取更多细节和wiki以及FAQ
" 将你自己对非插件片段放在这行之后
"nmap  fe <leader><leader>e
"nmap  fE <leader><leader>E
"nmap  a <leader><leader>f 
"nmap  e <leader><leader>F 
map <leader><leader>. <Plug>(easymotion-repeat)
map <leader><leader>h <Plug>(easymotion-linebackward)
map <leader><leader>l <Plug>(easymotion-lineforward)
nmap <leader>s :wa<CR>
