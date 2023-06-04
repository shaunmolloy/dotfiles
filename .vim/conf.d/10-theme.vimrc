set background=dark

" For Neovim 0.1.3 and 0.1.4 - https://github.com/neovim/neovim/pull/2198
if (has('nvim'))
  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif

" For Neovim > 0.1.5 and Vim > patch 7.4.1799 - https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162
" Based on Vim patch 7.4.1770 (`guicolors` option) - https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd  " https://github.com/neovim/neovim/wiki/Following-HEAD#20160511
if (has('termguicolors'))
  set termguicolors
endif

colorscheme sonokai

set cursorline
highlight LineNr guibg=#303238
highlight CursorLineNr guifg=#7799aa

" Highlighting
autocmd BufNewFile,BufRead *.dbml set filetype=dbml
autocmd BufNewFile,BufRead *.i3config set syntax=i3config
autocmd BufNewFile,BufRead *.json set ft=json
autocmd BufNewFile,BufRead *.js set filetype=javascript
autocmd BufNewFile,BufRead *.rs set filetype=rust
autocmd BufNewFile,BufRead *.ts set filetype=typescript

" Word wrap
highlight ColorColumn ctermbg=lightgrey guibg=black
autocmd FileType gitcommit set colorcolumn=50,72
autocmd FileType javascript set colorcolumn=120
autocmd FileType typescript set colorcolumn=120

" Wrap in diff
autocmd FilterWritePre * if &diff | setlocal wrap< | endif
