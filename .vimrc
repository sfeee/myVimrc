""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"基本配置
if has("syntax")
      syntax on            " 语法高亮
    endif
colorscheme PaperColor

" detect file type
filetype on
filetype plugin on
"set background=dark

if has("autocmd")
      au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
      "have Vim load indentation rules and plugins according to the detected filetype
     filetype plugin indent on
endif

    set autoindent        " 设置自动对齐(缩进)：即每行的缩进值与上一行相等；使用 noautoindent 取消设置
    set smartindent        " 智能对齐方式
    set tabstop=4        " 设置制表符(tab键)的宽度
    set softtabstop=4     " 设置软制表符的宽度
    set shiftwidth=4    " (自动) 缩进使用的4个空格
    set cindent            " 使用 C/C++ 语言的自动缩进方式
    set backspace=2    " 设置退格键可用
    set showmatch        " 设置匹配模式，显示匹配的括号
    set linebreak        " 整词换行
    set mouse=a            " Enable mouse usage (all modes)    "使用鼠标
    set number            " Enable line number    "显示行号


    set ruler            " 标尺，用于显示光标位置的行号和列号，逗号分隔。每个窗口都有自己的标尺。如果窗口有状态行，标尺在那里显示。否则，它显示在屏幕的最后一行上。

    "--命令行设置--
    set showcmd            " 命令行显示输入的命令
    set showmode        " 命令行显示vim当前模式

    "--find setting--
    set ignorecase        " 搜索模式里忽略大小写
    set incsearch        " 输入字符串就显示匹配点
    set hlsearch

	"背景透明
	hi Normal  ctermfg=252 ctermbg=none
    set nocompatible	" 关闭兼容模式
    set clipboard+=unnamed	"共享剪切板
    set cmdheight=1	"命令行的高度
    set scrolloff=3 	"光标移动到buffer的顶部和底部时保持3行距离
    set foldenable 	"允许折叠
    set foldmethod=manual	"手动折叠
	set cursorline	" 高亮显示当前行/列
    set cursorcolumn
    set textwidth=80	"设置文本宽度
    set colorcolumn=+1

	"缩进对齐线
"	set list lcs=tab:\¦\ 
"	set lcs=tab:\¦\ 
"	set list

	"自动保存时间是s
	let autosave=10
	"字体设置
	set guifont=Inconsolata\ 14

"编码设置
"----------------------------------------------------------------
"Vim 在与屏幕/键盘交互时使用的编码(取决于实际的终端的设定)
set encoding=utf-8
set langmenu=zh_CN.UTF-8
" 设置打开文件的编码格式
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileencoding=utf-8
"解决菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
"解决consle输出乱码
"set termencoding = cp936
"设置中文提示
language messages zh_CN.utf-8
"设置中文帮助
set helplang=cn
"设置为双字宽显示，否则无法完整显示如:☆
set ambiwidth=double
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"插件安装与配置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"首先安装ｖｕｎｄｌｅ
"在~/目录下面创建 .vim 目录，然后再创建 .vim/bundle
"cd ~/.vim/bundle 目录，然后执行 git clone
"https://github.com/gmarik/vundle.git 等待完成
"在 ~/.vimrc这个文件的头部加上下面这个配置，这个是官网的介绍
"
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'
Plugin 'Valloric/YouCompleteMe'
" The following are examples of different formats supported.
" Keep Plugin commands between here and filetype plugin indent on.
" scripts on GitHub repos
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-rails.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" scripts from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
Plugin 'FuzzyFinder'
" scripts not on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" ...
"拼写检查
Bundle 'scrooloose/syntastic'
"补全 python
Plugin 'davidhalter/jedi'

