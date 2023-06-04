set nocompatible " be iMproved, required

" Vundle Plugin Manager
filetype off " required
filetype plugin on " Enable filetype-specific plugins

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
  Plugin 'VundleVim/Vundle.vim' " Plugins

  Plugin 'nvim-lua/plenary.nvim' " Lua functions
  Plugin 'nvim-telescope/telescope.nvim' " Fuzzy find for neovim
  Plugin 'junegunn/fzf.vim' " Fuzzy find for vim
  Plugin 'folke/todo-comments.nvim' " Todo comments
  
  Plugin 'tpope/vim-obsession' " Save / restore vim sessions
  Plugin 'neoclide/coc.nvim' " Code completion
  Plugin 'dense-analysis/ale' " Linter / fixer for files
  Plugin 'preservim/nerdtree' " NERDTree sidebar
  Plugin 'github/copilot.vim' " Github Copilot

  " Tmux
  Plugin 'edkolev/tmuxline.vim'
  Plugin 'edkolev/promptline.vim'

  " Syntax highlighting
  Plugin 'jparise/vim-graphql' " .graphql
  Plugin 'preservim/vim-markdown' " .md
  Plugin 'hashivim/vim-terraform' " .tf
  Plugin 'jidn/vim-dbml' " .dbml

  " Rust
  Plugin 'rust-lang/rust.vim'
  Plugin 'fannheyward/coc-rust-analyzer'

  " Themes
  Plugin 'vim-airline/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'
  Plugin 'sainnhe/sonokai'
call vundle#end()
