" Function list
function! FunctionList()
  let pattern = '(const .+\(.+\).+\=\>)'
  let pattern .= '|(function .+)'
  execute ':g/\v'.pattern
endfunction
nnoremap <silent> <C-p> :call FunctionList()<CR>