Bundle 'majutsushi/tagbar'
Bundle 'scrooloose/nerdtree'
"Bundle 'fholgado/minibufexpl.vim'
Bundle 'bling/vim-airline'
Plugin 'xptemplate'
Plugin 'tpope/vim-fugitive'
" MATLAB/MATLAB-fold: MATLAB 语法高亮及代码折叠插件。
Plugin 'djoshea/vim-matlab'
Plugin 'djoshea/vim-matlab-fold'
Plugin 'mattn/emmet-vim'
"Plugin 'emmetio/emmet-vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'nathanaelkane/vim-indent-guides'
"
"匹配成对的标签，在()、""、甚至HTML标签之间快速跳转,快捷键为% vimrc中配置如下：
Bundle 'vim-scripts/matchit.zip'
"Bundle 'minibufexpl.vim' //buffer管理
"Bundle 'comments.vim' //快速注释
"Bundle 'winmanager' //窗口管理
"Bundle 'Valloric/YouCompleteMe' //强大的自动补全，谁用谁知道
"Bundle 'Lokaltog/vim-powerline'
"强大的文件搜索
Bundle 'kien/ctrlp.vim'
"使用,fu打开进行搜索类似go to definition
Bundle 'tacahiroy/ctrlp-funky'
"模糊查询　输入,,/查询
Bundle 'ggVGc/vim-fuzzysearch'
"Bundle 'godlygeek/tabular' //快速对齐
"Bundle 'terryma/vim-multiple-cursors' //多光标同时编辑
Bundle 'tpope/vim-haml'
"Bundle 'genoma/vim-less' //less支持
Bundle 'Raimondi/delimitMate'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'othree/html5.vim'
Bundle 'docunext/closetag.vim'
"自动高亮匹配标签
Bundle 'gregsexton/MatchTag'
"Bundle 'easymotion/vim-easymotion' //强大的搜索定位
"Bundle 'terryma/vim-expand-region' //自动选择括号等符号中的内容
"Bundle 'tpope/vim-surround' //符号自动环绕
"Bundle 'tpope/vim-repeat' //更为强大的重做功能
"自动关闭html xml标签
Bundle 'alvan/vim-closetag'
"显示以及去除行尾空格使用,空格
Bundle 'bronson/vim-trailing-whitespace'
" <C-\>触发／
" 安装ultisnips
" 安装代码块集合
Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'
Bundle 'rstacruz/vim-ultisnips-css'
"Bundle 'tacahiroy/ctrlp-funky' //基于ctrlp的搜索函数等变量名
"Bundle 'dyng/ctrlsf.vim' //基于ctrlp的文件内容搜索，配合vim－multiple－cursors可以很方便一次修改多个文件的内容
Bundle "pangloss/vim-javascript"
Bundle 'othree/yajs.vim'
Bundle 'othree/javascript-libraries-syntax.vim'
Bundle 'maksimr/vim-jsbeautify'
Plugin 'Shougo/vimshell.vim'
Plugin 'vim-scripts/javacomplete'
"Plugin 'NLKNguyen/papercolor-theme'
"Bundle 'marijnh/tern_for_vim' //牛逼的基于语法分析的补全
"Bundle 'mbriggs/mark.vim' //标记高亮
"颜色符号显示对应颜色
"Bundle 'scrooloose/nerdtree' //文件树浏览
"Bundle 'Xuyuanp/nerdtree-git-plugin' //git支持
"Bundle 'majutsushi/tagbar' //ctags标签提取显示
Bundle 'Shougo/vimproc.vim'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'whoarememe/vimDict'
"Bundle 'plasticboy/vim-markdown'
Plugin 'iamcco/markdown-preview.vim'
Plugin 'jaxbot/browserlink.vim'
"Plugin 'greyblake/vim-preview'
"Bundle 'jiazhoulvke/MarkdownView'
"Bundle 'suan/vim-instant-markdown'
filetype plugin indent on     " required
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
" NOTE: comments after Plugin commands are not allowed.
" Put your stuff after this line
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"插件配置
"
""""""""
"browselink
"window.__BL_OVERRIDE_CACHE = true


