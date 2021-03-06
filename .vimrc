syntax on


set sw=4
set softtabstop=4
set tabstop=4
set nowrap
set nu
set ic

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" 現在の行を強調表示
set cursorline
" 現在の行を強調表示（縦）
set cursorcolumn
" ビープ音を可視化
set visualbell
" コマンドラインの補完
set wildmode=list:longest
" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>
" クリップボードの共有
set clipboard=unnamed
" color設定
colorscheme molokai
" バックアップファイル(~)を作成しない
set nobackup

""" "do not use
""" " ステータスラインを常に表示
""" set laststatus=2
""" " 検索文字列に大文字が含まれている場合は区別して検索する
""" set smartcase 
""" 
""" "default
""" " 入力中のコマンドをステータスに表示する
""" set showcmd
""" " 括弧入力時の対応する括弧を表示
""" set showmatch
""" " 検索時に最後まで行ったら最初に戻る
""" set wrapscan
""" " 検索語をハイライト表示
""" set hlsearch


if has("mac")
" mac用の設定
elseif has("unix")
" unix固有の設定
elseif has("win64")
" 64bit_windows固有の設定
	set guifont=Ricty:h11
	set noswapfile
	" 縦幅　デフォルトは24
	set lines=40
	" 横幅　デフォルトは80
	set columns=120
	" アンドゥファイル(.un~)を作成しない
	set noundofile
elseif has("win32unix")
" Cygwin固有の設定
elseif has("win32")
" 32bit_windows固有の設定
endif

if has('vim_starting')
	" 挿入モード時に非点滅の縦棒タイプのカーソル
	let &t_SI .= "\e[6 q"
	" ノーマルモード時に非点滅のブロックタイプのカーソル
	let &t_EI .= "\e[2 q"
	" 置換モード時に非点滅の下線タイプのカーソル
	"let &t_SR .= "\e[4 q"
endif
