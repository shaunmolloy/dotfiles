" Open new / empty buffer
nnoremap <silent> <C-n> :enew<CR>

" Write
nmap <silent> <C-s> :w<CR>

" Switching files - https://vim.fandom.com/wiki/Switching_between_files
nmap <C-Right> :bn<CR>
nmap <C-Left> :bp<CR>

" Close buffer
nmap <silent> <C-w> :bd<CR><Esc>
nmap <silent> <A-w> :bd!<CR><Esc>

" Quit
nmap <C-q> :q<CR>
nmap <C-q><C-q> :q!<CR>

" Move back to previous buffer
function! MoveBack()
  edit #
endfunction
nnoremap <silent> <C-Down> :silent! call MoveBack()<CR>

" TODO Find in buffers
" cexpr [] | :bufdo vimgrepadd /\cpdf/ % | copen