""""""""
"""markdown-preview
	let g:mkdp_path_to_chrome = "chromium"
	" path to the chrome or the command to open chrome(or other modern browsers)

	let g:mkdp_auto_start = 1
	" set to 1, the vim will open the preview window once enter the markdown
	" buffer

	let g:mkdp_auto_open =  1
	" set to 1, the vim will auto open preview window when you edit the
	" markdown file

	let g:mkdp_auto_close = 0
	" set to 1, the vim will auto close current preview window when change
	" from markdown buffer to another buffer

	let g:mkdp_refresh_slow = 0
	" set to 1, the vim will just refresh markdown when save the buffer or
	" leave from insert mode, default 0 is auto refresh markdown as you edit or
	" move the cursor

	let g:mkdp_command_for_global = 0
	" set to 1, the MarkdownPreview command can be use for all files,
	" by default it just can be use in markdown file

""""""""
"开启csshtml自动完成
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

""""""""
"ctags
let Tlist_Sort_Type = "name"    " 按照名称排序
"请使用此命令
"ctags -I __THROW --file-scope=yes --langmap=c:+.h --languages=c,c++ --links=yes --c-kinds=+p --fields=+S  -R -f ~/.vim/systags /usr/include /usr/local/include
set tags=tags
set tags+=~/.vim/systags
set tags+=./tags
"imap <F4> <ESC>:shell<CR>ctags -R --c++-kinds=+px --fields=+iaS --extra=+q<CR>exit<CR>

""""""""
"tagbar
"nmap <Leader>tb :TagbarToggle<CR>        "快捷键设置
" 设置 tagbar 子窗口的位置出现在主编辑区的左边
let tagbar_left=0
let g:tagbar_ctags_bin='ctags'            "ctags程序的路径
let g:tagbar_width=25                     "窗口宽度的设置
autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx,*.py,*.sh call tagbar#autoopen()     "tagbar自动开启
" tagbar 子窗口中不显示冗余帮助信息
let g:tagbar_compact=1
map <F3> :TagbarToggle<CR>

"NERDTree
let NERDTreeWinPos='left'
let NERDTreeWinSize=25
map <F2> <ESC>:NERDTreeToggle<CR>

""""""""
"nathanaelkane/vim-indent-guides
" 随 vim 自启动
"let g:indent_guides_enable_on_vim_startup=1
"" 从第二层开始可视化显示缩进
"let g:indent_guides_start_level=2
"" 色块宽度
"let g:indent_guides_guide_size=0
" 快捷键 i 开/关缩进可视化
":nmap <silent> <Leader>i <Plug>IndentGuidesToggle

""""""""
"MiniBufExplorer多文档
"let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplMapWindowNavArrows = 1
"let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplModSelTarget = 1
"let g:miniBufExplMoreThanOne=0

"map <F11> :MBEbp<CR>
"map <F12> :MBEbn<CR>



""""""""
"xptemplate
let g:xptemplate_vars = "SParg=&BRfun= &BRloop= "   " 代码紧贴括号,函数名单行,花括号不对齐
let php_noShortTags = 1                             " 禁用php短标记
let g:xptemplate_brace_complete = "([{\<"         " 括号引号自动补全，部分代码缩进有问题

""""""""
"设置对齐线
"vim-indent-plugin
"let g:indent_guides_enable_on_vim_startup = 1
"let g:indent_guides_auto_colors = 1
"let g:indent_guides_guide_size = 5
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
"hi IndentGuidesOdd guibg=red ctermbg=3
"hi IndentGuidesEven guibg=green ctermbg=4

""""""""
"nerdcommenter注释，c+h
"\cc, \cu, \ca
"let NERDShutUp=1
let NERDSpaceDelims = 1                         " 注释左右两端留空格
"let NERDRemoveExtraSpaces = 1
"map <C-/> <ESC><leader>cc

"""""""""
" youcompleteme
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
" 自动补全配置
set completeopt=longest,menu    "让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
autocmd InsertLeave * if pumvisible() == 0|pclose|endif "离开插入模式后自动关闭预览窗口
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"    "回车即选中当前项
"上下左右键的行为 会显示其他信息
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

let g:ycm_python_binary_path = 'python'

"let g:ycm_error_symbol = 'ㄨ' "✖✘ㄨ✕
"let g:ycm_warning_symbol = '◯'

"youcompleteme  默认tab  s-tab 和自动补全冲突
"let g:ycm_key_list_select_completion=['<c-n>']
let g:ycm_key_list_select_completion = ['<Down>']
"let g:ycm_key_list_previous_completion=['<c-p>']
let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_confirm_extra_conf=0 "关闭加载.ycm_extra_conf.py提示

