"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""                  Environment                        ""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required

" Vundle Plugin Manager
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'kien/ctrlp.vim'
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'edkolev/tmuxline.vim'
Bundle 'edkolev/promptline.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'FindInNERDTree'
Plugin 'JamshedVesuna/vim-markdown-preview'
call vundle#end()

filetype plugin on    " Enable filetype-specific plugins

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""                 User Interface                      ""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:promptline_theme = 'airline'
let g:airline_theme = 'base16_embers'
let g:airline_powerline_fonts = 1
let g:airline_enable_branch = 1
let g:tmuxline_preset = {
       \'a'    : '#S',
       \'c'    : ['#(whoami)'],
       \'win'  : ['#I', '#W'],
       \'cwin' : ['#I', '#W', '#F'],
       \'y'    : '%T',
       \'z'    : '%a %d %b'}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""                   General                           ""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on                   " turn on file recognition and syntax highlighting
set mouse=a                 " turn on mouse
set autochdir               " always cds to cwd

" Enable filetype detection
filetype on           

" Dictionary
set dictionary+=/usr/share/dict/words

" Spaces
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=2
" when indenting with '>', use 4 spaces width
set shiftwidth=2
" On pressing tab, insert 4 spaces
set expandtab

" Status bar
" set number			    " Line numbers
set laststatus=2		" Status line
set statusline+=%F		" Filename in Status line

let vim_markdown_preview_github=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""                  Snippet                            ""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""                 Key Binding                         ""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set pastetoggle=<F2>

" Find
"let g:ctrlp_map = '<c-p>'	" ctrlp
"let g:ctrlp_cmd = 'CtrlP'	" ctrlp

" Sidebar
nmap <C-n> :NERDTreeToggle<CR>

" Highlighting
autocmd BufNewFile,BufRead *.json set ft=javascript

" Word wrap
set colorcolumn=72 " highlight column after 'textwidth'
highlight ColorColumn ctermbg=lightgrey guibg=lightgrey

" Wrap in diff
autocmd FilterWritePre * if &diff | setlocal wrap< | endif

