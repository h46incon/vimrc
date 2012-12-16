" {{{
" DesCRiption: �ʺ��Լ�ʹ�õ�vimrc�ļ���for Linux/Windows, GUI/Console
" Last Change: 2012-10-24
" Author:      Asins - asinsimple AT gmail DOT com
"              Get latest vimrc from http://nootn.com/lab/vim
" Version:     3.0
"}}}

" ����leaderΪ,
let mapleader=","
let g:mapleader=","
let maplocalleader=","

" {{{ ȫ������
" �ر� vi ����ģʽ
set nocompatible
" �Զ��﷨����
syntax on
" ����ļ�����
filetype on
" ����ļ����Ͳ��
filetype plugin on
"���ٱ��� 
nnoremap <leader>w :w!<cr>
" ���趨�ڲ���״̬�޷����˸���� Delete ��ɾ���س���
set backspace=indent,eol,start
set whichwrap+=<,>,h,l
" ��ʾ�к�
set number
" ���¿�������
set scrolloff=6
" �趨 tab ����Ϊ 4
set tabstop=4
" ���ð�BackSpace��ʱ�����һ��ɾ����4���ո�
set softtabstop=4
" �趨 << �� >> �����ƶ�ʱ�Ŀ��Ϊ 4
set shiftwidth=4
set smarttab
set history=1024
" ��ͻ����ʾ��ǰ��
set nocursorline
" �����ļ�ʱ������
set nobackup
" �Զ��л���ǰĿ¼Ϊ��ǰ�ļ����ڵ�Ŀ¼
set autochdir
" ����ʱ���Դ�Сд��������һ�������ϴ�д��ĸʱ�Դ�Сд����
set ignorecase
set smartcase
" �������ļ�����ʱ����������
set nowrapscan
" ʵʱ����
set incsearch
" ����ʱ������ʾ���ҵ����ı�
set hlsearch
" �رմ������� ʹ��������ʾ����
set noerrorbells
set visualbell
"set t_vb=

"How many tenths of a second to blink
set mat=2
" ��������δ������޸�ʱ�л�����������ʱ���޸��� vim ���𱣴�
set hidden
" �����Զ�����
set smartindent
" �趨�����е�����Ϊ 1
set cmdheight=1
" ��ʾ״̬�� (Ĭ��ֵΪ 1, �޷���ʾ״̬��)
set laststatus=2
"��ʾ����������
set showmatch