let g:ycm_collect_identifiers_from_tags_files=1 " 开启 YCM 基于标签引擎
let g:ycm_min_num_of_chars_for_completion=2 " 从第2个键入字符就开始罗列匹配项
let g:ycm_cache_omnifunc=0  " 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_seed_identifiers_with_syntax=1    " 语法关键字补全

nnoremap <leader>lo :lopen<CR> "open locationlist
nnoremap <leader>lc :lclose<CR>    "close locationlist
inoremap <leader><leader> <C-x><C-o>

"在注释输入中也能补全
let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
"注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0

nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR> " 跳转到定义处

"""""""""
"syntastic是一款支持多语言的实时语法检查插件。在 syntastic 的作用下，编码中、编译前，所有语法错误都将被抓出来并 呈现给你。
"可以跟ycm的自动提示进行比较看看哪一个更好
" 使用pyflakes,速度比pylint快
let g:syntastic_error_symbol = '✗'	"set error or warning signs
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_check_on_open=1
let g:syntastic_enable_highlighting = 0
"let g:syntastic_python_checker="flake8,pyflakes,pep8,pylint"
let g:syntastic_python_checkers=['pyflakes']
highlight SyntasticErrorSign guifg=red "guibg=
highlight SyntasticWarningSign guifg=yellow

let g:syntastic_cpp_include_dirs = ['/usr/include/']
let g:syntastic_cpp_remove_include_errors = 1
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libstdc++'
let g:syntastic_enable_balloons = 1	"whether to show balloons


"--------------------------------------------------------------------------
"vim-airline
"--------------------------------------------------------------------------
let g:airline_theme="dark"
" 显示颜色
set t_Co=256
set laststatus=2 
" 使用powerline打过补丁的字体
let g:airline_powerline_fonts = 1

" tabline中当前buffer两端的分隔字符
let g:airline#extensions#tabline#left_sep = ' '
" tabline中未激活buffer两端的分隔字符
let g:airline#extensions#tabline#left_alt_sep = '|'
" tabline中buffer显示编号
let g:airline#extensions#tabline#buffer_nr_show = 1

 "打开tabline功能,方便查看Buffer和切换,省去了minibufexpl插件
 let g:airline#extensions#tabline#enabled = 1
 let g:airline#extensions#tabline#buffer_nr_show = 1

"设置切换Buffer快捷键"
 nnoremap <C-Left> :bp<CR>
 nnoremap <C-Right> :bn<CR>

 " 关闭状态显示空白符号计数
 let g:airline#extensions#whitespace#enabled = 0
 let g:airline#extensions#whitespace#symbol = '!'
 " 设置consolas字体"前面已经设置过
 "set guifont=Consolas\ for\ Powerline\ FixedD:h11
  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif
  " unicode symbols
  let g:airline_left_sep = '»'
  let g:airline_left_sep = '▶'
  let g:airline_right_sep = '«'
  let g:airline_right_sep = '◀'
  let g:airline_symbols.crypt = '🔒'
  let g:airline_symbols.linenr = '␊'
  let g:airline_symbols.linenr = '␤'
  let g:airline_symbols.linenr = '¶'
  let g:airline_symbols.branch = '⎇'
  let g:airline_symbols.paste = 'ρ'
  let g:airline_symbols.paste = 'Þ'
  let g:airline_symbols.paste = '∥'
  let g:airline_symbols.spell = 'Ꞩ'
  let g:airline_symbols.notexists = '∄'
  let g:airline_symbols.whitespace = 'Ξ'


  " powerline symbols
""  let g:airline_left_sep = ''
""  let g:airline_left_alt_sep = ''
""  let g:airline_right_sep = ''
""  let g:airline_right_alt_sep = ''
""  let g:airline_symbols.branch = ''
""  let g:airline_symbols.readonly = ''
""  let g:airline_symbols.linenr = ''


"""""""""
"多光标
" Default mapping
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'


