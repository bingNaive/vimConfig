set number "显示行号
syntax on "语法高亮
set tabstop=4  "设置tab长度
set autoindent "自动缩进
set expandtab  "用空格代替tab长度
set shiftwidth=4 "<>缩进为4长度
autocmd FileTYpe python nnoremap <buffer> <F9> :w<CR>:ter python3 "%"<CR>
" 启动 NERDTree。如果指定了文件，则将光标移动到其窗口。
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
" 如果 NERDTree 是唯一选项卡中剩下的唯一窗口，则退出 Vim。
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
"如果另一个缓冲区试图替换 NERDTree，请将其放在另一个窗口中，并带回 NERDTree。
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
" 在每个新选项卡上打开现有的 NERDTree。
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif




