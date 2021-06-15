"git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
":PluginInstall
" =============== vimrc 配置,所有vim环境全部用这套,统一操作 ================ "
" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC

" ==== (1)不依赖插件的vim配置 ====

"按编程语言的语法，对代码进行彩色标示，术语叫做语法高亮
syntax on

" 开启语法高亮功能
syntax enable

"关闭vi的一致性模式 避免以前版本的一些Bug和局限
set nocompatible

"显示行数标示
set number
 
"取消底部状态栏显示。1为关闭，2为开启。
set laststatus=2
 
"将输入的命令显示出来，便于查看当前输入的信息
set showcmd
 
"设置魔术匹配控制，可以通过:h magic查看更详细的帮助信息
set magic
 
"设置vim存储的历史命令记录的条数
set history=1000
 
"插入右括号时会短暂地跳转到匹配的左括号
set showmatch
 
"搜索时忽略大小写
set ignorecase
 
"在执行宏命令时，不进行显示重绘；在宏命令执行完成后，一次性重绘，以便提高性能。
set lazyredraw
 
"设置一个tab对应4个空格
set tabstop=4

"让vim把连续的空格当成一个tab
set shiftwidth=4
 
"在按退格键时，如果前面有4个空格，则会统一清除
set softtabstop=4

" 设定文件浏览器目录为当前目录  
set bsdir=buffer  

" 显示光标当前位置
set ruler

" 高亮显示当前行/列
set cursorline
"set cursorcolumn

" 设置编码  
set enc=utf-8  

" 设置文件编码  
set fenc=utf-8  

" 设置文件编码检测类型及支持格式  
" set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936  

set encoding=utf-8
"set fenc=cp936
set fileencoding=utf-8
"set fileencodings=cp936,ucs-bom,utf-8

"将新增的tab转换为空格。不会对已有的tab进行转换
set expandtab

"backspace删除字符设定,为2时可以删除任意值,0或1时,仅可删除刚输入的字符无法删除原有的文字
set backspace=2
 
"高亮显示搜索匹配到的字符串
set hlsearch
 
"在搜索模式下，随着搜索字符的逐个输入，实时进行字符串匹配，并对首个匹配到的字符串高亮显示
set incsearch

"自动缩进
set autoindent
set cindent

" ctrl N 补全
set complete-=i

"粘帖时不自动缩进
"r:按回车不会添加注释,o:按o不会添加注释,c:重新格式化长注释行不会添加注释
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
 
"设置自定义快捷键的前导键
let mapleader=","
 
"使用前导键加w来实现加速文件保存，来代替:w!加回车
"nmap w :w!<CR>

nmap <C-f> gd
nmap <C-x> dawi
nmap <C-c> yaw
" ==== (2)vundle配置 ====

"开始使用Vundle的必须配置 
filetype off 
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

"使用Vundle来管理Vundle 
Plugin 'VundleVim/Vundle.vim' 

"PowerLine插件 状态栏增强展示 
Plugin 'Lokaltog/vim-powerline' 

"安装快速跳转"
Plugin 'Lokaltog/vim-easymotion'

"安装全局搜索 ack.vim"
Plugin 'mileszs/ack.vim'

"安装nerdtree
Plugin 'scrooloose/nerdtree' 

"安装vim-fswitch
Plugin 'derekwyatt/vim-fswitch'

"使用tarbar
Plugin 'majutsushi/tagbar'

" 多文档编辑插件
Plugin 'fholgado/minibufexpl.vim'

" 自动索引
Plugin 'ludovicchabant/vim-gutentags'

" AsyncRun
Plugin 'skywind3000/asyncrun.vim'

" 实时语法检查
Plugin 'dense-analysis/ale'

"
Plugin 'airblade/vim-gitgutter'

"使用neocomplacache
"Plugin 'Shougo/neocomplcache'

"使用neosnippet
"Plugin 'Shougo/neosnippet'

"使用
"Plugin 'Shougo/neosnippet-snippets'

"
Plugin 'MarcWeber/vim-addon-manager'

"colors
Plugin 'crusoexia/vim-dream'

"colors
Plugin 'crusoexia/vim-dracula' 

"colors
Plugin 'crusoexia/vim-monokai'

"
Plugin 'tomasr/molokai'

"
Plugin 'altercation/vim-colors-solarized'

"
Plugin 'chriskempson/base16-vim'

" 快速注释
Plugin 'scrooloose/nerdcommenter'

"
Plugin 'godlygeek/tabular'

" abolish插件, 快速改变命名规则
Plugin 'tpope/vim-abolish'

