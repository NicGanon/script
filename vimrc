" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}
"
"Plugin 'gmarik/vundle'

" ... other plugin

Plugin 'Valloric/YouCompleteMe'
Plugin 'python.vim'
"Plugin 'cespare/vim-golang'
Plugin 'fatih/vim-go'
Plugin 'Blackrush/vim-gocode'
Plugin 'pylint.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'vim-airline/vim-airline'
Plugin 'asenac/vim-opengrok'

"Plugin 'VundleVim/Vundle.vim'                         " 插件管理
Plugin 'tomasr/molokai'                               " 主题
"Plugin 'scrooloose/nerdtree'                          " 目录树
"Plugin 'Xuyuanp/nerdtree-git-plugin'                  " 目录 Git 信息
"Plugin 'vim-airline/vim-airline'                      " 上下边栏
Plugin 'vim-airline/vim-airline-themes'               " 边栏主题
Plugin 'terryma/vim-multiple-cursors'                 " 多行编辑
Plugin 'jiangmiao/auto-pairs'                         " 符号自动补全
"Plugin 'Valloric/YouCompleteMe'                       " 自动补全
"Plugin 'fatih/vim-go'                                 " Go 插件
Plugin 'scrooloose/nerdcommenter'                     " 注释插件
Plugin 'kien/ctrlp.vim'                               " 快速文件索引
Plugin 'easymotion/vim-easymotion'                    " 文件内跳转
Plugin 'tpope/vim-surround'                           " 修改包围符号
Plugin 'tpope/vim-repeat'                             " 插件支持 . 重复操作
Plugin 'arthuryangcs/tagbar'                          " 代码结构
Plugin 'arthuryangcs/vim-bufkill'                     " 关闭 buff
Plugin 'dyng/ctrlsf.vim'                              " 文件间搜索
Plugin 'sjl/gundo.vim'                                " 树形显示 undo 操作
Plugin 'arthuryangcs/vim-polyglot'                    " 多语言高亮
Plugin 'vim-scripts/ShowTrailingWhitespace'           " 显示行尾的空白字符
Plugin 'luochen1990/rainbow'                          " 彩虹括号
Plugin 'tpope/vim-fugitive'                           " Git 文件修改提示
Plugin 'mileszs/ack.vim'                              " 代码搜索
Plugin 'airblade/vim-gitgutter'                       " Git diff
"Plugin 'SirVer/ultisnips'                             " 模板补全
Plugin 'w0rp/ale'                                     " 异步代码检测工具
Plugin 'skywind3000/asyncrun.vim'						" 异步执行
" text object
" Plug 'kana/vim-textobj-user'						" 支持自定义文本对象
" Plug 'kana/vim-textobj-line'							" 增加行文本对象: l
" dal yal cil
" Plug 'kana/vim-textobj-entire'						" 增加文件文本对象: e
" dae yae cie
" Plug 'kana/vim-textobj-indent'						" 增加缩进文本对象: i
" dai yai cii - 相同缩进属于同一块
"


"conf vim-opengrok
let g:opengrok_jar = '~/Documents/opengrok/opengrok-1.0/lib/opengrok.jar'
let g:opengrok_ctags = '/usr/local/Cellar/ctags/5.8_1'
let g:opengrok_config_file = '~/Documents/opengrok/opengrok-1.0/etc/configuration.xml'

" template
Plugin 'pathogen.vim'
Plugin 'aperezdc/vim-template'
Plugin 'solarnz/thrift.vim'

" snippets
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"

" Remember last position
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif
"
"set omnifunc=syntaxcomplete#Complete
"set completeopt=longest,menu
"let g:gofmt_command = "goimports"
"autocmd BufWritePre *.go :Fmt

syntax on
set showcmd
set ruler
" enable backspace
set backspace=indent,eol,start
set nu
set mouse=
set ts=4 sts=4 sw=4
set encoding=utf-8
" set expandtab
"
set completeopt=longest,menu
autocmd Filetype python set ts=4 sts=4 expandtab
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd Filetype java setlocal omnifunc=javacomplete#Complete
" autocmd vimenter * NERDTree

set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

set laststatus=2

" YCM settings
let g:ycm_key_list_select_completion = ['', '']
let g:ycm_key_list_previous_completion = ['', '']
let g:ycm_key_invoke_completion = '<C-Space>'

" UltiSnips settings
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