""""""""""
"rainbow_parenthese
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 40
let g:rbpt_loadcmd_toggle = 0
"au VimEnter * RainbowParenthesesToggle
"au Syntax * RainbowParenthesesLoadRound
"au Syntax * RainbowParenthesesLoadSquare
"au Syntax * RainbowParenthesesLoadBraces

""""""""""
"bronson/vim-trailing-whitespace
"将代码行最后无效的空格标红
map <leader><space> :FixWhitespace<cr>	" \+space去掉末尾空格

""""""""""
""快速插入代码片段
"Bundle 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger = "<tab>"
"let g:UltiSnipsJumpForwardTrigger = "<tab>"
"let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
"定义存放代码片段的文件夹 .vim/snippets下，使用自定义和默认的，将会的到全局，有冲突的会提示
"let g:UltiSnipsSnippetDirectories=["snippets", "bundle/ultisnips/UltiSnips"]
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"一些函数配置
"＜F12＞生成ｔａｇｓ
"map <F12> :call Do_CsTag()<CR>
function! Do_CsTag()
    let dir = getcwd()
    if filereadable("tags")
        if(g:iswindows==1)
            let tagsdeleted=delete(dir."\\"."tags")
        else
            let tagsdeleted=delete("./"."tags")
        endif
        if(tagsdeleted!=0)
            echohl WarningMsg | echo "Fail to do tags! I cannot delete the tags" | echohl None
            return
        endif
    endif
    if has("cscope")
        silent! execute "cs kill -1"
    endif
    if filereadable("cscope.files")
        if(g:iswindows==1)
            let csfilesdeleted=delete(dir."\\"."cscope.files")
        else
            let csfilesdeleted=delete("./"."cscope.files")
        endif
        if(csfilesdeleted!=0)
            echohl WarningMsg | echo "Fail to do cscope! I cannot delete the cscope.files" | echohl None
            return
        endif
    endif
    if filereadable("cscope.out")
        if(g:iswindows==1)
            let csoutdeleted=delete(dir."\\"."cscope.out")
        else
            let csoutdeleted=delete("./"."cscope.out")
        endif
        if(csoutdeleted!=0)
            echohl WarningMsg | echo "Fail to do cscope! I cannot delete the cscope.out" | echohl None
            return
        endif
    endif
    if(executable('ctags'))
        "silent! execute "!ctags -R --c-types=+p --fields=+S *"
        silent! execute "!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q ."
    endif
    if(executable('cscope') && has("cscope") )
        if(g:iswindows!=1)
            silent! execute "!find . -name '*.h' -o -name '*.c' -o -name '*.cpp' -o -name '*.java' -o -name '*.cs' > cscope.files"
        else
            silent! execute "!dir /s/b *.c,*.cpp,*.h,*.java,*.cs >> cscope.files"
        endif
        silent! execute "!cscope -b"
        execute "normal :"
        if filereadable("cscope.out")
            execute "cs add cscope.out"
        endif
    endif
endfunction

"""""""""""""""""""""
"F5自动编译F6自动运行
"自动编译
func! CompileGcc()
    exec "w"
	" 原来是gcc
    let compilecmd="!clang "
    let compileflag="-o %< "
    if search("mpi\.h") != 0
        let compilecmd = "!mpicc "
    endif
    if search("glut\.h") != 0
        let compileflag .= " -lglut -lGLU -lGL "
    endif
    if search("cv\.h") != 0
        let compileflag .= " -lcv -lhighgui -lcvaux "
    endif
    if search("omp\.h") != 0
        let compileflag .= " -fopenmp "
    endif
    if search("math\.h") != 0
        let compileflag .= " -lm "
    endif
    exec compilecmd." % ".compileflag
endfunc
func! CompileGpp()
    exec "w"
	" 原来是g++
    let compilecmd="!g++ "
    let compileflag="-o %< "
    if search("mpi\.h") != 0
        let compilecmd = "!mpic++ "
    endif
    if search("glut\.h") != 0
        let compileflag .= " -lglut -lGLU -lGL "
    endif
    if search("cv\.h") != 0
        let compileflag .= " -lcv -lhighgui -lcvaux "
    endif
    if search("omp\.h") != 0
        let compileflag .= " -fopenmp "
    endif
    if search("math\.h") != 0
        let compileflag .= " -lm "
    endif
    exec compilecmd." % ".compileflag
