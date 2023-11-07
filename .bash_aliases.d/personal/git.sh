alias g='git $@'
alias gb='git branch --sort=-committerdate | fzf | xargs -I {} git checkout {}'
alias gc='git commit -v'
alias gbc='git branch --show-current'
gbp() {
  [ is_git_dir ] && git push -u origin $(gbc)
}
is_git_dir() {
  git rev-parse --is-inside-work-tree 2>/dev/null
}
