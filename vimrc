runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()

set background=dark
colorscheme desert

" 禁用 vi 键盘模式
set nocompatible

" 编码
" set enc=utf-8

" 开启文件检测功能
filetype on
filetype plugin on
filetype indent on

" 语法高亮
syntax on

" 缩进
set tabstop=4
set shiftwidth=4
set softtabstop=2
set autoindent
set cindent
set noexpandtab
set smarttab
set smartindent

" 显示行号
set number

" 禁止错误声音提示
set noeb

" 未保存文件时，提示确认
set confirm

" 历史记录数
set history=1000

" 禁止生成临时文件
set nobackup
set noswapfile

" 搜索
set ignorecase
set hlsearch
set incsearch

" 状态栏
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}

" 带有以下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-

" 高亮显示匹配的括号
set showmatch
set matchtime=5

" 高亮当前行
"set cursorline
"hi CursorLine term=bold cterm=bold guibg=Grey40

" 用空格键来开关折叠
set foldenable
set foldmethod=manual
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

" NERDTree
" set autochdir
let NERDTreeChDirMode=2
nnoremap <F5> :silent! NERDTreeToggle<CR>
let NERDTreeShowBookmarks=1
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.jpg$','\.png$','\.gif$','\.svn','\.hg','\.git']

" easy motion
let g:EasyMotion_leader_key = '<Leader>'

"nmap <Leader>tb :TagbarToggle<CR>
"let g:tagbar_ctags_bin='/usr/bin/ctags'
"let g:tagbar_width=30
"autocmd BufReadPost *.js,*.php call tagbar#autoopen()

" Minibuferpl
let g:miniBufExplMapCTabSwitchBufs=0
let g:miniBufExplMapWindowsNavVim=0
let g:miniBufExplMapWindowNavArrows=0

" vimwiki
" 是否在词条文件保存时就输出html  这个会让保存大词条比较慢
" 所以我默认没有启用  有需要的话就把这一行复制到下面去
" 'auto_export': 1,
 
" 多个维基项目的配置
let g:vimwiki_list = [{'path' : '/data/vimwiki/wiki/',
		\ 'template_path'     : '/data/vimwiki/tmpl/',
		\ 'template_default'  : 'default',
		\ 'template_ext'      : '.tmpl',
		\ 'path_html'         : '/data/vimwiki/html/',
		\ 'nested_syntaxes'   : {'JScript': 'js', 'Php': 'php', 'Css': 'css', 'Bash': 'bash', 'Sql': 'sql'} }]
 
" 对中文用户来说，我们并不怎么需要驼峰英文成为维基词条
let g:vimwiki_camel_case = 0
 
" 标记为完成的 checklist 项目会有特别的颜色
let g:vimwiki_hl_cb_checked = 1
 
" 我的 vim 是没有菜单的，加一个 vimwiki 菜单项也没有意义
let g:vimwiki_menu = ''
 
" 是否开启按语法折叠  会让文件比较慢
let g:vimwiki_folding = 1
 
" 是否在计算字串长度时用特别考虑中文字符
let g:vimwiki_CJK_length = 1
 
let g:vimwiki_valid_html_tags='a,b,i,s,u,sub,sup,kbd,del,br,hr,div,code,h1,h2,h3,h4,script,style'

nmap <F8> :Vimwiki2HTML<CR>
nmap <F7> :VimwikiAll2HTML<CR>