endfunc
func! RunPython()
        exec "!python %"
endfunc
func! CompileJava()
    exec "!javac %"
endfunc
func! CompileCode()
        exec "w"
        if &filetype == "cpp"
                exec "call CompileGpp()"
        elseif &filetype == "c"
                exec "call CompileGcc()"
        elseif &filetype == "python"
                exec "call RunPython()"
        elseif &filetype == "java"
                exec "call CompileJava()"
        endif
endfunc
func! RunResult()
        exec "w"
        if search("mpi\.h") != 0
            exec "!mpirun -np 4 ./%<"
        elseif &filetype == "cpp"
            exec "! ./%<"
        elseif &filetype == "c"
            exec "! ./%<"
        elseif &filetype == "python"
            exec "call RunPython"
        elseif &filetype == "java"
            exec "!java %<"
        endif
endfunc
map <F5> :call CompileCode()<CR>
imap <F5> <ESC>:call CompileCode()<CR>
vmap <F5> <ESC>:call CompileCode()<CR>
map <F6> :call RunResult()<CR>

"""""""""""""""""""""
"html标签自动补全
"<!--html标签自动补全{{{-->
" html自动补全

"""""""""""""""""""""
"emmet插件用于html的补全
"let g:user_emmet_mode='n'
"let g:user_emmet_mode='inv'
"let g:user_emmet_mode='a'
"let g:user_emmet_install_global=0
"只对html,css有效
"autocmd FileType html,css EmmetInstall
"
" emment settings
let g:user_emmet_mode='n'    "only enable normal mode functions.
let g:user_emmet_mode='inv'  "enable all functions, which is equal to
let g:user_emmet_mode='a'    "enable all function in all mode.
let g:emmet_html5 = 0

let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let mapleader=','
" let g:user_emmet_leader_key='<C-Z>'
" let g:user_emmet_expandabbr_key='<Tab>'

"""""""""""""""""""""
"ultisnips
"使用ultisnipsedit,命令可以打开当前类型文件的snipts
"下载的snipts,在文件/home/redusty/.vim/bundle/vim-snippets/snippets,下0面
"输入开头然后按下ctrl a 会自动补全代码块
"let g:UltiSnipsSnippetDirectories=['~/.vim/bundle/vim-snippets/snippets']
"let g:UltiSnipsSnippetsDir = '~/.vim/bundle/vim-snippets/snippets'
"let g:UltiSnipsExpandTrigger = '<C-A>'
"let g:UltiSnipsListSnippets = '<C-Tab>'
"let g:UltiSnipsJumpForwardTrigger = '<Tab>'
"let g:UltiSnipsJumpBackwardTrigger = '<S-A>'
""""""""""""""""""""""""""""




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"键盘映射
""""""""""""""""
"F4保存
map <F4> <ESC>:w<CR>
imap <F4> <ESC>:w<CR>
nmap <F4> :w<CR>

"上移或者下移一行
map <S-UP> yyddkkp
map <S-DOWN> yyddp
nmap <S-UP> yyddkkp
nmap <S-DOWN> yyddp
imap <S-UP> <ESC>yyddkkp
imap <S-DOWN> <ESC>yyddp

"复制当前行到上面或者下面ctrl上下
map <C-UP> yykp
map <C-DOWN> yyp
nmap <C-UP> yykp
nmap <C-DOWN> yyp
imap <C-UP> <ESC>yykpi
imap <C-DOWN> <ESC>yypi

"删除当前行ctrl+d
nmap <C-D> dd
imap <C-D> <ESC>ddi
map <C-D> dd

"全选
nmap <C-A> ggVG
imap <C-A> <ESC>ggVG

"打开vimshell
nmap <F7> :VimShell<CR>
imap <F7> <ESC>:VimShell<CR>

imap <F10> <ESC>:YcmDiags<CR>
nmap <F10> :YcmDiags<CR>