" ����Զ����и�ʽ��, ��߶�������֮�󳬹����ڸ߶Ƚ����һ�п�����������
set display=lastline
" ������״̬����ʾ����Ϣ
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ [%{(&fenc==\"\"?&enc:&fenc).(&bomb?\",BOM\":\"\")}]\ %c:%l/%L%)
" ��ʾTab��
set list
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<
"����ʱ����ʾ ������ʾ
set shortmess=atl
set sessionoptions=blank,buffers,curdir,folds,help,options,tabpages,winsize,slash,unix,resize

" �趨doc�ĵ�Ŀ¼
let helptags=$VIMFILES."/doc"
set helplang=cn
" }}}

" Alt-W�л��Զ�����
noremap <a-w> :exe &wrap==1 ? 'set nowrap' : 'set wrap'<cr>

" ����ѡ���ı���ϵͳ������
vnoremap <leader>yo "*y
" ��ϵͳ������ճ������
nnoremap <leader>po "*p
" ѡ��ģʽ Ctrl+c ����ѡ�е��ı�
vnoremap <c-c> "+y
" ��ͨģʽ�� Ctrl+c �����ļ�·��
nnoremap <c-c> :let @+ = expand('%:p')<cr>

if has("gui_running")
	set guioptions-=m " ���ز˵���
	set guioptions-=T " ���ع�����
	set guioptions-=L " ������������
	set guioptions-=r " �����Ҳ������
	set guioptions-=b " ���صײ�������
	set showtabline=0 " Tab��
endif

"�༭vim�����ļ�
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
"set guifont=YaHei\ Mono:h12
set guifont=Bitstream_Vera_Sans_Mono:h10:cANSI
"set gfw=��Բ:h10.5:cGB2312
"set gfw=Youyuan:h10.5:cGB2312
set gfw=YaHei\ Mono:h10.5:cGB2312
" }}}


" ɾ��������δβ�ո�
nnoremap <f12> :%s/[ \t\r]\+$//g<cr>

" �����л�
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k

" Buffers/Tab������ݷ�ʽ!
nnoremap <s-h> :bprevious<cr>
nnoremap <s-l> :bnext<cr>
nnoremap <s-j> :tabnext<cr>
nnoremap <s-k> :tabprev<cr>
"nnoremap F :tabe %

" ����ģʽ��������ģʽ�����ƶ����
noremap! <a-h> <left>
noremap! <a-l> <right>

" ����ģʽģʽ�����ƶ����
inoremap <a-j> <c-o>gj
inoremap <a-k> <c-o>gk

"����ģʽ��������ģʽ�����˸�
noremap! <a-;> <BS>

"һЩ�����ӳ��ת���﷨�������һ���ļ��л���˲�ͬ����ʱ���ã�
nnoremap <leader>1 :set filetype=xhtml<cr>
nnoremap <leader>2 :set filetype=css<cr>
nnoremap <leader>3 :set filetype=javascript<cr>
nnoremap <leader>4 :set filetype=php<cr>

"{{{ ����ģʽ��������ģʽ��Dvorak��λ�ķ���ӳ��
function! RemapDvorak()
	"{{{��ͨ
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
	"�ϵ�(��ʹ�ã�{{{
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
	"�ϵ�{{{
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
	" p�ұ�������{{{
	" -^ _@
	noremap! [ -
	noremap! { _
	noremap! ] ^
	noremap! } @
	"}}}
endfunction
nnoremap <leader>kr :call RemapDvorak()<cr>
"}}}
"{{{ ����ģʽ��������ģʽ��Dvorak��λ�ķ���ӳ�䣨Ĭ�����֣�
function! RemapDvorakDefaultNum()
	"{{{��ͨ
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
	"�ϵ�{{{
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
	" p�ұ�������{{{
	" -^ _@
	noremap! [ -
	noremap! { _
	noremap! ] ^
	noremap! } @
	"}}}
endfunction
nnoremap <leader>kn :call RemapDvorakDefaultNum()<cr>
"}}}
"{{{ Folding �۵�
"�۵���صĿ�ݼ�
"zR �����е��۵�
"zo չ���۵�
"zO �����ڷ�Χ������Ƕ�׵��۵���չ��
"zc �۵�
"[z ����ǰ�򿪵��۵��Ŀ�ʼ����
"]z ����ǰ�򿪵��۵���ĩβ����
"zj �����ƶ���������һ���۵��Ŀ�ʼ�����رյ��۵�Ҳ�����롣
"zk �����ƶ���ǰһ�۵��Ľ��������رյ��۵�Ҳ�����롣
set foldenable
" �����﷨�۵�
" manual  �ֹ������۵�
" indent  �����������ʾ���߼�����۵�
" expr    �ñ��ʽ�������۵�
" syntax  ���﷨�����������۵�
" diff    ��û�и��ĵ��ı������۵�
" marker  �����еı�־�۵�
set foldmethod=marker
" ���ô�����۵�����ʾ������
set foldexpr=1
" �����۵�����Ϊ
set foldlevel=0
" �����۵�����Ŀ��
set foldcolumn=0
set switchbuf=usetab,newtab
" �Զ���������
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
" ɾ��һ��CSS�����ÿո�
autocmd filetype css vnoremap <leader>co J:s/\s*\([{:;,]\)\s*/\1/g<CR>:let @/=''<cr>
autocmd filetype css nnoremap <leader>co :s/\s*\([{:;,]\)\s*/\1/g<CR>:let @/=''<cr>
" }}}

" Javascript {{{
autocmd BufRead,BufNewFile jquery.*.js setlocal ft=javascript syntax=jquery
" JSON syntax
autocmd BufRead,BufNewFile *.json setlocal ft=json
" }}}

" {{{ȫ������ѡ�е�����
vnoremap <silent> <leader>f y/<c-r>=escape(@", "\\/.*$^~[]")<cr><cr>
vnoremap <silent> <leader>F y?<c-r>=escape(@", "\\/.*$^~[]")<cr><cr>
" }}}

" {{{ linux �·�root�û�����
" cmap w!! w !sudo tee % > /dev/null
" }}}

" {{{ Winƽ̨�´���ȫ����� gvimfullscreen.dll
" Alt + Enter ȫ���л�
" Shift + t ���ʹ���͸����
" Shift + y �Ӵ󴰿�͸����
" Shift + r �л�Vim�Ƿ�������ǰ����ʾ
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
    "ӳ�� Alt+Enter �л�ȫ��vim
    noremap <a-enter> <esc>:call ToggleFullScreen()<cr>
    "�л�Vim�Ƿ�����ǰ����ʾ
    nnoremap <s-r> <esc>:call SwitchVimTopMostMode()<cr>
    "����Vim����Ĳ�͸����
    nnoremap <s-t> <esc>:call SetAlpha(10)<cr>
    "����Vim�����͸����
    nnoremap <s-y> <esc>:call SetAlpha(-10)<cr>
    "Vim������ʱ���Զ�����InitVim ��ȥ��Vim�İ�ɫ�߿�
    autocmd GUIEnter * call libcallnr(g:MyVimLib, 'InitVim', 0)
    " Ĭ������͸��
    autocmd GUIEnter * call libcallnr(g:MyVimLib, 'SetAlpha', g:VimAlpha)
endif
" }}}

" {{{ �س�ʱǰ�ַ�Ϊ{ʱ�Զ����в�ȫ
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
"<ctrl-x>_<ctrl-k> ����ʾ
autocmd filetype javascript set dictionary+=$VIMFILES/bundle/vim-dict/dict/javascript.dic
autocmd filetype javascript set dictionary+=$VIMFILES/bundle/vim-dict/dict/node.dic
autocmd filetype css set dictionary+=$VIMFILES/bundle/vim-dict/dict/css.dic
autocmd filetype php set dictionary+=$VIMFILES/bundle/vim-dict/dict/php.dic
" }}}

" Color
Bundle 'asins/molokai'
" �趨��ɫ����
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
	" {{{ svn.vim--McCoy svn����
	"Bundle 'svn.vim--McCoy'
	"<Leader><LocalLeader>c  - Calls :Svn commit
	"<Leader><LocalLeader>C  - Calls :Svn complete
	"<Leader><LocalLeader>u  - Calls :Svn update
	"<Leader><LocalLeader>l  - Calls :Svn log
	"<Leader><LocalLeader>a  - Calls :Svn add
	" }}}

"Bundle 'jamescarr/snipmate-nodejs'

	" Omnifunc {{{
	" <c-x>_<c-o> ����ʾ
	"Bundle 'teramako/jscomplete-vim'
	"autocmd FileType javascript setl omnifunc=jscomplete#CompleteJS
	"let g:jscomplete_use = ['dom', 'moz', 'es6th']
	" }}}

"Bundle 'L9'

"Bundle 'vimux'

	" {{{ asins/template.vim �ļ�ģ��
	Bundle 'asins/template.vim'
	let g:template_author = "Asins"
	" }}}

	"{{{ tpope/vim-fugitive Git�����
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

	" {{{ rst���֧�� ��Ҫpython֧��
	Bundle 'yangzetian/RST-Tables'
	",,c  ->  �����µ�rst���
    ",,f  ->  ���µ�ǰ���
	" }}}


	" {{{ bufexplorer.vim Buffers�л�
	Bundle 'bufexplorer.zip'
	" \be ȫ����ʽ�鿴ȫ���򿪵��ļ��б�
	" \bv ���ҷ�ʽ�鿴   \bs ���·�ʽ�鿴
	noremap <silent> <c-q> :BufExplorer<CR>
	noremap <silent> <a-q> :BufExplorerHorizontalSplit<CR>
	noremap <silent> <s-q> :BufExplorerVerticalSplit<CR>
	
	let g:bufExplorerDefaultHelp=0      " ����ʾĬ�ϰ�����Ϣ
	let g:bufExplorerShowRelativePath=1 " ��ʾ���·��
	let g:bufExplorerSortBy='mru'       " ʹ�����ʹ�õ����з�ʽ
	let g:bufExplorerSplitRight=0       " ����ָ�
	let g:bufExplorerSplitVertical=1    " ��ֱ�ָ�
	let g:bufExplorerSplitVertSize = 30 " Split width
	let g:bufExplorerUseCurrentWindow=1 " ���´����д�
	autocmd BufWinEnter \[Buf\ List\] setl nonumber
	" }}}

	" {{{ The-NERD-tree �ļ�������
	Bundle 'The-NERD-tree'
	" ��Tree���Լ���װ�εö��˶��Ư����
	let NERDChristmasTree=1
	" ���Ƶ�����ƶ�����һ������ʱ���Ƿ��Զ������������������
	let NERDTreeAutoCenter=1
	" ָ����ǩ�ļ�
	let NERDTreeBookmarksFile=$VIMFILES.'\NERDTree_bookmarks'
	" ָ�����ģʽ(1.˫���� 2.��Ŀ¼˫�ļ� 3.������)
	let NERDTreeMouseMode=2
	" �Ƿ�Ĭ����ʾ��ǩ�б�
	let NERDTreeShowBookmarks=1
	" �Ƿ�Ĭ����ʾ�ļ�
	let NERDTreeShowFiles=1
	" �Ƿ�Ĭ����ʾ�к�
	let NERDTreeShowLineNumbers=0
	" ����λ�ã�'left' or 'right'��
	let NERDTreeWinPos='left'
	" ���ڿ��
	let NERDTreeWinSize=31
	nnoremap <Leader>tt :NERDTree<CR>
	"}}}

	" {{{ The-NERD-Commenter ע�ʹ����õģ�����ӳ����д�ڲ����
	Bundle 'The-NERD-Commenter'
	" <leader>ca �ڿ�ѡ��ע�ͷ�ʽ֮���л�������C/C++ �Ŀ�ע��/* */����ע��//
	" <leader>cc ע�͵�ǰ��
	" <leader>cs �ԡ��ԸС��ķ�ʽע��
	" <leader>cA �ڵ�ǰ��β���ע�ͷ���������Insertģʽ
	" <leader>cu ȡ��ע��
	" <leader>cm ��ӿ�ע��
	" }}}

	" {{{ auto_mkdir �Զ�����Ŀ¼
	Bundle 'auto_mkdir'
	" }}}

	" {{{ mru.vim ��¼����򿪵��ļ�
	Bundle 'mru.vim'
	let MRU_File = $VIMFILES."/_vim_mru_files"
	let MRU_Max_Entries = 500
	let MRU_Add_Menu = 0
	nnoremap <leader>f :MRU<cr>
	" }}}

	" {{{ majutsushi/tagbar ���뵼��
	Bundle 'majutsushi/tagbar'
	if has("unix")
		let g:tagbar_ctags_bin = '/usr/local/bin/ctags'
	else
		let g:tagbar_ctags_bin = $VIMFILES.'/ctags.exe'
	endif
	let g:tagbar_autofocus = 1
	nnoremap <leader>tl :TagbarToggle<CR>
	" }}}

	" {{{ ZenCoding.vim �ܿ�Ĳ����HTML��������
	Bundle 'ZenCoding.vim'
	" ������°棺http://github.com/mattn/zencoding-vim
	" ��������ɿ���http://nootn.com/blog/Tool/23/
	" https://raw.github.com/mattn/zencoding-vim/master/TUTORIAL
	let g:user_zen_settings = {
	\    'lang': "zh-cn"
	\}
	" <c-y>m  �ϲ�����
	" }}}

	" {{{ CmdlineComplete ������ģʽ���Զ���ȫ
	Bundle 'CmdlineComplete'
	" Ctrl + p ����л�
	" Ctrl + n ��ǰ�л�
	" }}}

	" {{{ colorizer ��ɫ��ʾ���
	Bundle 'colorizer'
	" <leader>tc �л�����
	" :ColorHighlight  - start/update highlighting
	" :ColorClear      - clear all highlights
	" :ColorToggle     - toggle highlights
	" }}}

	" {{{ asins/jsbeautify �Ż�js���룬�����Ǽ򵥵����������������Ż�
	"Bundle 'asins/jsbeautify'
	" ��ʼ�Ż������ļ�
	"nnoremap <silent> <leader>js :call g:Jsbeautify()<cr>
	" }}}

	" {{{ asins/renamer.vim �ļ�������
	Bundle 'asins/renamer.vim'
	" :Renamer ����ǰ�ļ������ļ����µ�������ʾ��һ���´���
	" :Ren ��ʼ������
	"}}}
	
	" {{{ dterei/VimBookmarking ���ñ�ǣ���ǩ��
	Bundle 'dterei/VimBookmarking'
	" <f9> ���ñ��    <f4> ������ת���   <s-f4> ������ת���
	noremap <f9>   :ToggleBookmark<cr>
	noremap <f4>   :NextBookmark<cr>
	noremap <s-f4> :PreviousBookmark<cr>
	"}}}
	
	" {{{ ctrlp.vim �ļ�����
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
	"<c-d> �л���ȫ/ֻ�ļ�������
	"<c-r> �л�����ƥ��ģʽ���ַ���/����
	" }}}

	" {{{ matchit.zip ��%���������չʹ������Ƕ�ױ�ǩ�����֮����ת
	Bundle 'matchit.zip'
	" % ����ƥ��      g% ����ƥ��
	" [% ��λ����     ]% ��λ��β
	"}}}
	
	" {{{ MatchTag HTML��ǩ�������
	Bundle 'MatchTag'
	" }}}

	" {{{ Mark ������tags��ǲ�ͬ����ɫ�����ڹۿ���ʽ�Ĳ����
	Bundle 'Mark'
	" �������������롰,hl��ʱ���ͻ�ѹ���µĵ��ʸ������ڴ˵����ϰ���,hh��������õ��ʵĸ���������ڸ������������롰,hh������������еĸ�����
	" ��Ҳ����ʹ��virsualģʽѡ��һ���ı���Ȼ�󰴡�,hl�������������ѡ�е��ı�������������á�,hr��������һ��������ʽ�����������з������������ʽ���ı���
	nnoremap <silent> <leader>hl <plug>MarkSet
	vnoremap <silent> <leader>hl <plug>MarkSet
	nnoremap <silent> <leader>hh <plug>MarkClear
	vnoremap <silent> <leader>hh <plug>MarkClear
	nnoremap <silent> <leader>hr <plug>MarkRegex
	vnoremap <silent> <leader>hr <plug>MarkRegex
	" ������ڸ����ı���ʹ�á�,#����,*�����������������ı�����ʹ���ˡ�,#����,*���󣬾Ϳ���ֱ�����롰#����*�����������Ҹø����ı���ֱ�������á�#����*�������������ı���
	" <silent>* ��ǰMarkWord����һ��     <silent># ��ǰMarkWord����һ��
	" <silent>/ ����MarkWords����һ��    <silent>? ����MarkWords����һ��
	hi MarkWord1  ctermbg=Cyan     ctermfg=Black  guibg=#8CCBEA    guifg=Black
	hi MarkWord2  ctermbg=Green    ctermfg=Black  guibg=#A4E57E    guifg=Black
	hi MarkWord3  ctermbg=Yellow   ctermfg=Black  guibg=#FFDB72    guifg=Black
	hi MarkWord4  ctermbg=Red      ctermfg=Black  guibg=#FF7272    guifg=Black
	hi MarkWord5  ctermbg=Magenta  ctermfg=Black  guibg=#FFB3FF    guifg=Black
	hi MarkWord6  ctermbg=Blue     ctermfg=Black  guibg=#9999FF    guifg=Black
	"}}}

" {{{ neocomplcache �Զ�����
Bundle 'neocomplcache'
"}}}

" {{{ UltiSnips ���������
Bundle 'UltiSnips'
"}}}

" {{{ a.vim ��ͷ�ļ���CPP�ļ�����ת
Bundle 'a.vim'
"}}}
"
" }}}
