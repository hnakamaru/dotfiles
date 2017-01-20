colorscheme molokai
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