" gtags-cscope.vim
" Plugin 'yangrui1930/gtags-cscope.vim'
" Plugin 'yangrui1930/gtags.vim'

call vundle#end()

"Vundle配置必须 开启插件 
filetype plugin indent on 

"设置PowerLine状态栏
set nowrap  "禁止折行
set laststatus=2
set t_Co=256 
"let g:Powline_symbols='fancy'
let g:Powerline_colorscheme='solarized256'  
set enc=utf-8 
let termencoding=&encoding 
set fileencodings=utf-8,gbk,ucs-bom,cp936 
set guifont=Ubuntu\ Mono\ for\ Powerline\ 12 


" ==== (3) vundle 下载的插件各自的配置 ====
" vim-fswitch .h .c/.cpp 文件切换
nmap <F12> :FSHere<cr>


" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
nmap <F1> :NERDTreeToggle<CR>
" 设置NERDTree子窗口宽度
let NERDTreeWinSize=32
" 设置NERDTree子窗口位置
"let NERDTreeWinPos="left"
" 显示隐藏文件
"let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1
" 自动打开本目录树
autocmd VimEnter * NERDTree 

"Tagbar 
nmap <F4> :TagbarToggle<CR>
nmap <F5> :set nu!<CR>
nmap <F6> :set paste!<CR>

"easymotion"
nmap s <Plug>(easymotion-s)

"ack vim"
let g:ackprg = 'ag --nogroup --nocolor --column'
nnoremap <Leader>a :Ack!<Space>
nnoremap <Leader>ff byt":AckFile! <C-r>0<CR>
nnoremap <Leader>fs byt>:AckFile! <C-r>0<CR>
nnoremap <leader>fw viwy:Ack! <C-r>0<CR>
" t半匹配向后找到字符
" i全匹配，前后同时找到字符的范围

" 快速注释 默认快捷键
" <leader> c space
" <leaser> cc
" <leaser> cu
" 强迫症加注释补充一个空格
let g:NERDSpaceDelims=1

" 设置标签子窗口的宽度 
let tagbar_width=32 

" tagbar 子窗口中不显示冗余帮助信息 
let g:tagbar_compact=1

" 设置 ctags 对哪些代码标识符生成标签


"#####MiniBufExplorer#####
"显示/隐藏MiniBufExplorer 窗口
map <F10> :MBEToggle<cr>

" buffer 切换快捷键
map <F3>  :MBEbn<cr>
map <F2> :MBEbp<cr>

"主题配色方案
let g:solarized_termcolors=256
"call togglebg#map("<F5>")
syntax on
set background=dark
"colorscheme solarized
colorscheme molokai
"colorscheme monokai
"colorscheme dream
"colorscheme dracula 

" gtags
" let $GTAGSLABEL = 'native-pygments'
" let $GTAGSCONF = '/home/yangrui1/bin/share/gtags/gtags.conf'

"ctag相关
"set tags=tags
"set autochdir

set mps+=<:>
set mps+=':'
set mps+=":"
set tags=./.tags;,.tags

" vim-gutentags配置
" gutentags 搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']

" 所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'

" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags

" 配置 ctags 的参数
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']

" 检测 ~/.cache/tags 不存在就新建
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif



" asyncrun
" 自动打开quickfix windows 高度为6
let g:asyncrun_open = 6

" 任务结束的时候响铃提醒
let g:asyncrun_bell = 1

" 设置快捷键打开/关闭 Quickfix窗口
nnoremap <F7> :call asyncrun#quickfix_toggle(6)<cr>


" 实时语法检查ale配置
let g:ale_linters_explicit = 1
let g:ale_completion_delay = 500
let g:ale_echo_delay = 20
let g:ale_lint_delay = 500
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:airline#extensions#ale#enabled = 1

let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++14'
let g:ale_c_cppcheck_options = ''
let g:ale_cpp_cppcheck_options = ''

" 语法提示风格
"let g:ale_sign_error = "\ue009\ue009"
""hi! clear SpellBad
"hi! clear SpellCap
" hi! clear SpellRare
" hi! SpellBad gui=undercurl guisp=red
" hi! SpellCap gui=undercurl guisp=blue
" hi! SpellRare gui=undercurl guisp=magenta

"使用clang对c和c++进行语法检查，对python使用pylint进行语法检查
let g:ale_linters = {
    \   'c++': ['clang'],
    \   'c': ['clang'],
    \   'python': ['pylint'],
\}

"gitgutter
set updatetime=1000



" set cscopetag
" set cscopeprg=’gtags-cscope’
" let GtagsCscope_Auto_Load = 1
" let GtagsCscope_Auto_Map = 1
" let GtagsCscope_Quiet = 1
