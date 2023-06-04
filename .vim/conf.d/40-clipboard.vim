" Copy text
vnoremap <C-c> :'<,'>w !xclip -selection clipboard<Cr><Cr>
" Paste text
inoremap <C-v> :r !xclip -selection clipboard -o<Cr><Cr>
