" {{{
" DesCRiption: 适合自己使用的vimrc文件，for Linux/Windows, GUI/Console
" Author:      h46incon
" Thanks:      Asins - asinsimple AT gmail DOT com
"              Get latest vimrc from http://nootn.com/lab/vim
"}}}

" 设置leader为,
let mapleader=","
let g:mapleader=","
let maplocalleader=","

" {{{ 全局设置
" 关闭 vi 兼容模式
set nocompatible
" 自动语法高亮
syntax on
" 检测文件类型
filetype on
" 检测文件类型插件
filetype plugin on
"快速保存 
nnoremap <leader>w :w!<cr>
" 不设定在插入状态无法用退格键和 Delete 键删除回车符
set backspace=indent,eol,start
set whichwrap+=<,>,h,l
" 显示行号
set number
" 上下可视行数
set scrolloff=6
" 设定 tab 长度为 4
set tabstop=4
" 设置按BackSpace的时候可以一次删除掉4个空格
set softtabstop=4
" 设定 << 和 >> 命令移动时的宽度为 4
set shiftwidth=4
set smarttab
set history=1024
" 不突出显示当前行
set nocursorline
" 覆盖文件时不备份
set nobackup
" 自动切换当前目录为当前文件所在的目录
set autochdir
" 搜索时忽略大小写，但在有一个或以上大写字母时仍大小写敏感
set ignorecase
set smartcase
" 搜索到文件两端时不重新搜索
set nowrapscan
" 实时搜索
set incsearch
" 搜索时高亮显示被找到的文本
set hlsearch
" 关闭错误声音 使用屏闪提示错误
set noerrorbells
set visualbell
"set t_vb=

"How many tenths of a second to blink
set mat=2
" 允许在有未保存的修改时切换缓冲区，此时的修改由 vim 负责保存
set hidden
" 智能自动缩进
set smartindent
" 设定命令行的行数为 1
set cmdheight=1
" 显示状态栏 (默认值为 1, 无法显示状态栏)
set laststatus=2
"显示括号配对情况
set showmatch

