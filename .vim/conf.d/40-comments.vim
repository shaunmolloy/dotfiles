" Remap leader key
let mapleader = ',' " map leader to comma

" Commenting blocks of code.
augroup commenting_blocks_of_code
  autocmd!
  autocmd FileType c               let b:comment_leader = '// '
  autocmd FileType conf            let b:comment_leader = '# '
  autocmd FileType cpp             let b:comment_leader = '// '
  autocmd FileType fstab           let b:comment_leader = '# '
  autocmd FileType java            let b:comment_leader = '// '
  autocmd FileType javascript      let b:comment_leader = '// '
  autocmd FileType mail            let b:comment_leader = '> '
  autocmd FileType make            let b:comment_leader = '# '
  autocmd FileType python          let b:comment_leader = '# '
  autocmd FileType ruby            let b:comment_leader = '# '
  autocmd FileType rust            let b:comment_leader = '// '
  autocmd FileType scala           let b:comment_leader = '// '
  autocmd FileType sh              let b:comment_leader = '# '
  autocmd FileType tex             let b:comment_leader = '% '
  autocmd FileType typescript      let b:comment_leader = '// '
  autocmd FileType typescriptreact let b:comment_leader = '// '
  autocmd FileType vim             let b:comment_leader = '" '
  autocmd FileType yaml             let b:comment_leader = '# '
augroup END
noremap <silent> ,, :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,. :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

" <Ctrl-l> redraws the screen and removes any search highlighting.
set nohlsearch " disable highlighting by default
nnoremap <silent> <C-l> :nohl<CR><C-l>
