for f in split(glob('~/.vim/conf.d/*.{vim,vimrc}'), '\n')
  exe 'source' f
endfor