" 解决自动换行格式下, 如高度在折行之后超过窗口高度结果这一行看不到的问题
set display=lastline
" 设置在状态行显示的信息-
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ [%{(&fenc==\"\"?&enc:&fenc).(&bomb?\",BOM\":\"\")}]\ %c:%l/%L%)
" 显示Tab符
set list
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<
"启动时不显示 捐赠提示
set shortmess=atl
set sessionoptions=blank,buffers,curdir,folds,help,options,tabpages,winsize,slash,unix,resize

" 设定doc文档目录
let helptags=$VIMFILES."/doc"
set helplang=cn
" }}}

" Alt-W切换自动换行
noremap <a-w> :exe &wrap==1 ? 'set nowrap' : 'set wrap'<cr>

" 复制选中文本到系统剪贴板
vnoremap <leader>yo "*y
" 从系统剪贴板粘贴内容
nnoremap <leader>po "*p
" 选中模式 Ctrl+c 复制选中的文本
vnoremap <c-c> "+y
" 普通模式下 Ctrl+c 复制文件路径
nnoremap <c-c> :let @+ = expand('%:p')<cr>

if has("gui_running")
	set guioptions-=m " 隐藏菜单栏
	set guioptions-=T " 隐藏工具栏
	set guioptions-=L " 隐藏左侧滚动条
	set guioptions-=r " 隐藏右侧滚动条
	set guioptions-=b " 隐藏底部滚动条
	set showtabline=0 " Tab栏
endif

"编辑vim配置文件
if has("unix")
    set fileformats=unix,dos,mac
    nnoremap <leader>ee :tabnew $HOME/.vimrc<cr>
	let $VIMFILES = $HOME."/.vim"
else
    set fileformats=dos,unix,mac
    nnoremap <leader>ee :tabnew $VIM/_vimrc<cr>
	let $VIMFILES = $VIM."/vimfiles"
endif

" Alt-Space is System menu
if has("gui")
  noremap <m-space> :simalt ~<cr>
  inoremap <m-space> <c-o>:simalt ~<cr>
  cnoremap <m-space> <c-c>:simalt ~<cr>
endif

"set nobomb

set termencoding=chinese
set fileencodings=ucs-bom,utf-8,cp936,cp950,latin1
set ambiwidth=double
"font test: 1234567890Oo
set guifont=Lucida\ Sans\ Typewriter\ O:h10:cANSI
"set guifont=Bitstream_Vera_Sans_Mono:h10:cANSI
"set guifont=Monaco:h10:cANSI
"set linespace=-3  "使用Monaco字体的话行间矩太大，调小之。

set gfw=YaHei\ Mono:h10.5:cGB2312
" }}}


" 删除所有行未尾空格
nnoremap <f12> :%s/[ \t\r]\+$//g<cr>

" 窗口切换
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k

" Buffers/Tab操作快捷方式!
"nnoremap <s-h> :bprevious<cr>
"nnoremap <s-l> :bnext<cr>
"nnoremap <s-j> :tabnext<cr>
"nnoremap <s-k> :tabprev<cr>
"nnoremap F :tabe %

" 插入模式和命令行模式左右移动光标
noremap! <a-h> <left>
noremap! <a-l> <right>

" 插入模式上下移动光标
inoremap <a-j> <c-o>gj
inoremap <a-k> <c-o>gk
" 命令行模式上下选择命令
cnoremap <a-j> <down>
cnoremap <a-k> <up>

"插入模式和命令行模式快速退格
noremap! <a-;> <BS>

"一些不错的映射转换语法（如果在一个文件中混合了不同语言时有用）
nnoremap <leader>1 :set filetype=xhtml<cr>
nnoremap <leader>2 :set filetype=css<cr>
nnoremap <leader>3 :set filetype=javascript<cr>
nnoremap <leader>4 :set filetype=php<cr>

"{{{ 插入模式和命令行模式下Dvorak键位的符号映射
function! RemapDvorak()
	"{{{普通
	"$&[{}(=*)+]!
	noremap! ` $
	noremap! 1 &
	noremap! 2 [
	noremap! 3 {
	noremap! 4 }
	noremap! 5 (
	noremap! 6 =
	noremap! 7 *
	noremap! 8 )
	noremap! 9 +
	noremap! 0 ]
	noremap! - !
	noremap! = #
	"}}}
	"上档(不使用）{{{
	"~%7531902468`
	"noremap! ~ ~
	"noremap! ! %
	"noremap! @ 7
	"noremap! # 5
	"noremap! $ 3
	"noremap! % 1
	"noremap! ^ 9
	"noremap! & 0
	"noremap! * 2
	"noremap! ( 4
	"noremap! ) 6
	"noremap! _ 8
	"noremap! + `
	"}}}
	"上档{{{
	noremap! ~ ~
	noremap! ! 1
	noremap! @ 2
	noremap! # 3
	noremap! $ 4
	noremap! % 5
	noremap! ^ 6
	noremap! & 7
	noremap! * 8
	noremap! ( 9
	noremap! ) 0
	noremap! _ %
	noremap! + `
	"}}}
	" p右边两个键{{{
	" -^ _@
	noremap! [ -
	noremap! { _
	noremap! ] ^
	noremap! } @
	"}}}
endfunction
nnoremap <leader>kr :call RemapDvorak()<cr>
"}}}
"{{{ 插入模式和命令行模式下Dvorak键位的符号映射（默认数字）
function! RemapDvorakDefaultNum()
	"{{{普通
	"$&[{}(=*)+]!
	noremap! ` $
	noremap! 1 1
	noremap! 2 2
	noremap! 3 3
	noremap! 4 4
	noremap! 5 5
	noremap! 6 6
	noremap! 7 7
	noremap! 8 8
	noremap! 9 9
	noremap! 0 0
	noremap! - !
	noremap! = #
	"}}}
	"上档{{{
	noremap! ~ ~
	noremap! ! &
	noremap! @ [
	noremap! # {
	noremap! $ }
	noremap! % (
	noremap! ^ =
	noremap! & *
	noremap! * )
	noremap! ( +
	noremap! ) ]
	noremap! _ %
	noremap! + `
	"}}}
	" p右边两个键{{{
	" -^ _@
	noremap! [ -
	noremap! { _
	noremap! ] ^
	noremap! } @
	"}}}
endfunction
nnoremap <leader>kn :call RemapDvorakDefaultNum()<cr>
"}}}
"{{{ Folding 折叠
"折叠相关的快捷键
"zR 打开所有的折叠
"zo 展开折叠
"zO 对所在范围内所有嵌套的折叠点展开
"zc 折叠
"[z 到当前打开的折叠的开始处。
"]z 到当前打开的折叠的末尾处。
"zj 向下移动。到达下一个折叠的开始处。关闭的折叠也被计入。
"zk 向上移动到前一折叠的结束处。关闭的折叠也被计入。
set foldenable
" 设置语法折叠
" manual  手工定义折叠
" indent  更多的缩进表示更高级别的折叠
" expr    用表达式来定义折叠
" syntax  用语法高亮来定义折叠
" diff    对没有更改的文本进行折叠
" marker  对文中的标志折叠
set foldmethod=marker
" 设置代码块折叠后显示的行数
set foldexpr=1
" 设置折叠层数为
set foldlevel=0
" 设置折叠区域的宽度
set foldcolumn=0
set switchbuf=usetab,newtab
" 自动运用设置
autocmd! bufwritepost _vimrc silent source $VIM/_vimrc
" }}}

" VimFiles {{{
autocmd Filetype vim noremap <buffer> <F1> <Esc>:help <C-r><C-w><CR>
" }}}

" Arch Linux {{{
autocmd BufNewFile,BufRead PKGBUILD setl syntax=sh ft=sh
autocmd BufNewFile,BufRead *.install setl syntax=sh ft=sh
" }}}

" HTML {{{
autocmd FileType html,xhtml setlocal smartindent foldmethod=indent
" }}}

" CSS {{{
autocmd FileType css setlocal smartindent foldmethod=indent
autocmd FileType css setlocal noexpandtab tabstop=2 shiftwidth=2
autocmd BufNewFile,BufRead *.scss setl ft=scss
" 删除一条CSS中无用空格
autocmd filetype css vnoremap <leader>co J:s/\s*\([{:;,]\)\s*/\1/g<CR>:let @/=''<cr>
autocmd filetype css nnoremap <leader>co :s/\s*\([{:;,]\)\s*/\1/g<CR>:let @/=''<cr>
" }}}

" Javascript {{{
autocmd BufRead,BufNewFile jquery.*.js setlocal ft=javascript syntax=jquery
" JSON syntax
autocmd BufRead,BufNewFile *.json setlocal ft=json
" }}}

" {{{全文搜索选中的文字
vnoremap <silent> <leader>f y/<c-r>=escape(@", "\\/.*$^~[]")<cr><cr>
vnoremap <silent> <leader>F y?<c-r>=escape(@", "\\/.*$^~[]")<cr><cr>
" }}}

" {{{ linux 下非root用户保存
" cmap w!! w !sudo tee % > /dev/null
" }}}

" {{{ Win平台下窗口全屏组件 gvimfullscreen.dll
" Alt + Enter 全屏切换
" Shift + t 降低窗口透明度
" Shift + y 加大窗口透明度
" Shift + r 切换Vim是否总在最前面显示
if has('gui_running') && has('gui_win32') && has('libcall')
    let g:MyVimLib = 'gvimfullscreen.dll'
    function! ToggleFullScreen()
        "let s:IsFullScreen = libcallnr("gvimfullscreen.dll", 'ToggleFullScreen', 0)
        "let s:IsFullScreen = libcallnr("gvimfullscreen.dll", 'ToggleFullScreen', 27 + 29*256 + 30*256*256)
        call libcall(g:MyVimLib, 'ToggleFullScreen', 27 + 29*256 + 30*256*256)
    endfunction

    let g:VimAlpha = 255
    function! SetAlpha(alpha)
        let g:VimAlpha = g:VimAlpha + a:alpha
        if g:VimAlpha < 180
            let g:VimAlpha = 180
        endif
        if g:VimAlpha > 255
            let g:VimAlpha = 255
        endif
        call libcall(g:MyVimLib, 'SetAlpha', g:VimAlpha)
    endfunction

    let g:VimTopMost = 0
    function! SwitchVimTopMostMode()
        if g:VimTopMost == 0
            let g:VimTopMost = 1
        else
            let g:VimTopMost = 0
        endif
        call libcall(g:MyVimLib, 'EnableTopMost', g:VimTopMost)
    endfunction
    "映射 Alt+Enter 切换全屏vim
    noremap <a-enter> <esc>:call ToggleFullScreen()<cr>
    "切换Vim是否在最前面显示
    nnoremap <leader>sr <esc>:call SwitchVimTopMostMode()<cr>
    "增加Vim窗体的不透明度
    nnoremap <leader>st <esc>:call SetAlpha(10)<cr>
    "增加Vim窗体的透明度
    nnoremap <leader>sy <esc>:call SetAlpha(-10)<cr>
    "Vim启动的时候自动调用InitVim 以去除Vim的白色边框
    autocmd GUIEnter * call libcallnr(g:MyVimLib, 'InitVim', 0)
    " 默认设置透明
    autocmd GUIEnter * call libcallnr(g:MyVimLib, 'SetAlpha', g:VimAlpha)
endif
" }}}

" {{{ 回车时前字符为{时自动换行补全
function! <SID>OpenSpecial(ochar,cchar)
	let line = getline('.')
	let col = col('.') - 2
	if(line[col] != a:ochar)
		if(col > 0)
			return "\<esc>a\<CR>"
		else
			return "\<CR>"
		endif
	endif
	if(line[col+1] != a:cchar)
		call setline('.',line[:(col)].a:cchar.line[(col+1):])
	else
		call setline('.',line[:(col)].line[(col+1):])
	endif
	return "\<esc>a\<CR>;\<CR>".a:cchar."\<esc>\"_xk$\"_xa"
endfunction
inoremap <silent> <CR> <C-R>=<SID>OpenSpecial('{','}')<CR>
" }}}

" {{{ Fast edit hosts file
function! FlushDNS()
	python import sys
	exe 'python sys.argv = ["ipconfig /flushdns"]'
endfunction
nnoremap <Leader>host :tabnew c:\windows\system32\drivers\etc\hosts<CR>
nnoremap <Leader>dns :!ipconfig /flushdns<CR>
"autocmd! bufwritepost hosts call FlushDNS()
" }}}

" {{{ plugin for vundle
" more script see: http://vim-scripts.org/vim/scripts.html
set rtp+=$VIMFILES/bundle/vundle/
call vundle#rc()
let g:bundle_dir = $VIMFILES.'/bundle'

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" Docs
Bundle 'asins/vimcdoc'

" dict {{{
Bundle 'asins/vim-dict'
"<ctrl-x>_<ctrl-k> 打开提示
autocmd filetype javascript set dictionary+=$VIMFILES/bundle/vim-dict/dict/javascript.dic
autocmd filetype javascript set dictionary+=$VIMFILES/bundle/vim-dict/dict/node.dic
autocmd filetype css set dictionary+=$VIMFILES/bundle/vim-dict/dict/css.dic
autocmd filetype php set dictionary+=$VIMFILES/bundle/vim-dict/dict/php.dic
" }}}

" Color
Bundle 'h46incon/molokai'
"Bundle 'molokai'
Bundle 'Solarized'
" 设定配色方案
colorscheme molokai

" Syntax
Bundle 'html5.vim'
Bundle 'alampros/vim-javascript-syntax'
Bundle 'python.vim--Vasiliev'
Bundle 'xml.vim'
Bundle 'Markdown'
Bundle "lepture/vim-css"

" Indent
Bundle 'IndentAnything'
"Bundle 'Javascript-Indentation'
"Bundle 'gg/python.vim'

" Plugin
	" {{{ svn.vim--McCoy svn操作
	"Bundle 'svn.vim--McCoy'
	"<Leader><LocalLeader>c  - Calls :Svn commit
	"<Leader><LocalLeader>C  - Calls :Svn complete
	"<Leader><LocalLeader>u  - Calls :Svn update
	"<Leader><LocalLeader>l  - Calls :Svn log
	"<Leader><LocalLeader>a  - Calls :Svn add
	" }}}

"Bundle 'jamescarr/snipmate-nodejs'

"Bundle 'L9'

"Bundle 'vimux'

	" {{{ asins/template.vim 文件模板
	Bundle 'asins/template.vim'
	let g:template_author = "Asins"
	" }}}

	"{{{ tpope/vim-fugitive Git命令集合
	Bundle 'tpope/vim-fugitive'
	if executable('git')
		nnoremap <silent> <leader>gs :Gstatus<CR>
		nnoremap <silent> <leader>gd :Gdiff<CR>
		nnoremap <silent> <leader>gc :Gcommit<CR>
		nnoremap <silent> <leader>gb :Gblame<CR>
		nnoremap <silent> <leader>gl :Glog<CR>
		nnoremap <silent> <leader>gp :Git push<CR>
	endif
	"}}}

"Bundle 'FencView.vim'
"Bundle 'hallettj/jslint.vim'

	" {{{ rst表格支持 需要python支持
	Bundle 'yangzetian/RST-Tables'
	",,c  ->  创建新的rst表格
    ",,f  ->  更新当前表格
	" }}}

	" {{{ bufexplorer.vim Buffers切换
	Bundle 'bufexplorer.zip'
	" \be 全屏方式查看全部打开的文件列表
	" \bv 左右方式查看   \bs 上下方式查看
	noremap <silent> <c-q> :BufExplorer<CR>
	noremap <silent> <a-q> :BufExplorerHorizontalSplit<CR>
	noremap <silent> <s-q> :BufExplorerVerticalSplit<CR>
	
	let g:bufExplorerDefaultHelp=0      " 不显示默认帮助信息
	let g:bufExplorerShowRelativePath=1 " 显示相对路径
	let g:bufExplorerSortBy='mru'       " 使用最近使用的排列方式
	let g:bufExplorerSplitRight=0       " 居左分割
	let g:bufExplorerSplitVertical=1    " 垂直分割
	let g:bufExplorerSplitVertSize = 30 " Split width
	let g:bufExplorerUseCurrentWindow=1 " 在新窗口中打开
	autocmd BufWinEnter \[Buf\ List\] setl nonumber
	" }}}

	" {{{ minibufexplorerpp （不使用）
	" Bundle 'minibufexplorerpp'
	" }}}

	" {{{ The-NERD-tree 文件管理器
	Bundle 'The-NERD-tree'
	" 让Tree把自己给装饰得多姿多彩漂亮点
	let NERDChristmasTree=1
	" 控制当光标移动超过一定距离时，是否自动将焦点调整到屏中心
	let NERDTreeAutoCenter=1
	" 指定书签文件
	let NERDTreeBookmarksFile=$VIMFILES.'\NERDTree_bookmarks'
	" 指定鼠标模式(1.双击打开 2.单目录双文件 3.单击打开)
	let NERDTreeMouseMode=2
	" 是否默认显示书签列表
	let NERDTreeShowBookmarks=1
	" 是否默认显示文件
	let NERDTreeShowFiles=1
	" 是否默认显示行号
	let NERDTreeShowLineNumbers=0
	" 窗口位置（'left' or 'right'）
	let NERDTreeWinPos='left'
	" 窗口宽度
	let NERDTreeWinSize=31
	nnoremap <Leader>tt :NERDTree<CR>
	"}}}

	" {{{ The-NERD-Commenter 注释代码用的，以下映射已写在插件中
	Bundle 'The-NERD-Commenter'
	" <leader>ca 在可选的注释方式之间切换，比如C/C++ 的块注释/* */和行注释//
	" <leader>cc 注释当前行
	" <leader>cs 以”性感”的方式注释
	" <leader>cA 在当前行尾添加注释符，并进入Insert模式
	" <leader>cu 取消注释
	" <leader>cm 添加块注释
	" }}}

	" {{{ auto_mkdir 自动创建目录
	Bundle 'auto_mkdir'
	" }}}

	" {{{ mru.vim 记录最近打开的文件
	Bundle 'mru.vim'
	let MRU_File = $VIMFILES."/_vim_mru_files"
	let MRU_Max_Entries = 500
	let MRU_Add_Menu = 0
	nnoremap <leader>f :MRU<cr>
	" }}}

	" {{{ majutsushi/tagbar 代码导航
	Bundle 'majutsushi/tagbar'
	if has("unix")
		let g:tagbar_ctags_bin = '/usr/local/bin/ctags'
	else
		let g:tagbar_ctags_bin = $VIMFILES.'/ctags.exe'
	endif
	let g:tagbar_autofocus = 1
	nnoremap <leader>tl :TagbarToggle<CR>
	" }}}

	" {{{ ZenCoding.vim 很酷的插件，HTML代码生成
	Bundle 'ZenCoding.vim'
	" 插件最新版：http://github.com/mattn/zencoding-vim
	" 常用命令可看：http://nootn.com/blog/Tool/23/
	" https://raw.github.com/mattn/zencoding-vim/master/TUTORIAL
	let g:user_zen_settings = {
	\    'lang': "zh-cn"
	\}
	" <c-y>m  合并多行
	" }}}

	" {{{ CmdlineComplete 命令行模式下自动补全
	Bundle 'CmdlineComplete'
	" Ctrl + p 向后切换
	" Ctrl + n 向前切换
	" }}}

	" {{{ colorizer 颜色显示插件
	Bundle 'colorizer'
	" <leader>tc 切换高亮
	" :ColorHighlight  - start/update highlighting
	" :ColorClear      - clear all highlights
	" :ColorToggle     - toggle highlights
	" }}}

	" {{{ asins/jsbeautify 优化js代码，并不是简单的缩进，而是整个优化
	"Bundle 'asins/jsbeautify'
	" 开始优化整个文件
	"nnoremap <silent> <leader>js :call g:Jsbeautify()<cr>
	" }}}

	" {{{ asins/renamer.vim 文件重命名
	Bundle 'asins/renamer.vim'
	" :Renamer 将当前文件所在文件夹下的内容显示在一个新窗口
	" :Ren 开始重命名
	"}}}
	
	" {{{ dterei/VimBookmarking 设置标记（标签）
	Bundle 'dterei/VimBookmarking'
	" <f9> 设置标记    <f4> 向下跳转标记   <s-f4> 向上跳转标记
	noremap <f9>   :ToggleBookmark<cr>
	noremap <f4>   :NextBookmark<cr>
	noremap <s-f4> :PreviousBookmark<cr>
	"}}}
	
	" {{{ ctrlp.vim 文件搜索
	Bundle 'ctrlp.vim'
	"set wildignore+=*/tmp/*,*.so,*.swp,*.zip  " MacOSX/Linux
	set wildignore+=tmp\*,*.swp,*.zip,*.exe   " Windows
	let g:ctrlp_custom_ignore = {
	  \ 'dir':  '\.git$\|\.hg$\|\.svn$',
	  \ 'file': '\.exe$\|\.so$\|\.dll$',
	  \ 'link': 'some_bad_symbolic_links',
	  \ }
	let g:ctrlp_working_path_mode=1
	"let g:ctrlp_clear_cache_on_exit=0
	let g:ctrlp_cache_dir=$VIMFILES.'/_ctrlp'
	let g:ctrlp_extensions=['tag', 'buffertag', 'quickfix', 'dir', 'rtscript']
	nnoremap <a-p> :CtrlP D:/htdocs/tudou.com/<cr>
	"<c-d> 切换完全/只文件名搜索
	"<c-r> 切换搜索匹配模式：字符串/正则
	" }}}

	" {{{ matchit.zip 对%命令进行扩展使得能在嵌套标签和语句之间跳转
	Bundle 'matchit.zip'
	" % 正向匹配      g% 反向匹配
	" [% 定位块首     ]% 定位块尾
	"}}}
	
	" {{{ MatchTag HTML标签高亮配对
	Bundle 'MatchTag'
	" }}}

	" {{{ Mark 给各种tags标记不同的颜色，便于观看调式的插件。
	Bundle 'Mark'
	" 这样，当我输入“,hl”时，就会把光标下的单词高亮，在此单词上按“,hh”会清除该单词的高亮。如果在高亮单词外输入“,hh”，会清除所有的高亮。
	" 你也可以使用virsual模式选中一段文本，然后按“,hl”，会高亮你所选中的文本；或者你可以用“,hr”来输入一个正则表达式，这会高亮所有符合这个正则表达式的文本。
	nnoremap <silent> <leader>hl <plug>MarkSet
	vnoremap <silent> <leader>hl <plug>MarkSet
	nnoremap <silent> <leader>hh <plug>MarkClear
	vnoremap <silent> <leader>hh <plug>MarkClear
	nnoremap <silent> <leader>hr <plug>MarkRegex
	vnoremap <silent> <leader>hr <plug>MarkRegex
	" 你可以在高亮文本上使用“,#”或“,*”来上下搜索高亮文本。在使用了“,#”或“,*”后，就可以直接输入“#”或“*”来继续查找该高亮文本，直到你又用“#”或“*”查找了其它文本。
	" <silent>* 当前MarkWord的下一个     <silent># 当前MarkWord的上一个
	" <silent>/ 所有MarkWords的下一个    <silent>? 所有MarkWords的上一个
	hi MarkWord1  ctermbg=Cyan     ctermfg=Black  guibg=#8CCBEA    guifg=Black
	hi MarkWord2  ctermbg=Green    ctermfg=Black  guibg=#A4E57E    guifg=Black
	hi MarkWord3  ctermbg=Yellow   ctermfg=Black  guibg=#FFDB72    guifg=Black
	hi MarkWord4  ctermbg=Red      ctermfg=Black  guibg=#FF7272    guifg=Black
	hi MarkWord5  ctermbg=Magenta  ctermfg=Black  guibg=#FFB3FF    guifg=Black
	hi MarkWord6  ctermbg=Blue     ctermfg=Black  guibg=#9999FF    guifg=Black
	"}}}

" {{{ (!)neocomplcache 自动补齐
"Bundle 'neocomplcache'
"}}}

"{{{ (!)clang_complete 基于clang的自动不全
	"Bundle 'Rip-Rip/clang_complete'
"}}}

" {{{ UltiSnips 代码段生成
Bundle 'UltiSnips'
"}}}

" {{{ a.vim 在头文件和CPP文件中跳转
Bundle 'a.vim'
"}}}

"{{{Powerline 状态栏插件(不使用）
"Bundle 'Lokaltog/vim-powerline'
"let g:Powerline_symbols = 'fancy'
"}}}

"{{{ SearchComplete 在按下/ 或？时使用tab补全
	Bundle 'SearchComplete'
"}}}
" }}}
