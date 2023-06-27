filetype on " Enable filetype detection
syntax on " Syntax highlighting

set autochdir " always cds to cwd
set nofoldenable " disable folding
set mouse=a " turn on mouse
set pastetoggle=<F2>
set ic " ignore case

set relativenumber " Relative line numbers
set cursorlineopt=number " Highlight current line number
set numberwidth=5 " Line number width
" set foldcolumn=1 " Fold column width
set signcolumn=yes

set dictionary+=/usr/share/dict/words
set tags=./tags;,tags; " Load tags, from current dir then upwards

" Indent spaces
filetype plugin indent on
set autoindent expandtab shiftwidth=2 tabstop=2

" Status bar
set laststatus=2 " Status line
set statusline+=%F " Filename in Status line

" Create missing directories when writing
augroup Mkdir
  autocmd!
  autocmd BufWritePre * call mkdir(expand("<afile>:p:h"), "p")
augroup END

" Swap
set directory=~/.vim/swap//

" Toggle folding
function! ToggleFolding()
  if &foldmethod == 'indent'
    set foldmethod=manual
  else
    set foldmethod=indent
  endif
endfunction
nnoremap ,f :call ToggleFolding()<CR>

" Auto save
function! AutoSave()
  if win_gettype() == ''
    update
  endif
endfunction
augroup AutoSave
  autocmd!
  au InsertLeave * :silent! call AutoSave() " Leave insert mode
  au TextChanged * :silent! call AutoSave() " Change in normal mode
augroup END
